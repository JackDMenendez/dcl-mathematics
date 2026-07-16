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

/-- The *topology* of a site: its closed neighbourhood -- the site itself
    together with its neighbours. In the notes' notation this is
    `{t_{n,0}, …, t_{n,2d}}` (the centre `t_{n,0}` plus the `2d` neighbours). -/
def topology (x : Site d) : Finset (Site d) := insert x (G.neighbours x)

/-- The topology has at most one more element than the coordination. -/
theorem topology_card_le (x : Site d) :
    (G.topology x).card ≤ G.coordination x + 1 :=
  Finset.card_insert_le _ _

/-- With no self-loops (the origin is not an offset), the topology size is
    exactly the coordination plus one -- the centre together with its
    neighbours (`2d + 1` in the diamond progression). -/
theorem topology_card (h : (0 : Site d) ∉ G.offsets) (x : Site d) :
    (G.topology x).card = G.coordination x + 1 := by
  have hx : x ∉ G.neighbours x := by
    unfold neighbours
    rw [Finset.mem_image]
    rintro ⟨o, ho, hox⟩
    have ho0 : o = 0 := by
      have h2 : x + o = x + 0 := by rw [add_zero]; exact hox
      exact add_left_cancel h2
    subst ho0
    exact h ho
  unfold topology coordination
  rw [Finset.card_insert_of_notMem hx]

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

/-! ## Orientation: axes that generate an octahedral geometry

An *orientation* is the ordered family of `d` axis vectors `V₁, …, V_d` (for the
diamond progression, `d` of the `d+1` simplex vertices). The octahedral offset
set is each axis together with its negative, so an orientation induces a
`Geometry`. This makes "orientation" a first-class object, distinct from the raw
offset set: the `d+1` choices of axes give the `d+1` congruent orientations. -/

/-- An orientation of `Λ_d`: an ordered family of `d` axis vectors. -/
structure Orientation (d : ℕ) where
  axis : Fin d → Site d

namespace Orientation

variable {d : ℕ} (V : Orientation d)

/-- The octahedral offset set generated by an orientation: each axis `Vᵢ`
    together with its negative `-Vᵢ`. -/
def offsets : Finset (Site d) :=
  Finset.univ.image V.axis ∪ Finset.univ.image (fun i => -V.axis i)

/-- The `Geometry` induced by an orientation. -/
def toGeometry : Geometry d := ⟨V.offsets⟩

/-- An orientation induces at most `2d` offsets. It induces exactly `2d` when
    the `2d` vectors `±Vᵢ` are distinct -- the non-degeneracy condition behind
    the Theorem-1 target `coord(d) = 2d`. -/
theorem offsets_card_le : V.offsets.card ≤ 2 * d := by
  unfold offsets
  calc (Finset.univ.image V.axis ∪ Finset.univ.image (fun i => -V.axis i)).card
      ≤ (Finset.univ.image V.axis).card
          + (Finset.univ.image (fun i => -V.axis i)).card :=
        Finset.card_union_le _ _
    _ ≤ Finset.univ.card + Finset.univ.card :=
        Nat.add_le_add Finset.card_image_le Finset.card_image_le
    _ = 2 * d := by rw [Finset.card_univ, Fintype.card_fin]; ring

end Orientation

end DclFormalism
