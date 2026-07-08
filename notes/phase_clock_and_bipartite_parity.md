# Phase Clock → Bipartite Parity: the Agda POC and its planned extension

**Status:** DRAFT (Agda POC roadmap, 2026-06-28). A note to *add to* as the
formalization matures — not yet a finished derivation.
**Purpose:** Record what `src/hott/PhaseClock.agda` establishes (quantization =
`π₁(S¹) ≃ ℤ`, read as Observational Univariance in action) and the planned
extension: derive the bipartite **even/odd parity** (= the spinor double-cover)
and the **RGB/CMY colours** *from the phase clock itself*, rather than positing
them. The phase clock and the bipartite grading are not two derivations — the
grading is the **parity of the clock**.
**Cited by:** [[manifesto_two_transcendentals]] (this is the manifesto's first
concrete witness in code); [[type_theoretic_foundations_directed_cubical]];
[[bell_chsh_separability_on_lattice]]; [[coherence_history_invariant]].
**Toolchain note (2026-06-28):** Agda not yet running locally — version
alignment (Agda + `agda/cubical`, pinned v0.9) is in progress. Lemma names below
are *intended*, to be checked against the library once it builds.

---

## What `PhaseClock.agda` establishes (and why it is the manifesto in code)

`{-# OPTIONS --cubical --safe #-}`. The file imports `π₁(S¹) ≃ ℤ` from
`Cubical.HITs.S1` and gives it the DCL reading:

- `PhaseClock = S¹`; `phaseZero = base`; `advance = loop` (one 2π tick).
- `PhaseHistory = ΩS¹`; `rotationNumber = winding : ΩS¹ → ℤ`.
- `rotationNumbers≡ℤ : PhaseHistory ≡ ℤ` (= `ΩS¹≡ℤ`). **Quantization is
  topological, not a boundary condition.**
- `oneAdvance` (one tick has winding 1); `addRotation = winding-hom`
  (concatenation adds winding — a ℤ-valued conserved charge).

**The Observational Univariance reading (the key point).** The winding number is
a *homotopy invariant* — independent of the representative path, fixed by the
deformation class. That is *univariant* by construction: invariant under the
representation freedom (here, homotopy). So `rotationNumber` is observable
**because** it is invariant, and the observables of `S¹` are *forced* to be ℤ.
Fractional winding would be representation-dependent → not univariant → not
observable → forbidden. So **quantization is derived from Observational
Univariance + S¹, with no condition imposed.** And `addRotation` makes it a
*conserved* charge — the A=1 side. Both transcendentals already appear:
**invariance → ℤ (OU); conservation → the homomorphism (A=1).** This is the
manifesto's first witness.

---

## Planned extension (to add when Agda runs)

### 1. Bipartite parity = mod-2 of winding
The directed **ℤ height** is `winding`; the bipartite **even/odd is its parity**.
- `parity : PhaseHistory → Bool` (or `Fin 2`), `parity = isEven? ∘ winding`.
- `parity advance ≡ odd` — one hop flips the grade (from `oneAdvance`).
- `parity (a ∙ b) ≡ parity a ⊕ parity b` — parity is a homomorphism to
  (ℤ/2, ⊕), from `addRotation` + (mod 2 is a hom). The bipartite grading made
  formal: hop flips, double-hop returns.

### 2. The spinor double-cover is the same map
With `advance = 2π`, the spinor sign after winding `n` is `(−1)ⁿ`: `n=1` (2π) →
−1, `n=2` (4π) → +1.
- `spinorSign = (−1)^winding : PhaseHistory → {±1}`; **closes ⇔ winding even ⇔
  parity even.**
- So the **two sublattices are the two sheets of the spinor double cover**:
  RGB = even (spinor returned), CMY = odd (spinor flipped).
- The three ℤ/2's flagged earlier as "wanting to be one" — bipartite parity,
  chirality, spinor sign — **collapse to a single derived map `mod2 ∘ winding`.**
  The identification (previously a conjecture) gets a concrete formal route:
  prove `spinorSign = (−1)^parity`.

