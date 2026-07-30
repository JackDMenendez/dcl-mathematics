# dcl-core Handoff Queue (staging -- NOT a handoff)

**Status:** LIVING DOCUMENT.  Opened 2026-07-30.
**Purpose:** Accumulate everything `dcl-core` will need when coding on the
successor architecture begins.  This is a **staging list**, not a handoff.
Nothing here has been communicated to `dcl-core` yet.
**Author instruction (2026-07-30):** *"We don't need to do this now but perhaps
start putting together the things that should be communicated when we start
coding in the future.  I will ask you just before that to do a handoff to the
dcl-core repo."*  **Do not file until asked.**

**When the author says go:** use the `/handoff` skill to write a committed
handoff into `j:\dev\dcl-project\handoffs\YYYY-MM-DD-<slug>.md` with the
required frontmatter (`to: dcl-core`, `repo:`, `status: open`, `flags:`,
`decisions:`) and an explicit **→ Consumer actions** checklist.  Chat-pasted
status is not the system of record.

---

## 0. Pre-flight checks (do these *when filing*, not before)

- [ ] **Does `dcl-core` currently implement the excluded substrate?**  Paper IV
      v1.0 excluded the single fixed three-diagonal domain (A0).  If the hop set
      is hard-coded to three of the four body diagonals, the handoff is a
      **migration notice**, not an FYI.  This is the single most important thing
      to establish before writing it.
- [ ] Does `prob_floor` **clamp-and-renormalise** or **gate admissibility**?
      (§2.1 -- the answer changes the headline.)
- [ ] Is the two-body solver a configuration-space joint object or a Hartree
      product?  (Pre-existing question, [[bell_chsh_separability_on_lattice]]
      Open Question 1.)
- [ ] Re-read this queue against the notes; several items below will have moved
      by then.

---

## 1. Decisions to communicate

- **A2 is the working architecture** for the electron and photon sectors: four
  facets of the simplex, in **coherent superposition** (not incoherent domain
  choice).  Provisional -- most cells of the results table are still STUB.
  Source: [[successor_geometries_simplex_face_lattice]] §4, §8.
- **The alternatives are enumerated and finite.**  The coexisting structures are
  the faces of the simplex: $\binom{d+1}{k}$ of dimension $k$, coordination
  $2k$, complete at $2^{d+1}-1$.  A0/A1/A2/A3/A4 in the results table are the
  d=3 rows.  Nothing outside that list needs implementing.
- **The isotropy criterion changed** (2026-07-30).  Absolute isotropy is *not*
  the test -- a universal cone distortion is unobservable.  **Sector agreement**
  is the test.  Source: §3.6.  Any existing isotropy check in `dcl-core` that
  compares a single sector against a Euclidean standard is testing the wrong
  thing.

---

## 2. Code-level forks `dcl-core` must resolve

### 2.1 Floor-as-admissibility versus floor-as-clamp  *(highest priority)*

[[bell_chsh_separability_on_lattice]] §10.5--10.6, Open Question 7.

`prob_floor` as described **clamps** sub-quantum probabilities and
renormalises -- a nonlinear map on evolving amplitudes, which is precisely
Gisin's target: nonlinear evolution plus entanglement generically permits
superluminal signalling.  The proposed alternative is that the floor restricts
**which configurations are admissible** -- an idempotent selection, with
evolution unitary between selections.

This is a code-level fact with a physics consequence, and it decides whether §9's
entangling-nonlinearity thesis can coexist with §8's non-signalling requirement.
It is also the same question as "does the sieve need zero"
([[platos_cave_invariant_observer]] §5.1): a clamp needs zero as a *value*;
admissibility does not.

### 2.2 Coherent versus incoherent facet selection

T9.  Incoherent selection gives only statistical suppression (roughly one over
the square root of the number of independent domains); coherent superposition
gives exact cancellation.  **The single most valuable number to compute first**
-- it collapses an entire axis of the architecture space.

### 2.3 Gauge or physical facet index

