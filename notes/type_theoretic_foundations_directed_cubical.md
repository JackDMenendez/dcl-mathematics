# Type-Theoretic Foundations for the Lattice: Directed, Cubical, Univalent

**Status:** DRAFT (foundations research thread, 2026-06-28)
**Purpose:** Evaluate the proposal that Homotopy Type Theory (HoTT) is the right
mathematics for the A=1 lattice, and sharpen it. Conclusion: type theory is a
plausible *foundational layer* (how we formalize and prove the lattice's
mathematics) but **not** a calculation engine (predictions stay linear-algebraic);
and the honest fit is not vanilla HoTT but **directed, cubical type theory with
univalence**, because the lattice is causal/irreversible (directed), cubic
(cubical), and the program is structuralist (univalent). Explicitly **downstream
of, and non-blocking, the working math and the physics predictions.**
**Cited by:** TBD (foundations thread). Informs
[[dcl_mathematics_scope_and_outline]]; sibling in spirit to
[[bell_chsh_separability_on_lattice]] (both turn on adjacency-without-metric).

---

## Setup

The proposal (Jack, 2026-06-28): "Trad physics" is built on **calculus** —
relations between *changes* in one continuous measure versus another. The lattice
has **only one measure, and it is discrete**, and (as established in the Bell
note) it is **metric-free**: adjacency, not distance. Hence the suggestion that
**HoTT** is the natural mathematical language.

Two distinctions must be drawn before the proposal can be assessed:

- **Layer.** A *working* mathematical layer (where amplitudes, dynamics, and
  predictions are computed) vs a *foundational/formalization* layer (where the
  mathematics is rigorously stated and proved). Type theory is a candidate for
  the second, not the first.
- **Which type theory.** "HoTT" is not monolithic: plain (symmetric) HoTT,
  *cubical* type theory (its computational form), and *directed* type theory
  (asymmetric, ∞-categorical) are different, and the lattice selects among them.

---

## Argument

### 1. The genuine resonances (why the instinct is not idle)

1. **Paths are the primitive.** HoTT's identity types *are* paths; reasoning is
   about connectivity and identification, not distance. For a substrate whose
   only fundamental relation is **adjacency**, "equality = a path in the
   structure" is the right shape. (Same metric-free character the Bell note's
   adjacency/ER=EPR argument turns on.)
2. **Cubic lattice ↔ cubical sets.** The substrate is a bipartite
   cubic/octahedral complex (the diamond progression). The *computational* form
   of univalent foundations — **cubical type theory** — is modeled on cubical
   sets. That is a far tighter geometric match than generic HoTT.