### 3. The 3 in RGB = three clocks
`Fin 3` within each parity class comes from **three phase clocks**: `(S¹)³`,
winding `ℤ³`. This is where *colour-three-is-space-three* enters — three clocks,
one per axis. Full object: **(ℤ/2 parity) × (Fin 3 colour)** — parity from one
clock, the three from three.

**The shape of the whole derivation:** `(S¹)³ → winding : ℤ³ →` quantization (OU);
`mod2` of it → the bipartite ℤ/2 (= spinor double cover); the three axes → the
RGB/CMY colours.

---

## Even/odd = physical / gauge (load-bearing)

The even/odd split **is** the physical/gauge split — and this is why the odd
sheet has no accounting beyond A=1. Every physical observable is *bilinear* in
the amplitude (`|ψ|²`, `⟨ψ|A|ψ⟩` — quadratic in ψ), so the spinor sign, the
`(−1)` that distinguishes the odd sheet, **cancels in every observable**. The
only invariant of the odd sheet that survives is the *norm* — which is **A=1**.
Therefore "what is happening during an odd step" is **not an observable
question**: the odd-step content (the sign) lives in the **gauge fibre** —
present in the full amplitude ψ (the God's-eye `.npy`) but absent from the
*univariant quotient* that is the physics. Even = the on-shell, observable
sheet; odd = the gauge/virtual intermediate, constrained only by A=1, a
non-question in the same sense "which slit" is.

Formally, this is a lemma the Agda will be able to state: `spinorSign =
(−1)^winding` is *definable* in the total (God's-eye) type, but it is **not
univariant** — not invariant under the global-sign freedom — so **no observable
depends on it**. That is the precise content of "odd steps are meaningless except
in the God's-eye view": expressible in the total representation, provably absent
from the observable quotient.

**Open (the forced-vs-chosen fork):** the bilinear-cancellation argument makes
odd-step unobservability *forced/derived* (the strong reading), not a stipulation.
Confirming the odd sheet's content is **entirely** gauge — rather than partly a
"measurement-only-at-even-steps" modeling choice — requires pinning the full
observable algebra; until then state it as the strong reading with that caveat.
See [[manifesto_two_transcendentals]] (God's-eye = total representation; physics
= its univariant quotient).

## Open questions / honest gaps

1. **Arnold-tongue bridge (the real theorem).** `winding` is the parity of a
   *phase history* at a point; the lattice's even/odd is a *spatial* hop-count.
   Identifying them — the rotation number of the lattice map = this `winding` —
   is unproven. Until then, `parity` is bipartiteness *on phase histories*, and
   "= the RGB/CMY sublattice split" is a conjecture with a target.
2. **The 3-colour extension** to `(S¹)³` is sketched, not built.
3. **Toolchain / library.** Pin the Agda + `agda/cubical` v0.9 alignment; then
   fix exact names (`isEven`/`mod2` on `ℤ`, `⊕` on `Bool`, `Fin 3`). Current
   blocker is getting the page to typecheck at all.
4. **Dynamics untouched.** No dispersion, no Dirac limit; this is kinematics of
   the phase/parity structure only.

---

## Pointers

- **Agda:** `src/hott/PhaseClock.agda` (the POC); planned sibling `PhaseParity.agda`
  for §1–2 above. (Agda `src/` is Jack's active work — not committed by the PM.)
- **Manifesto:** [[manifesto_two_transcendentals]] — OU forces ℤ; A=1 gives the
  homomorphism. This file is the first concrete witness.
- **Foundations:** [[type_theoretic_foundations_directed_cubical]] — why the
  bipartite RGB/CMY *forces* directed type theory (univalence would collapse
  RGB ≃ CMY without the parity grading).
- **Bell:** [[bell_chsh_separability_on_lattice]] — the chirality qubit `(ψ_R,ψ_L)`
  is this same parity ℤ/2.
- **Arrow of time:** [[coherence_history_invariant]] — the monotone ℤ height
  (hop-count) is the directed datum; bipartite colour is its parity.
- **External:** `agda/cubical` `Cubical.HITs.S1.Base` (`ΩS¹≡ℤ`, `winding`,
  `winding-hom`).