[[successor_geometries_simplex_face_lattice]] Open Question 2.  If gauge,
physical states are the symmetric combination and nothing physical may be
labelled by the index.  If physical, four facets times two chiralities is eight
components where the spinor had two, and the extra six need an account.  Decides
T8 and the state-space size.

---

## 3. Tests to implement

The full plan is [[successor_geometries_simplex_face_lattice]] §7 (T1--T13, three
fail-fast tiers).  Implementation order:

1. **T9** (coherence residual versus domain size, against the $10^{-18}$ bound)
   -- one number, decides A1 versus A2.
2. **T1** (sector-relative second-moment tensors and their differences) -- note
   the corrected criterion; compare sectors, do not test against Euclid.
3. **T3** (A=1 preserved) -- cheap, and see §4 below; this should be an assertion
   rather than a test run.
4. Then Tier 2, then Tier 3.

Verdicts go back into the results table using the repo legend
(PASS / PART / STUB / FAIL).

---

## 4. Instrumentation spec

Motivation (author, 2026-07-30): *use human eyes for pattern recognition within
the God's-eye view of coherence and decoherence.*

**The probability state is an integer array.**  If the sieve emits a partition of
$N$ units, no floats are needed at the probability level.  Consequences:

- exact equality, exact diffs, exact hashing; no tolerance parameters;
- **A=1 becomes a checksum** -- every slice sums to $N$.  Assert this **every
  tick**; it is not a plot, it is a conservation test that catches drift
  immediately;
- cells hold values in $0 \ldots N$ (three bits at the working quantum), so
  **full-history recording is cheap** -- which matters because
  [[coherence_history_invariant]] argues the record *is* the physics.

**Two layers, never blurred.**  Coherence lives in *relative phase*, and the Born
step destroys phase -- so an integer probability table **cannot** show coherence.
Seeing coherence and decoherence requires the amplitude layer, which is
God's-eye in the strict sense of [[platos_cave_invariant_observer]] §6.  Mark
amplitude-layer panels permanently and unmistakably so they are never mistaken
for observer-accessible data.

**Index structure:** (tick, site, parity, facet, chirality).

**Slices, mapped to what they diagnose:**

| Slice | Diagnoses |
|---|---|
| fix tick → spatial weight map | where the weight is |
| fix site, vary tick → per-site history | local dynamics, records |
| sum over sites, vary facet → domain occupancy over time | **T9** -- incoherent drifts independently, coherent holds fixed relative phase |
| even minus odd → parity channel | [[phase_clock_and_bipartite_parity]] |
| per-sector directional maps, side by side | **T1** -- sector agreement |

**Rendering rule -- no interpolation.**  Nearest-neighbour only, visible cell
boundaries, integers rendered as integers.  Smoothing a lattice field performs
exactly the observer's continuum construction described in
[[platos_cave_invariant_observer]] §5, and hides the lattice-scale structure the
eye is looking for.  Any plot that makes the discrete look smooth is lying in the
framework's own terms.

---

## 5. Disciplines to state explicitly

- **God-eye discipline.**  A result is physical only if derivable from
  observer-accessible quantities (counts, coincidences, invariants).  God-eye
  inspection verifies the code; it is never evidence about the world.  This
  generalises the computational-locality rule already in
  [[bell_chsh_separability_on_lattice]] §8.
- **The non-signalling audit is not sufficient.**  `floor_ledger` tests whether
  Alice's marginal depends on Bob's setting.  It does **not** test
  setting-independence of the hidden state, and a global combinatorial
  admissibility condition naturally wants to constrain the settings too.  That
  would pass the existing audit and still be superdeterminism.  New audit needed
  -- [[bell_chsh_separability_on_lattice]] Open Question 6.

---

## 6. Questions *for* dcl-core

1. Is the hop set hard-coded to three body diagonals (A0)?  What would a
   four-facet superposition cost structurally?
2. Does `prob_floor` clamp or gate?  (§2.1.)
3. Is $\delta p_\min = 1/4$ **derived** in the code's calibration, or fitted?
   Bears on the open gate -- see §7.
