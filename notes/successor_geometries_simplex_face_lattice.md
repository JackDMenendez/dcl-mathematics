# Successor Geometries: the Simplex Face Lattice, and a Test Plan for Proposed Architectures

**Status:** DRAFT (research thread, 2026-07-29).
**Purpose:** Organise the successor-geometry candidates after Paper IV's
single-domain no-go, record the structural results that constrain them, and
provide a **reusable test plan** that any proposed architecture can be run
through, plus a **results table** to accumulate verdicts.
**Cited by:** nothing yet.  Intended to give `dcl-core` a concrete experiment
spec and to be the scoreboard successor proposals are scored on.
**Context:** Paper IV v1.0 (*Optical-Axis Anisotropy on the A=1 DCL:
Birefringence Cancellation and a Single-Domain No-Go*, Zenodo
`10.5281/zenodo.21435951`) excluded the single fixed trigonal domain in both
the gauge and matter sectors.  Papers I and II are re-versioned to v2.0.

---

## 1. Why this note exists

Paper IV's exclusion has a single structural cause: the hop set uses **three of
the four** cube body diagonals, and the omitted fourth is what creates the
optical axis.  The four-diagonal set sums to a multiple of the identity --
isotropic; dropping one leaves an order-unity anisotropy.

But "three of four" at $d = 3$ **is** the *d*-of-*(d+1)* construction -- the
diamond progression's defining move.  The excluded configuration and this
repo's central object are the same thing at different levels of generality, so
the successor question belongs here rather than in Paper IV.

**Anisotropy theorem (derived here, needs independent check).**  The $d+1$
directions of a regular simplex in $d$ dimensions form a tight frame: their
outer products sum to a multiple of the identity.  Omitting one leaves that
multiple minus a rank-one term along the omitted direction, giving an optical
axis along the omission with eigenvalue ratio

> **$(d+1) : 1$**, axis versus transverse.

At $d = 3$ this is $4 : 1$, reproducing Paper IV's $\varepsilon = \{1,4,4\}$
exactly (the four cube diagonals sum to $4I$; subtracting one rank-one leaves
eigenvalue $1$ along it and $4$ in the plane).  **Consequence:** the anisotropy
does not wash out with dimension -- it grows as $d+1$.  No dimension escapes
the no-go by this route.

---

## 2. The face lattice of the simplex

The $d+1$ axes are the vertices of a simplex, and the coexisting sub-structures
are its **faces**.  At $d = 3$ (axes $V_1 \ldots V_4$):

| Subset | Count | Dim | Coord | Object | User's term |
|---|---|---|---|---|---|
| 1 of 4 (vertex) | 4 | 1 | 2 | chain | "0 faces" |
| 2 of 4 (edge) | 6 | 2 | 4 | rhombus | "1 face" |
| 3 of 4 (facet) | 4 | 3 | 6 | the current construction | "6-sided diamond" |
| 4 of 4 (whole) | 1 | 3 | 8 | 8-faced diamond | "8-sided diamond" |

Counts are $\binom{4}{k}$, so **the enumeration is complete**: $4+6+4+1 = 15 =
2^4 - 1$ non-empty subsets.  There is no fifth family.

- **Coordination is $2k$** for a $k$-subset.  Theorem 1's $\mathrm{coord}(d) =
  2d$ is the *facet* case, $k = d$.
- **Everything is a sublattice of the top one.**  At $d=3$ the $k=4$ lattice is
  **body-centred cubic** (coordination 8 along all four diagonals, bipartite).
  All other families sit inside it.  "Different polytopes coexist on the
  lattice" means they coexist inside the one BCC lattice.
- In general $d$: faces are indexed by non-empty subsets of the $d+1$ axes,
  with $\binom{d+1}{k}$ of dimension $k$ and coordination $2k$.

---

## 3. Structural results

### 3.1 Isotropy exists only at $k = d+1$

