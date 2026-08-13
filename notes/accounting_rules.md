# Accounting Rules: a Register with Status

**Status:** LIVING REGISTER.  Opened 2026-08-06.
**Purpose:** Hold every accounting rule the framework uses, with its status,
whether it survives relabelling, and what fixes it.  Opened because a
step-by-step pass through the accounting revealed that several rules carried
since the first paper are **assumptions carried as structure** rather than
consequences.
**Cited by:** nothing yet.  Companion to
[[falsification_plan]] §4 -- these are the structural-commitment rows, applied
to the place that turned out to need them most.

---

## How to use

Four tests, applied to every rule.  The first has been doing most of the work.

1. **Does it survive relabelling a convention?**  If moving the origin, swapping
   a label, or renaming a sublattice changes what the rule *means*, it is not a
   physical rule.  This is what killed "accounting on even ticks", and it would
   have caught the Euclidean standard in T1.
2. **What does it forbid?**  A rule that rules nothing out is decoration.
3. **Absolute or relative?**  Relations survive; absolutes usually do not
   ([[successor_geometries_simplex_face_lattice]] §3.6,
   [[platos_cave_invariant_observer]] §4.9).
4. **What fixes the value?**  If nothing does, it is a free parameter wearing
   the costume of a fact.
5. **Is it gauge, or merely degenerate?**  *(added 2026-08-06)*  A degenerate
   degree of freedom **looks** gauge until something lifts the degeneracy; true
   gauge can never be lifted, by anything.  So for any rule declaring something
   unobservable, ask: **what perturbation would lift it, and has anyone tried?**

**Status legend**

| Status | Meaning |
| --- | --- |
| **STRUCTURAL** | follows from something prior; not independently chosen |
| **DECLARED** | a Step 0 commitment, dated, with a named test |
| **ASSUMED** | carried without argument; not yet earned |
| **FORK** | an unresolved choice with consequences either way |
| **WITHDRAWN** | superseded; kept for the record, with the reason |

---

## The register

| # | Rule | Status | Survives relabelling? | What fixes it |
| --- | --- | --- | --- | --- |
| A1 | Total amplitude is one at every tick | **STRUCTURAL** | yes | the founding axiom |
| A2 | Accounting happens on **even** ticks | **WITHDRAWN** | **no** | nothing -- see §A2 |
| A3 | The accounting **period** is 2 | **ASSUMED** | yes (period is invariant) | **nothing** -- see §A3 |
| A4 | The tick is the rhombic hop | **ASSUMED** | yes | unpinned -- see §A4 |
| A5 | No state exists between accountings | **DECLARED** 2026-08-01, **under test** | yes | declaration + **T15**; see §A5 |
| A6 | Tick count is relative; each session has its own clock | **DECLARED** | yes | supersedes A7; see §A6 |
| A7 | Global parity synchronisation across sessions | **WITHDRAWN** | no | superseded by A6 |
| A8 | Joint accounting requires *simultaneous* accounting | **FORK** | yes | see §A8 |
| A9 | On an odd tick, A=1 holds and nothing else is invariant | **STRUCTURAL** | yes | [[manifesto_two_transcendentals]] |
| A10 | Detection time is the *detector's own* accounting tick | **ASSUMED** (proposed) | yes | requires no global tick counter |
| A11 | The floor gates admissibility rather than clamping amplitudes | **FORK** | yes | [[bell_chsh_separability_on_lattice]] §10.6 |

---

## Notes on the live entries

### A2 -- accounting on even ticks (WITHDRAWN 2026-08-06)

Which sublattice is "even" depends on where the origin sits, and the origin is a
convention -- every rhombic site has the same neighbourhood.  Move the origin one
hop and even/odd swap, so the rule **changes meaning under a relabelling**.  It
fails test 1 and is not a physical rule.

**What survives:** the *period*, not the *phase*.  "Accounting has period 2" is
translation-invariant; "accounting on the even ones" is not.  So the honest form
is period-with-gauge-phase, and then the **relative** phase between sessions
carries whatever physical content there is -- which is A8.

### A3 -- the accounting period (ASSUMED; nothing fixes it)

Two was adopted early and carried since without argument.  Candidate periods now
in play, with nothing selecting among them:

- **2** -- bipartite alternation
- **6** -- the girth of the diamond lattice (the shortest cycle), *or* the route
  count 3! (a multiplicity, not a duration -- do not conflate;
  [[successor_geometries_simplex_face_lattice]] §6.1)
- **8 or 12** -- 720° of phase at some rate

**Proposed principled version (author, 2026-08-06):** define the identity as the
completion of **720° of phase generation**, and account *at the identity*.  The
period then stops being stipulated and becomes whatever the structure's return
takes.

*Cost:* it requires the phase rate, which is unpinned -- so it trades one free
choice for another.  *Gain:* the new one is tied to the double cover, hence
constrained by a **measured** result (neutron 4π periodicity).  An unconstrained
convention becomes a parameter with an experiment attached.

### A4 -- what is a tick?

Unresolved between two readings, and the register cannot be consistent until it
is settled:

- the **rhombic hop** (one destination reached), or
- the **cubic step** (one scaffold move), in which case a rhombic hop is three
  ticks and a parity cycle is six.

