# Prior Work: Dimension from Topological Adjacency

**Status:** DRAFT (2026-07-16).  Positioning / related-work note.
Citations to be hardened by the `deep-research` run launched
2026-07-16 (fold its verified sources into Section~5 when it lands).
**Purpose:** Position the diamond progression + dimensional-selection
result against prior work, so the paper's related-work section claims
novelty *narrowly* and cites the right anchors.
**Cited by:** (future) `paper/sections/related_work.tex`.

---

## The question

Can the geometry of physics be generated from a *simple topology* --
an unordered set plus the natural numbers -- through **adjacency
alone**, with the spatial dimension not assumed but **forced**?  This
note surveys what is already known so the paper claims only what is
genuinely new.

The package to position:

- a **d-of-(d+1) regular simplex vertex** construction generating a
  **bipartite octahedral** lattice progression $\Lambda_d$ over
  $\mathbb{Z}^d$ (bipartitioned by coordinate-sum parity, coordination
  $2d$, cross-polytope neighbour cell); and
- a **dimensional-selection** mechanism: a minimum probability quantum
  $\delta p_\min$ caps the dimension via
  $d_\max = 1/\delta p_\min - 1$ (so $\delta p_\min = 1/4
  \Rightarrow d_\max = 3$).

**Verdict in advance** (to be confirmed by the search): the *general
idea* (dimension emergent from discrete adjacency) is a well-established
program; the *geometry* is classical; the *specific synthesis* -- and
especially the $\delta p_\min$ selection -- appears novel.

## 1. Dimension emergent from discrete adjacency (the conceptual lineage)

This is the idea's real home; the framework should cite it as the
tradition it joins, not claim it.

- **Causal set theory** (Bombelli, Lee, Meyer, Sorkin 1987).  Spacetime
  as a discrete partial order; **dimension is *estimated* from the order
  (adjacency) relation** via the Myrheim--Meyer dimension estimator.
  Closest conceptual precedent to "dimension from adjacency."
- **Causal Dynamical Triangulations** (Ambjorn, Jurkiewicz, Loll).
  Spacetime built by gluing $d$-simplices; **dimension is emergent** --
  the spectral dimension runs from $\sim 2$ at short scales to $4$ at
  large scales.  Directly relevant to "dimensionally forced polytopes."
- **Wolfram Physics Project** (2020).  Space as a hypergraph; dimension
  **inferred from ball-growth statistics of the adjacency**.
- **Graph / network dimension.**  Growth-degree, spectral, and
  Hausdorff dimension of graphs; dimension read off connectivity.
- **Discrete curvature** (Ollivier--Ricci, Forman--Ricci).  Curvature
  from adjacency -- relevant to the gauge-field / curvature fork in
  [[bipartite_octahedral_lattice_n_dim]].
- **Combinatorial quantum gravity** (Trugenberger, arXiv:2311.17526).
  Dynamical graphs governed by coarse Ollivier--Ricci curvature undergo
  a phase transition into a *geometric* phase with emergent spectral
  dimension 3.  This is the **closest live near-precedent for the
  geometric half** -- but the 3D outcome is produced by graph dynamics
  and a two-scale (UV/IR) hierarchy, *not* by a probability-slot count
  or coordination cap.  Merits a direct compare-and-contrast.

*Contrast:* these **measure/estimate** an emergent dimension from a
given structure.  The diamond progression instead **constructs** a lattice
at each $d$ and then **selects** one $d$; the selection (Section~3) is
the differentiator.

## 2. The classical geometry (every ingredient has a name)

The geometric objects are standard; the contribution is the unifying
*progression*, not the pieces.

- **Coordination $2d$** is exactly the nearest-neighbour coordination
  of the **$\mathbb{Z}^d$ cubic lattice** (textbook).
- The $2d$ neighbours $\pm V_i$ are the vertices of the
  **cross-polytope / orthoplex** $\beta_d$ -- the "generalised
  octahedron" (Coxeter, *Regular Polytopes*).  "Bipartite octahedral
  cell" $\leftrightarrow$ cross-polytope is classical.
