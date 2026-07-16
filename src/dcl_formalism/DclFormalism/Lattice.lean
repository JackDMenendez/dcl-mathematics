import Mathlib

/-!
# The integer lattice base `Λ_d` (geometry-agnostic)

The shared, maximally general base that specific lattices `import` and
instantiate.  It fixes only what every version shares:

* vertices    : `ℤ^d`
* colouring   : coordinate-sum parity (strict even/odd integer indexing)
* a geometry  : an **arbitrary** finite set of neighbour offsets

Crucially the base does **not** fix how many nodes are adjacent.  Nearest-
neighbour, extended-neighbour, the diamond progression, and 3D variants are all
different offset sets -- hence different coordination numbers -- built on this
same base.  The diamond-progression-specific invariants (`coord = 2d`, etc.)
live in `Lattice/DiamondProgression.lean`, which imports this module.

`import Mathlib` (the whole library) is deliberate while the base is being
filled out; narrow it to the specific files needed once the definitions settle.
-/

namespace DclFormalism

/-! ## Sites and the parity colouring -/

/-- A site of `Λ_d`: an integer point in `ℤ^d`. -/
abbrev Site (d : ℕ) := Fin d → ℤ

/-- Coordinate sum of a site. -/
def coordSum {d : ℕ} (x : Site d) : ℤ := ∑ i, x i

/-- Strict-bipartite two-colouring by coordinate-sum parity. -/
def parity {d : ℕ} (x : Site d) : ZMod 2 := (coordSum x : ZMod 2)

/-- The colour-`c` sublattice (one side of the bipartition when `c ∈ {0, 1}`). -/
def Sublattice (d : ℕ) (c : ZMod 2) : Set (Site d) := {x | parity x = c}

/-- The even side `V⁺`. -/
abbrev Vplus (d : ℕ) : Set (Site d) := Sublattice d 0

/-- The odd side `V⁻`. -/
abbrev Vminus (d : ℕ) : Set (Site d) := Sublattice d 1

/-- Membership in a colour class is exactly having that parity. -/
@[simp] theorem mem_sublattice {d : ℕ} (x : Site d) (c : ZMod 2) :
    x ∈ Sublattice d c ↔ parity x = c := Iff.rfl

/-- The colouring is genuinely two-valued: every site is even or odd. -/
theorem parity_eq_zero_or_one {d : ℕ} (x : Site d) :
    parity x = 0 ∨ parity x = 1 := by
  have h : ∀ a : ZMod 2, a = 0 ∨ a = 1 := by decide
  exact h (parity x)

/-- Parity is additive under translation. -/
theorem parity_add {d : ℕ} (x o : Site d) :
    parity (x + o) = parity x + parity o := by
  simp only [parity, coordSum, Pi.add_apply, Finset.sum_add_distrib, Int.cast_add]

/-- An odd-parity offset flips colour. -/
theorem parity_add_odd {d : ℕ} (x o : Site d) (ho : parity o = 1) :
    parity (x + o) = parity x + 1 := by
  rw [parity_add, ho]

/-! ## A general adjacency geometry

A geometry is just a finite set of neighbour offsets on `ℤ^d`.  Everything below
is independent of *which* offsets, so any specific lattice reuses it verbatim.
-/

/-- A translation-invariant adjacency geometry on `ℤ^d`, given by its finite set
    of neighbour offsets.  Different offset sets = different coordination. -/
structure Geometry (d : ℕ) where
  offsets : Finset (Site d)

namespace Geometry

variable {d : ℕ} (G : Geometry d)

/-- Neighbours of `x`: the translates of the offset set. -/
def neighbours (x : Site d) : Finset (Site d) := G.offsets.image (x + ·)

/-- Coordination number at `x`. -/
def coordination (x : Site d) : ℕ := (G.neighbours x).card

/-- Coordination is uniform across all sites and equals the offset count:
    translation `x + ·` is injective, so it preserves cardinality. -/
theorem coordination_eq_card (x : Site d) : G.coordination x = G.offsets.card := by
  unfold coordination neighbours
  exact Finset.card_image_of_injective _ (fun a b h => add_left_cancel h)

/-- A geometry is *bipartite* (w.r.t. the parity colouring) when every offset has
    odd parity -- then every edge crosses `V⁺`/`V⁻`. -/
def Bipartite : Prop := ∀ o ∈ G.offsets, parity o = 1

/-- In a bipartite geometry every neighbour has the opposite colour. -/
theorem neighbour_parity (hG : G.Bipartite) {x y : Site d}
    (hy : y ∈ G.neighbours x) : parity y = parity x + 1 := by
  simp only [neighbours, Finset.mem_image] at hy
  obtain ⟨o, ho, rfl⟩ := hy
  exact parity_add_odd x o (hG o ho)

end Geometry

end DclFormalism