Only the full axis set is isotropic ($4I$ at $d=3$).  Any proper subset carries
a rank-one defect, hence an axis.  So "we must use all four axes" is forced by
the second-moment tensor, not a preference.

### 3.2 Chirality exists only at $k = d$

An ordered set of vectors has a determinant sign **only when there are exactly
$d$ of them in $d$ dimensions**.  Chains and rhombi have no determinant; the
full $(d+1)$-set is over-complete and has no single one.

> **Chirality lives exactly at the facets.**  Nothing below $k = d$ can carry
> handedness; nothing at $k = d+1$ carries it from the direction set alone.

This is the tension the successor must resolve: **isotropy wants $k = d+1$,
chirality wants $k = d$.**

### 3.3 The facets are related by proper rotations -- so averaging preserves handedness

The rotation group of the cube is isomorphic to $S_4$ acting on the four body
diagonals, and **all 24 permutations are realised by proper rotations**.
Therefore:

- the four facets are carried into each other by orientation-**preserving**
  maps;
- handedness transports consistently across all four -- **no orientation
  obstruction**;
- the average that restores isotropy does **not** average away chirality.

Summing the four facet tensors: $4(4I) - \sum_i V_iV_i^T = 16I - 4I = 12I$ --
isotropic exactly.  Isotropy and chirality would conflict only if the domains
were related by reflections.  They are not.

### 3.4 Colour and chirality are the same structure

An *unordered* triad has no handedness -- the determinant's sign depends on the
listing order.  Chirality is therefore extra structure laid on the geometry,
and the framework already has it: the **RGB ordering** *is* an orientation
assignment (see `figures/lattice_fig.txt`, where the colour letters sit on the
bonds).

> Preserving colour and preserving chirality are one act, not two.

Paper IV's open question -- whether colour survives a successor geometry -- is
therefore the same question as whether chirality does.  They stand or fall
together.

### 3.5 Spinors want the phase

The facet index carries a representation of $S_4$.  Spinors require the
**double cover** -- for the cube's rotation group, the binary octahedral group
of order 48 -- and a double cover is implemented as a **sign ambiguity in the
phase** on transport around a loop.  A phase that selects the facet is
therefore the natural carrier of the spin-$\tfrac12$ sign, rather than extra
baggage beside the spinor.

### 3.6 Absolute anisotropy is unobservable; only sector differences are

**In a taxicab space, a polytope *is* a sphere.**  The unit sphere of a norm is
by definition the set of points at distance one, so for the word metric the
sphere is the polytope -- a skewed cross-polytope for a facet architecture, a
cube for the full axis set.  Calling that "anisotropic" imports a Euclidean
standard, and per [[platos_cave_invariant_observer]] §4.5 the observer has no
access to one.  To a taxicab observer the taxicab sphere is round.

A **universal** cone distortion is therefore a coordinate convention.  If light,
matter, rulers and clocks all deform together, no experiment detects it --
Poincaré's conventionality of geometry, appearing in Lorentz-violation
phenomenology as field redefinitions that remove certain coefficients outright,
leaving only *combinations* physical.  Measurement is comparison, and the ruler
is made of matter.

What is linearly invariant is the unit ball's **shape class**: a basis change
carries a skewed cross-polytope to the standard one, so *skew is gauge*, but no
linear map takes an octahedron to a cube or either to a sphere.  Even so, a
universal shape class is unobservable, because the ratios actually measured
cancel it.  Hence:

> **Only the relative light-cone structure between sectors is physical.**

**Why A0 still fails.**  Paper IV's exclusion is **differential**, not absolute:
the induced gauge sector is $O(1)$ at dimension four while the matter
anisotropy is dimension six, so *the sectors ride different light cones*.  Two
sectors disagreeing with each other cannot be normalised away -- whatever basis
makes one round makes the other skewed.  The mismatch is basis-independent.