- The **even/odd coordinate-sum bipartition** is the **$D_d$
  checkerboard lattice** (Conway & Sloane, *Sphere Packings, Lattices
  and Groups*; also errorcorrectionzoo.org/c/dn); $D_3$ is the
  FCC/diamond family -- a direct anchor for the $d=3$ base case.
  *Caveat (from the search):* $D_d$ is only the **even** coset;
  $\Lambda_d$ uses **both** parity cosets with the bipartition as a
  named object.  Worth checking coding-theory / "antiferromagnetic"
  bipartite-lattice work for a prior name to cite (follow-up~4 below).
- The **d-of-(d+1) simplex vertices** connect to the **$A_d$ root
  lattice** and the **simplex-frame / equiangular-vectors**
  construction: $d+1$ symmetric vectors summing to zero, projected to
  $\mathbb{R}^d$ (the 4 tetrahedral/sp$^3$ directions in 3D are the
  canonical instance).

*Contrast:* classical lattice theory catalogues these lattices; it does
not read them as one $d$-indexed **progression** selected by a physical
constraint.

## 3. "Why 3 dimensions?" -- selection arguments

Precedents exist, but via **different mechanisms** than $\delta p_\min$.

- **Stability lineage.**  **Ehrenfest (1917)** -- planetary-orbit /
  atomic stability and electric--magnetic duality favour $d \leq 3$;
  **Tangherlini (1963)** -- extended to GR and the quantum hydrogen atom
  (orbitals unstable for $d > 3$); **Rabinowitz (2015)** -- atoms and
  planets bind only in 3D.  All *dynamical* (stability), not
  combinatorial.  **Callender (2005)** critically concludes even the
  flagship stability "proof" is "not even remotely established" --
  useful cover: the classical selection tradition is *contested*, not
  settled.
- **Alternative-principle / anthropic.**  **Caruso & Xavier (1987)**
  derive an $n$-dimensional quantum theory from Planck's law + de
  Broglie + Heisenberg (an alternative to stability arguments);
  **Whitrow (1955)**, **Barrow & Tipler (1986)**, **Tegmark (1997)** --
  anthropic; string compactification as a separate outcome route.
- **Closest on the *probability* axis:** an entropy/holographic argument
  (Hossenfelder, exposition 2011) puts an entropy local-maximum near
  $\approx 2.97$ spatial dimensions -- a probability/entropy-based
  selection, but a *different* mechanism (entropy maximum, not a
  minimum-quantum cap) and only a blog-level exposition.
- **The $\delta p_\min$ mechanism** ($d_\max = 1/\delta p_\min - 1$,
  from the $d+1$ simplex "probability slots" each $\geq \delta p_\min$
  under A=1 unity): a *probabilistic / combinatorial* selection.  The
  `deep-research` sweep found **no prior work deriving a cap of this
  form** or tying dimension to a minimum probability quantum / per-node
  slot count / coordination bound.  Strongest novelty candidate
  (see Section~5 for the caveat that this is negative evidence).

## 4. Positioning statement (for the paper)

> Position against **causal sets / CDT / Wolfram** (emergent dimension
> from adjacency) and **$D_d$ / $A_d$ / cross-polytope theory** (the
> geometry).  Claim novelty *narrowly* on: (i) the **d-of-(d+1) simplex
> construction as a unified $\Lambda_d$ progression**, and (ii) the
> **$\delta p_\min$ dimensional-selection mechanism** -- not on
> "dimension from adjacency" in general, which is well-trodden.

## 5. Verified sources (from `deep-research`, 2026-07-16)

**Method.**  5 search angles, 21 sources fetched, 75 claims extracted,
25 adversarially verified (2-of-3-refute kill rule), **23 confirmed, 2
refuted**.  Full run: task `wf29rz9kr`.

**Verdict (confirmed).**  The two halves have sharply different novelty
profiles:

1. **Geometry -- entirely well-trodden.**  $\mathbb{Z}^d$ coordination
   $2d$; the cross-polytope/orthoplex as the $2d$-vertex neighbour cell;
   the coordinate-sum-parity bipartition = $D_d$ checkerboard lattice.
   Textbook (Coxeter; Conway & Sloane).  $\Lambda_d$ is a *repackaging*
   of standard lattice geometry, not a new object.
