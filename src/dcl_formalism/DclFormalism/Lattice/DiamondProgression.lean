import DclFormalism.Lattice

/-!
# The diamond progression, as a specialization of the general base

`import DclFormalism.Lattice` brings in the geometry-agnostic base (compiled
once into an olean).  Here we specialize it to the diamond progression: the
bipartite octahedral lattices from the d-of-(d+1) simplex-vertex construction.

The *exact* offset set is still an open modelling choice (see
`notes/bipartite_octahedral_lattice_n_dim.md`, Open Questions 1-2), so we do not
pin a specific `Geometry`; instead we record the target invariants and package
"is a diamond progression" as a predicate on a base `Geometry`.  A concrete 3D
lattice specializes one step further by fixing `d := 3`.
-/

namespace DclFormalism

/-! ## The three result-density targets (Theorem 1-3 right-hand sides) -/

/-- Theorem 1 target: `coord(d) = 2d`. -/
def coordinationTarget (d : ℕ) : ℕ := 2 * d

/-- Theorem 2 target: longest single edge in the unit cell is `√d`. -/
noncomputable def maxHopTarget (d : ℕ) : ℝ := Real.sqrt (d : ℝ)

/-- Theorem 3 target: unit-cell volume `(d+1)^((d-1)/2)`. -/
noncomputable def unitCellVolumeTarget (d : ℕ) : ℝ :=
  (d + 1 : ℝ) ^ (((d : ℝ) - 1) / 2)

/-! ## "Is a diamond progression" as a predicate on the base geometry -/

/-- A base `Geometry` is a *diamond progression* in dimension `d` when it is
    bipartite and its coordination realises the Theorem-1 target `2d`.  Which
    offsets exactly witness this is the open choice; exhibiting a witness is a
    Phase-2 deliverable. -/
structure IsDiamondProgression {d : ℕ} (G : Geometry d) : Prop where
  bipartite : G.Bipartite
  coord : ∀ x, G.coordination x = coordinationTarget d

/-- Reuse of the base lemma `coordination_eq_card`: any diamond-progression
    geometry has exactly `2d` offsets. -/
theorem IsDiamondProgression.offsets_card {d : ℕ} {G : Geometry d}
    (h : IsDiamondProgression G) : G.offsets.card = 2 * d := by
  have hx := h.coord 0
  rwa [G.coordination_eq_card] at hx

end DclFormalism