3. **Univalence ↔ "expressive power, not ontology."** Univalence ("equivalent
   structures are equal") is the program's own philosophy stated as an axiom:
   what is real is structure up to equivalence. The alignment is exact, not
   decorative.
4. **Higher groupoids ↔ gauge / automorphism structure.** Types with higher
   identifications *are* groupoids; the RGB/CMY bipartite symmetry, the per-site
   automorphism algebra (Paper II's gauge derivation), and gauge equivalences
   are natively higher-groupoidal. HoTT handles this layer without bolt-ons.

### 2. Type theory is a foundation, not a calculator

HoTT formalizes and proves *constructively*; it does not supply dynamics,
amplitudes, conservation laws, or numbers. A CHSH value, a birefringence
coefficient, an atomic line — these live in **Hilbert space / linear algebra /
probability** and will continue to. So the correct mental model is *layers*: the
working physics math (discrete exterior calculus + Hilbert space + combinatorial
topology) is the workshop; a type theory is the basement. **The basement must not
gate the predictions.**

### 3. The "one discrete measure" premise points elsewhere than HoTT

Having one discrete measure argues for **discrete differential geometry,
discrete measure theory, and combinatorial algebraic topology** — already in this
project ([[discrete_differential_geometry_on_lattice]],
[[discrete_measure_theory_on_lattice]], [[function_spaces_on_lattice]]) — not
specifically for HoTT, whose value is *identity / paths / higher structure*, not
"few measures." Nor is calculus abandoned: it is **discretized** (discrete
exterior calculus) and **recovered in the continuum limit**
([[discrete_to_continuum_limits]], the Hilbert-Sixth on-ramp). The right framing
is "discrete calculus now, smooth calculus emergent," not "calculus replaced by
type theory."

### 4. The decisive caveat: the lattice is *directed*, HoTT's paths are *symmetric*

Standard HoTT's identity types are **invertible** (if `a = b` then `b = a`, with
all higher coherence). The lattice is **causal and irreversible** — ticks do not
undo, and [[coherence_history_invariant]] argues records accumulate
*monotonically* (an arrow of time). A symmetric-path foundation sits badly on an
asymmetric-causal object. The appropriate foundation keeps morphisms
**non-invertible**: **directed type theory** (synthetic ∞-category theory), where
a 1-cell is a tick/causal edge, not a reversible path.

### 5. The sharpened thesis

Not "HoTT," but: **a directed, cubical type theory, with univalence as the
structuralist philosophy.** Directed for causal asymmetry; cubical for the cubic
geometry and computational content; univalent for the program's structuralism.

---

## Conclusions

1. **Plausibly the right *foundation*, not the right *tool*.** Type theory is a
   candidate language for *formalizing and proving* the lattice's mathematics —
   invariances, the continuum limit, dimensional selection, gauge structure — not
   for computing amplitudes or predictions.
2. **The specific candidate is directed + cubical + univalent**, selected by the
   lattice's causal asymmetry, cubic geometry, and structuralist philosophy.
3. **Keep it non-blocking.** Predictions ride linear algebra and numerics; this
   is a parallel, slower, conceptual-clarity bet, not a dependency of any paper.
4. **Risk to manage:** directed type theory is a research frontier with thin
   tooling; betting program velocity on it would be a mistake. Treat as a
   long-horizon foundations thread.

---

## Open Questions

1. **Maturity.** Is a *directed* type theory with *univalence* (or a directed
   univalence analogue) developed enough to use? Simplicial type theory
   (Riehl–Shulman) is the leading candidate; how far does it reach, and does the
   `Rzk` proof assistant make it usable?
2. **Encoding A=1.** A single global conservation law / one measure — is the
   natural type-theoretic home **linear / resource types** (substructural type
   theory), where "amplitude is conserved, not duplicated" is the no-weakening /
   no-contraction discipline? Connect to quantum/linear type theory.
3. **Amplitudes are complex / Hilbert.** Does a **linear (quantum) HoTT** layer
   connect the foundation to the working Hilbert-space math, or do the two layers
   simply coexist with a translation? (cf. quantum programming languages.)
4. **Concrete encoding.** Map the bipartite cubic/octahedral lattice (the diamond
   progression) precisely to a **cubical set** (or directed/simplicial set);
   relate to [[discrete_differential_geometry_on_lattice]] and
   [[function_spaces_on_lattice]]. What are the cells, faces, degeneracies?
5. **Univalence vs physical distinguishability.** Univalence makes equivalent
   structures equal — when are two lattice configurations "the same" physically?
   Does this help (structuralism) or erase a distinction the physics needs?
6. **Directedness depth.** Is the tick a single 1-cell direction, or do we need
   full (∞,1)-directed structure (higher directed cells for gauge/coherence)?

---

## Pointers

- **Related notes:** [[coherence_history_invariant]] (the arrow of time /
  monotone records — the source of the directedness requirement);
  [[bell_chsh_separability_on_lattice]] (adjacency-without-metric, the same
  structural fact); [[discrete_differential_geometry_on_lattice]],
  [[function_spaces_on_lattice]], [[discrete_measure_theory_on_lattice]] (the
  *working* discrete math this would sit beneath);
  [[discrete_to_continuum_limits]] (calculus recovered in the limit);
  [[dcl_mathematics_scope_and_outline]] (roster).
- **External references — foundations first:**
  - *The HoTT Book* — Univalent Foundations Program, *Homotopy Type Theory:
    Univalent Foundations of Mathematics* (IAS, 2013). The standard reference.
  - E. Rijke, *Introduction to Homotopy Type Theory* (CUP, 2025; arXiv:2212.11082)
    — the cleanest modern textbook for the prerequisites.
- **External references — directed type theory (no textbook yet; frontier):**
  - E. Riehl & M. Shulman, *A type theory for synthetic ∞-categories* (Higher
    Structures 1(1), 2017) — the central paper (simplicial/directed type theory).
  - D. Licata & R. Harper, *2-Dimensional Directed Type Theory* (ENTCS, 2011) —
    early directed type theory.
  - P. R. North, *Towards a Directed Homotopy Type Theory* (MFPS/ENTCS, 2019).
  - A. Nuyts, *Towards a Directed Homotopy Type Theory based on 4 Kinds of
    Variance* (MSc thesis, KU Leuven, 2015).
  - `Rzk` proof assistant (N. Kudasov) + the *sHoTT* formalization project —
    hands-on simplicial/directed type theory you can actually run.
  - nLab entry "directed type theory" — maintained literature map.
  - Background for the ∞-categorical target: Riehl & Verity, *Elements of
    ∞-Category Theory* (CUP, 2022).
- **Cubical:** Cohen, Coquand, Huber, Mörtberg, *Cubical Type Theory: a
  constructive interpretation of the univalence axiom* (TYPES 2015 / 2018);
  `cubical Agda` as the working tool.