**Consequence for the tests.**  T1 and T13 are therefore **sector-relative**,
not absolute.  This is a *weaker* criterion than the one this note originally
asserted, and it restates A2's job: not Euclidean isotropy, but **sector
universality** -- all sectors sharing one cone, whatever shape that cone has.

### 3.7 Three metric levels, not to be conflated

| Level | Structure | Where it appears |
|---|---|---|
| **Sites** (the index set) | word metric; unit ball is a polytope | adjacency, hop counting |
| **Probabilities** | $\ell^1$ -- sums to one | A=1 as a partition of $N$ units; $\delta p_\min$ |
| **Amplitudes** | $\ell^2$ -- the Hilbert norm | unitarity, interference, Tsirelson |

With only adjacency, distance is the **word metric**: fewest hops.  For a hop
set $S$ the unit ball of the asymptotic norm is $\mathrm{conv}(S)$, so the norm
is fixed by the *shape* of the generator set -- a facet architecture gives
$\ell^1$ in the skewed basis $e_i \mapsto V_i$ (genuine taxicab, and **the skew
is the anisotropy**), while the full four-axis set gives the cube, hence
$\ell^\infty$.  Which norm you get is architecture-dependent.

Three cautions:

- $\ell^1$ is **not** a Hilbert norm -- it fails the parallelogram law, so no
  inner product induces it.  The Hilbert space is $\ell^2(\text{sites})$: its
  *index set* carries the word metric, its *vectors* carry the $\ell^2$ norm.
  Neither reduces to the other.  This is the same ladder as
  [[platos_cave_invariant_observer]] §5.1, with the Born rule as the
  $\ell^2 \to \ell^1$ step.
- **Counting never becomes Euclidean.**  For a fixed finite hop set the
  large-scale limit of the word metric is a norm whose unit ball is that
  polytope.  Euclidean geometry does not emerge from hop-counting at any scale.
- **Physical distance is an $\ell^2$ notion.**  Long-wavelength propagation is
  governed by the dispersion relation, controlled at leading order by the
  second-moment tensor -- which is what T1 measures.  So isotropy (or, per §3.6,
  sector agreement) is a statement about the amplitude dynamics, not about the
  combinatorics.

Calibration is a scaling, and scaling does not change a unit ball's shape -- so
calibration cannot round the ball.  Combined with §3.6: the shape is not
something units can change *and* not something an observer can detect, and the
residual physical content is exactly the sector difference.

---

## 4. What an electron must be

Rather than sweeping the architecture space blind, use the electron as the
filter.  Four requirements, each of which kills part of the space:

| # | Requirement | Consequence |
|---|---|---|
| E1 | Propagates freely | its configuration must be **isotropic** -- so not a single facet (§3.1) |
| E2 | Is chiral (the R/L spinor field) | needs handedness -- so **facets must be in its makeup** (§3.2) |
| E3 | Is colourless | cannot be *one* triad, since colour space **is** the triad (§3.4) |
| E4 | Is spin-$\tfrac12$ | needs the double cover -- the $Z_2$ sign in the phase (§3.5) |

**What they select:** the electron is the **symmetric, orientation-carrying
combination over all four facets** -- chiral because built from facets,
colourless and freely propagating because symmetric, spin-$\tfrac12$ through
the phase's double cover.

This is the same architecture the isotropy argument forces (coherent
superposition over the four triads, not an incoherent domain choice).  Two
independent constraints selecting one scheme is the best evidence available at
this stage.

**Corollary:** a 1-face or 2-face has no determinant, so **it cannot be an
electron.**  Whatever the lower faces are, they are chirality-free.  Whether
they are physical at all, or merely sub-structures of the facets, is open.

---

## 5. Conjecture: confinement as the no-go

*Speculative.  Recorded because it follows from pieces already established; not
to be stated publicly before the check below.*