A5 assumes the first (no state between accountings ⇒ the cubic steps are not
ticks).  Some earlier discussion assumed the second.  **Pick one.**

### A5 -- gauge, or only degenerate?  (added 2026-08-06)

Declared 2026-08-01 with **T15** as its test.  But look at *why* it was
declared: the argument was that route multiplicity is **uniform** -- six routes
to every destination, so the count cancels and no observable can depend on it.

Uniformity is a statement about a **degeneracy**, and degeneracies get lifted.
So A5 may be recording degeneracy rather than gauge, which are different things
with different consequences (test 5 above).

**Candidate perturbation (author, 2026-08-06): a proton session.**  The hydrogen
experiments suggest the electron *searches* for the Bohr radius, and that the
search requires fluctuation that only a second session supplies.  If a proton
lifts the six-fold route degeneracy -- making multiplicity direction-dependent
-- then **the bias is the search**, and no individual route ever becomes
observable: *which* route stays gauge, *how many* does not.

**The test.**  Introduce a proton session; recount routes per destination.

- **uniform** -- A5 stands, the scaffold is gauge, T15 should pass.
- **non-uniform** -- the scaffold is **physical in the presence of matter**, A5
  is withdrawn, and the route structure is doing dynamical work.

Either outcome is informative, and it is cheap: pure counting on a small
neighbourhood, no amplitudes required.

**Related framing note.**  The localisation worry raised earlier in the week was
partly misposed.  A *free* electron is delocalised in standard quantum mechanics
too, so nothing needed explaining there.  What needs a mechanism is a **bound**
electron, and the standard one applies: a defect pulls a bound state out of the
band, and the proton is the defect.  One quantitative caveat -- in three
dimensions an attractive well binds only above a threshold strength, unlike one
or two dimensions where any attraction binds.  Whether the proton coupling
clears that threshold is a computable check.

### A6 -- relative clocks: offset or rate?

Declared: tick count is relative, each session has its own clock.  This
supersedes A7 and removes the preferred foliation that was blocking
[[successor_geometries_simplex_face_lattice]] Open Question 7.

**But it does not say offset or rate**, and the two cost very differently:

- **offset only** -- a translation; the group is additive; harmless.
- **rate also** -- a *scaling*; the calibration bundle becomes non-trivial; a
  connection on it is a **Weyl gauge field**, and Einstein's 1918 objection
  applies (path-dependent length transport makes atomic spectra history-
  dependent, which they demonstrably are not).

### A8 -- joint accounting (FORK)

§5 of the Bell note needs the pair to account **together** for the
non-factorisable Born draw -- the only route above CHSH 2.  With relative clocks
(A6), two sessions on opposite parities never do: their accounting events
interleave permanently, giving a standing fact about which measurement came
first, which is what relativity denies.

**Proposed resolution:** entangled pairs are **same-parity by construction**,
having been created at a single accounting event -- consistent with §7's
adjacency-without-metric, where the joint object lives on a shared edge.

*Prediction if adopted, checkable in simulation:* **you cannot entangle across a
parity mismatch.**

*Cost:* parity correlation becomes a precondition for entanglement, so the pair's
parity relation is part of the joint state and therefore **not gauge** -- a
change of status for something currently treated as bookkeeping.

---

## Three tiers of state (fixed 2026-08-06)

Easy to collapse, and worth keeping distinct:

| Tier | Coordinates | Status |
| --- | --- | --- |
| **cubic intermediates** | *mixed* parity, e.g. (0,−1,1) | **not states** -- no amplitude, sub-tick, pure scaffold |
| **odd rhombic sites** | all-odd, sum ≡ 3 (mod 4) | **genuine states** holding amplitude; the distinguishing *sign* is gauge, the *existence* is not |
| **even rhombic sites** | all-even, sum ≡ 0 (mod 4) | states, accounted, observable |

The middle tier is the one that collapses into the first if one is careless.
"The odd step's only invariant is A=1" is a claim about the **sign**, not about
whether a site is there.

---

## Open Questions

1. **Settle A4** (what is a tick).  Nothing else in the register can be made
   consistent until this is fixed.
2. **Settle A6** (offset or rate).  One is free, the other inherits a famous
   objection.
3. **Settle A3** via the identity, or accept that the period is a free
   parameter and declare it as such.
4. **Resolve A8**, and if the same-parity resolution is adopted, run the
   simulation check.
5. **Run the proton test against A5** (§A5).  Cheapest live item in the
   register: counting only, no amplitudes, and it decides whether A5 records
   gauge or degeneracy.
6. **Audit the remainder.**  This register was built from one week's discussion;
   rules carried since Paper I have not been swept.  Every one should be run
   through the five tests above.

---

## Pointers

- [[falsification_plan]] §4 -- structural-commitment rows; this register is that
  proposal applied.
- [[bell_chsh_separability_on_lattice]] §5, §10.6, §11.
- [[manifesto_two_transcendentals]] -- A=1 and Observational Univariance; A9.
- [[successor_geometries_simplex_face_lattice]] §3.6, §6.1, §3.11, OQ7.
- [[platos_cave_invariant_observer]] §4.9, §5.1.
- [[phase_clock_and_bipartite_parity]] -- bears on A3 and A9.