4. Does the two-body solver carry a joint configuration-space object?
5. What does the existing isotropy check actually compare?  (§1, third bullet.)

---

## 7. Gates and cross-repo state

- **Open handoff `2026-07-16-dpmin-derived-or-fitted-gate`** (to
  `dcl-delta-p-min`, still open).  Holds the dimensional-selection novelty claim
  pending a derive-or-fit verdict.  **New evidence from this thread:** if the
  facet index is selected with equal weight over $d+1$ facets then
  $\delta p_\min = 1/(d+1)$ *by construction*, and
  $1/\delta p_\min - 1 = d$ identically -- true for every $d$, selecting
  nothing.  That is the gate's *fitted* branch arriving from the geometry side.
  Source: [[successor_geometries_simplex_face_lattice]] §6.  **This should
  probably be routed to `dcl-delta-p-min` as well as `dcl-core`.**
  *(Routed 2026-07-29 via PM as `2026-07-29-dpmin-geometric-fitted-branch-input`.)*
- **FOLLOW-UP to that gate, not yet routed (2026-07-30):**
  [[successor_geometries_simplex_face_lattice]] §6.1 now identifies **three
  different physical claims wearing the number 1/4** -- a facet share, a quarter
  turn of the phase clock, or a probability floor.  **Two of the three make the
  derive-or-fit question moot**, so "what does the quarter mean?" may be more
  decisive than "was it derived?".  This reframes what `dcl-delta-p-min` is
  being asked and probably warrants a follow-up routing while the gate is still
  open.
- **QUESTION FOR `dcl-core`, answerable immediately (§6.1):** if A=1 normalises
  a session and 1/4 is a probability quantum on that normalisation, a session
  occupies **at most four sites** and cannot spread uniformly over six
  neighbours.  Is that what the code does?  If not, the quarter is not a
  spatial-occupancy quantum and its scope needs stating.
- **Paper IV v1.0** (`dcl-paper-04-optical-axis-birefringence`, Zenodo
  `10.5281/zenodo.21435951`) -- the single-domain no-go this whole thread
  responds to.  Papers I and II re-versioned to v2.0.
- **COLOUR: upstream of Paper IV's open item, not downstream of it
  (2026-07-30, NOT YET ROUTED -- PM decision needed).**  Author's recollection:
  the RGB/CMB labels "did not do what was expected -- they were not SU(3)
  colours."  A three-element index is not SU(3); it supplies permutations or a
  basis, not the continuous unitary structure.  If that holds, Paper IV's open
  question -- *does colour survive a successor geometry?* -- is the wrong
  question.  The right one is **was it ever there?**  Consequences already
  recorded in [[successor_geometries_simplex_face_lattice]]: §3.4 (the ordering
  is still the chirality; the colour identification is not), §4 (electron filter
  E3 weakened -- though E1 and E2 alone still select A2), §5 (the confinement
  conjecture loses its main hook, a second reason for the embargo).
  **This is not a local rename.**  Paper II's SU(3) claim is published and
  Papers I and II were re-versioned only recently, so it touches three repos.
  Naming recommendation if it proceeds: symmetric labels -- an **axis index
  (1--4) plus a sign** -- not `s`/`d` (strange and down quarks), and not
  three-plus-one (which asserts an asymmetry A2 exists to remove).  Reserve
  *shadow* / *dark* for the omitted axis in A0-style discussion, where the
  asymmetry is real.
- **Referee major M6** on Paper IV (A=1 nonlinear-QM / signalling:
  Weinberg / Gisin / Polchinski) is **answered** by
  [[bell_chsh_separability_on_lattice]] §10.5--10.6.  Worth telling Paper IV's
  session, not only `dcl-core`.

---

## How to use this file

Add to it whenever something lands that `dcl-core` will need; delete items that
become obsolete rather than leaving them to rot.  When the author calls for the
handoff, this file is the source material -- the handoff itself is a *summary
with consumer actions*, not a copy of this document.