A single triad is anisotropic at order unity and therefore **cannot propagate
freely** -- that is exactly Paper IV's exclusion.  The symmetric combination is
isotropic and can.  Set that beside colour: a single triad *is* a colour state;
the symmetric combination is the singlet.

> **Conjecture.**  Coloured $=$ single triad $=$ anisotropic $=$ cannot
> propagate freely.  Colourless $=$ singlet $=$ isotropic $=$ free.
> **Confinement is the no-go**, read as a selection rule on what may propagate.

If it holds, Paper IV's negative result becomes a mechanism rather than only an
obstacle.  **What would test it:** whether the isotropy requirement, applied as
an admissibility condition, reproduces singlet-only free states for the right
group-theoretic reason rather than by a coincidence of counting.

---

## 6. The alphabet fixes the mesh

If the phase selects uniformly over an alphabet of size $M$, then
$\delta p_\min = 1/M$.  So:

- four facets $\Rightarrow$ $\delta p_\min = 1/4$;
- all fifteen faces $\Rightarrow$ $1/15$;
- four facets plus the whole $\Rightarrow$ $1/5$.

> $\delta p_\min = 1/4$ **is** the claim that the selection alphabet is exactly
> the four facets.

Two consequences.  First, a "combination of possibilities" that widens the
alphabet **breaks the quarter** unless the lower faces carry different weights
or belong to a separate selection.  Second, and more seriously: if the quarter
is geometric in this way then
$1/\delta p_\min - 1 = (d+1) - 1 = d$ **identically**, which is true for every
$d$ and therefore selects nothing.  That is the *fitted* branch of open handoff
`2026-07-16-dpmin-derived-or-fitted-gate`, arriving from the geometry side.
The geometry programme is unaffected; only the dimensional-selection novelty
claim is.

---

## 7. Test plan

Run a proposed architecture through these in order.  **Tiers are fail-fast** --
do not spend a Bell computation on something that fails Tier 1.

Verdicts use the repo legend: **PASS / PART / STUB / FAIL** (STUB = not yet
run).

### Tier 1 -- killers (cheap, run first)