2. **Emergent dimension from adjacency -- mature, but MEASURES not
   SELECTS.**  Causal sets estimate dimension from the discrete order
   (Myrheim--Meyer); the QG consensus (Carlip) is that dimension is
   dynamical and scale-dependent -- and the convergent phenomenon is
   dimensional *reduction* toward $d \approx 2$, read off by estimators.
   None *cap* or *force* a dimension.
3. **$\delta p_\min$ selection -- no precedent found; appears genuinely
   novel.**  Across every literature surveyed, **no prior work derives
   $d_\max = 1/\delta p_\min - 1$** or ties spatial dimension to a
   minimum probability quantum / per-node probability-slot count /
   coordination bound.  The "why-3D" tradition is uniformly
   stability-based or anthropic.

**Strongest near-precedents (cite + contrast).**

- **Causal set Myrheim--Meyer estimator** -- Surya, *The causal set
  approach to quantum gravity*, arXiv:1903.11544; Myrheim (1978);
  Bombelli--Lee--Meyer--Sorkin (1987).  Dimension from adjacency, but
  estimated a posteriori.
- **Carlip**, *Dimension and Dimensional Reduction in Quantum Gravity*,
  arXiv:1705.05417 (CQG 2017) -- "dimension is a physical observable
  measured by estimators"; reduction to $d\approx 2$, never selection.
- **Trugenberger**, *Combinatorial quantum gravity and emergent 3D
  quantum behaviour*, arXiv:2311.17526 -- curvature-driven emergent 3D;
  **closest live near-precedent for the geometric half**, but selects
  by *scale* (loop condensation + UV/IR hierarchy), not a slot cap.
- **Hossenfelder** (2011, *backreaction* exposition) -- entropy local
  maximum near $d\approx 2.97$; closest on the *probability* axis, but a
  different mechanism (entropy max, not a minimum-quantum cap) and only
  a blog.

**Confirmed classical / why-3D citations.**  Conway & Sloane, *SPLAG*
(Z^d, D_n, A_n); cross-polytope (Coxeter / MathWorld); Ehrenfest (1917);
Tangherlini (1963); Rabinowitz (arXiv:1502.04989); Caruso & Xavier
(arXiv:1205.4916); Callender (2005), *Stud. Hist. Phil. Mod. Phys.* 36,
113 (philsci-archive 2178); review arXiv:1608.05298.

**Honest caveats (do not overclaim novelty).**

- The novelty verdict rests on **negative evidence** (absence across
  surveyed reviews), which can never be exhaustive: a probability-quantum
  dimension cap could hide in the **holographic / entropy-bound**
  literature (not fully swept), or in non-English / unpublished sources.
- **Two would-be corroborating claims were refuted** during
  verification (a QM-plus-disorder dimension-emergence study; a why-3D
  review offered as *dedicated* negative evidence), so the
  negative-existence argument leans on the primary sources, not on a
  review that explicitly confirms the absence.

**Follow-ups before the related-work section hardens.**

1. **Sweep the holographic / entropy-bound literature** (Bekenstein
   bound, holographic principle, information-per-site counts) for a
   per-node information/probability-slot dimension argument -- the most
   likely place a closer precedent hides.
2. **Is $\delta p_\min = 1/4$ derived or fitted?**  The novelty claim's
   strength depends on $\delta p_\min$ being motivated *independently*
   (pinned empirically in `dcl-delta-p-min`), not reverse-engineered to
   make $d_\max = 3$.  This is the single most important thing to nail
   before publishing the selection claim.
3. **Direct Trugenberger compare/contrast** -- does loop-condensation
   hide a per-node discreteness parameter reframeable as a probability
   quantum?
4. **Full-parity-bipartition prior art** -- $D_d$ is only the even
   coset; find any coding-theory / "antiferromagnetic" bipartite-lattice
   work that names the both-coset object, to locate $\Lambda_d$'s
   geometric contribution correctly.

## Pointers

- Related notes: [[bipartite_octahedral_lattice_n_dim]] (the
  construction + the gauge-field fork); [[dcl_mathematics_scope_and_outline]].
- The $\delta p_\min$ empirics live in `dcl-delta-p-min`.