| ID | Test | Compute | Pass criterion | Meaning of failure |
|---|---|---|---|---|
| **T1** | **Sector agreement** of the propagating cone *(corrected 2026-07-30 -- see §3.6)* | second-moment tensor $\Sigma_s$ **per sector** $s$ (induced gauge, matter, any other propagating sector); then the differences $\Sigma_s - \Sigma_{s'}$ | all sectors agree; the **difference** is below the $\sim10^{-18}$ cavity / Michelson-Morley bound.  $\Sigma \propto I$ is *not* required | sectors ride different light cones -- Paper IV's exclusion recurs |
| **T2** | Chirality carrier present | does the architecture contain $k=d$ facets? | yes | no handedness $\Rightarrow$ no R/L $\Rightarrow$ no electron (§3.2, E2) |
| **T3** | A=1 preserved | does the selection emit a partition of $N$ units summing to one, with no zero parts? | yes | normalisation broken; see [[platos_cave_invariant_observer]] §5.1 |

### Tier 2 -- structure

| ID | Test | Compute | Pass criterion | Meaning of failure |
|---|---|---|---|---|
| **T4** | Orientation consistency | are the maps relating members of the selection alphabet orientation-preserving? | all proper | handedness not globally definable; chirality lost in the average (§3.3) |
| **T5** | Double cover | does the phase admit a consistent $Z_2$ lift, giving $-1$ on a $2\pi$ loop? | yes | no spin-$\tfrac12$ (E4) |
| **T6** | Singlet structure | does an isotropic symmetric combination exist, and are non-singlets anisotropic? | yes to both | the confinement conjecture (§5) fails; colourless free states not distinguished |
| **T7** | Induced mesh | $\delta p_\min$ from the alphabet size and weights | matches the value used elsewhere in the framework; derived-or-fitted status **declared** | silent mismatch with §6 and the open gate |
| **T8** | State-space accounting | component count (facets $\times$ chiralities $\times$ anything else) | matches known particle content, or the excess is quotiented as gauge | unexplained extra states |

### Tier 3 -- dynamics and physics

| ID | Test | Compute | Pass criterion | Meaning of failure |
|---|---|---|---|---|
| **T9** | Coherence requirement | residual anisotropy under **incoherent** averaging as a function of domain size; compare to $10^{-18}$ | either incoherent suffices, or coherent superposition is shown to be **required** | ambiguity about the physical mechanism remains unresolved |
| **T10** | Gisin safety | is the floor implemented as **admissibility** (idempotent selection) or as a **clamp** (nonlinear map)? | admissibility | nonlinear dynamics generically signals; see [[bell_chsh_separability_on_lattice]] §10.5-10.6 |
| **T11** | Bell | does the empirical model lack a global section, and does $S$ cap at $2\sqrt2$? | contextual **and** capped | under 2 $\Rightarrow$ Bell-local; over $2\sqrt2$ $\Rightarrow$ PR-box, unphysical ([[bell_chsh_separability_on_lattice]] §10.3-10.4) |
| **T12** | Calibration functoriality | does calibration commute with dynamics? | yes | the interface argument of [[bell_chsh_separability_on_lattice]] §11.6 fails |
| **T13** | Higher-order sector comparison *(added 2026-07-30)* | the leading anisotropic term **beyond** the quadratic (order $k^4$), again **per sector and compared** | sector difference at $O(k^4)$ below its (much weaker) bound | a differential cone shape survives beyond leading order.  Expected to pass -- the residual is Planck-suppressed, unlike Paper IV's $O(1)$ dimension-4 failure.  **Scored in the T1 cell** of the results table |

**T9 first within Tier 3.** It is a single number and it collapses an entire
axis of the architecture space: if incoherent averaging cannot reach
$10^{-18}$, the coherent reading is *forced* rather than merely preferred.

---

## 8. Results table

Rows are architectures; columns are tests.  Fill in as results land.

**Legend:** PASS / PART / STUB (not yet run) / FAIL.

| Architecture | T1 iso | T2 chir | T3 A=1 | T4 orient | T5 cover | T6 singlet | T7 mesh | T8 states | T9 coher | T10 Gisin | T11 Bell | T12 calib |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **A0** single facet *(Paper IV, negative control)* | **FAIL** -- differential: gauge $O(1)$ dim-4 vs matter dim-6 | PASS | PASS | PASS (trivial) | STUB | FAIL | PASS $1/4$ | STUB | n/a | STUB | STUB | STUB |
| **A1** four facets, **incoherent** | PART -- statistical suppression only; sector agreement unproven | PASS | STUB | PASS | STUB | STUB | PASS $1/4$ | STUB | **decisive** | STUB | STUB | STUB |
| **A2** four facets, **coherent** *(favoured)* | PART -- $12I$ per sector, but **sector agreement not yet computed** | PASS | STUB | PASS (§3.3) | STUB | STUB | PASS $1/4$ | STUB | STUB | STUB | STUB | STUB |
| **A3** full $k=4$ (BCC, coord 8) | STUB -- cube metric is **not** a failure (§3.6); sectors uncompared | **FAIL** (§3.2) | STUB | n/a | STUB | STUB | STUB | STUB | n/a | STUB | STUB | STUB |
| **A4** all fifteen faces | STUB | PASS | STUB | STUB | STUB | STUB | **$1/15$** -- breaks the quarter (§6) | STUB | STUB | STUB | STUB | STUB |

Reading of the table as it stands: **A0** is excluded (published).  **A3** loses
handedness.  **A2** is the only row with no FAIL, and it is the row the electron
filters of §4 independently select.  **A1** versus **A2** is decided by T9 alone.

*Note the T1 column was re-scored on 2026-07-30 under the corrected
sector-relative criterion (§3.6).  Two cells moved from PASS to PART: computing
$12I$ or $4I$ for a single sector establishes that sector's cone, **not** that
the sectors agree, and agreement is what the test now asks.  A3's cube metric
was demoted from a failure to STUB -- a non-Euclidean cone is not a defect if
every sector shares it.*

**Working position (2026-07-29): A2 is adopted for the electron and photon
sectors.**  Note the asymmetry in what each sector demands:

- the **photon** requires only **T1**.  Its birefringence channel already passed
  in Paper IV; what failed was the common-mode anisotropy, which is exactly
  what A2's coherent superposition addresses.
- the **electron** additionally requires **T2**, **T4**, **T5** and **T6**
  (chirality carrier, orientation consistency, double cover, singlet).

So A2 is *required* by the photon and *over-determined* by the electron -- the
stricter constraint selects the architecture the looser one already needs.
This is a working position, not a closed one: A2 still has STUB in most cells,
and adoption is provisional on T9 and Tier 3.

---

## Open Questions

1. **Check the $(d+1):1$ theorem** (§1) independently, then state it in Lean
   under `src/dcl_formalism/` alongside coordination $2k$ and the tight-frame
   identity.  All three are small.
2. **Gauge or physical?**  Is the facet index a gauge redundancy (physical
   states are the symmetric combination; isotropy exact; nothing physical may
   be labelled by it) or a genuine internal degree of freedom (extra states owed
   an account)?  T8 depends on the answer, and "selected as part of the phase"
   reads gauge-like but should be decided deliberately.
3. **Do the other architectures have a role?** *(Deferred by the author,
   2026-07-29 -- logged, not to be worked yet.)*  With A2 adopted for the
   electron and photon, the open question is whether A1, A3, A4, A5 and the
   lower faces are **rejected alternatives** or **distinct sectors** coexisting
   with A2.  The face lattice permits coexistence by construction (§2), so
   "wrong" and "elsewhere" are not the same verdict, and a FAIL in the table
   means only that a row cannot host *these two particles*.  Sub-questions:
   $k=1$ and $k=2$ cannot carry handedness (§3.2, §4) -- are they real
   sub-structures, sectors for chirality-free objects, or artefacts of the
   enumeration?  And is A5 (§ candidate row) a rival or a different regime?
4. **Does the confinement conjecture survive its check?** (§5.)
5. **Effective dimension.**  A $k$-face has effective dimension $k$, so the
   face lattice gives a spectrum of effective dimensions $1,2,3$ with
   multiplicities $4,6,4$.  Whether this connects to dimensional-flow results in
   causal sets / CDT is unexamined -- see
   [[prior_work_dimension_from_adjacency]].
6. **Audit rows.**  This repo's two inherited PASS rows (bipartite octahedral
   lattice at $d=3$; the 71-dimensional per-site algebra) descend from the
   construction Paper IV excluded and need re-statement.

---

## Pointers

- **Upstream:** Paper IV v1.0 (`dcl-paper-04-optical-axis-birefringence`) --
  the no-go, its root cause, and the "four-orientation $O_h$-restoring vacuum"
  proposal this note formalises.  Website essay
  `dcl-website/news/posts/2026-07-21-optical-axis-tested-single-domain-no-go.qmd`.
- **Related notes:** [[bell_chsh_separability_on_lattice]] (T10-T12 live there);
  [[platos_cave_invariant_observer]] (§5.1 for the partition/no-zero structure;
  §6 for the God-eye discipline that constrains how these tests may be
  measured); [[bipartite_octahedral_lattice_n_dim]];
  [[prior_work_dimension_from_adjacency]].
- **Gate:** open handoff `2026-07-16-dpmin-derived-or-fitted-gate` -- §6 bears
  directly on its verdict.
- **Source:** `figures/lattice_fig.txt` (the $d=3$ site with its two triads).
