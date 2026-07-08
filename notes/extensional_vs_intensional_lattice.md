# Extensional vs. Intensional Properties of the Lattice — a DCTT sorting tool

*Working note (2026-07-04). A criterion for deciding, while formalizing the A=1
lattice in **Directed Cubical Type Theory (DCTT)**, which properties can be built
as *primitive* (extensional) and which must be *excluded* from the primitive layer
and re-introduced only as a calibrated projection (intensional). "Extensional" here
is the type-theory / logic sense — determined by the extension (the relations that
actually obtain) — not the thermodynamic "extensive."*

> **Internal-only.** "If A=1, then this." No claim that the universe is a lattice.

---

## The criterion (the whole tool in two lines)

- **Extensional** — a *count of the relations that actually obtain.* Invariant under
  relabeling and under *how* you reached the configuration; needs **no external
  constant.** → build it as primitive.
- **Intensional** — needs a **choice** (a foliation / grading) or a **calibration**
  (an external constant) laid on top of the bare extension. → excluded from the
  primitive layer; it re-enters only as a projection.

**Type-theory framing (light).** An extensional property is one *determined by, and
invariant under, the identity (path) structure* — transport it along an equivalence
and it is unchanged. An intensional property can tell apart configurations that are
path-equal, by their *construction*. In DCTT the adjacency relation is **directed**
(causal morphisms, not symmetric paths), so the extensional properties are the
functions of the directed graph that are invariant under its automorphisms. The bare
directed graph is the extension; anything you must *add* to it (a coordinate, a
constant, a slicing) is intensional.

**Why this criterion is worth trusting:** it coincides with the program's own
*forced-number vs. calibration-debt* discipline. Extensional properties are the
**forced** ones (pure counts, no knob); intensional properties are exactly where the
**calibration debts** live. Same split, two vocabularies.

---

## Extensional properties — the primitive layer (build these)

Each is a count of what actually obtains, invariant under relabeling, needing no
external constant:

- **Step / tick count along a directed path → distance.** The number of hops on a
  directed path *is* its length; the shortest hop-count between two cells *is* the
  metric. Distance is not calibrated onto the lattice — it is **read off by
  counting.** This is the cleanest extensional object, and the one that "calibrates
  to distance" without any external unit.
- **Adjacency density and coherence density** — "how much adjacency per cell" and
  "how much coherence per cell." Local, computable cell-by-cell.
- **Decoherence** — adjacency density *minus* coherence density: the incoherent
  remainder of adjacency. (Coherence is a sub-relation of adjacency — phase-aligned
  adjacency — so the three partition cleanly: adjacency = coherence + decoherence.)
- **Boltzmann entropy** — the logarithm of the number of adjacency micro-configurations
  consistent with the macrostate ("S = log W", W a count). The minimum-probability
  quantum makes this a **discrete** count, so the entropy changes in whole quanta.
- **Topological / winding counts** — loops, cycles, chirality imbalance (the RGB/CMY
  bookkeeping). Pure counts, path-invariant.
- **Token number (the A=1 total)** — the conserved count itself.

Common feature: **no external constant, no chosen slicing** — just enumeration of the
relations. These are the forced quantities.

---

## Intensional properties — excluded from the primitive layer

### The headline: TIME (and *why* it is specifically excluded)

The DCTT-native reason, stated sharply: **a directed graph has no canonical grading
(height) function.** Step-count *along one chosen path* is extensional — but a
*global* time coordinate is a **foliation** of the causal graph into successive
"nows," and there are many valid foliations, none canonical. Choosing one is an added
intensional structure — and *that very freedom of choice is relativity of
simultaneity.* So:

- **Proper duration** — steps along a single worldline — is **extensional.** ✅
- **Coordinate time** — a global grading in seconds — is **intensional.** ❌ It needs
  *both* a chosen foliation *and* the tick→second calibration (the clock-density
  projection).

This is the type-theoretic reason behind the program's slogan "time is not on the
floor; ticks and adjacency are" — now an argument, not an assertion.

### Everything that leans on time inherits the exclusion

- **Rates** ("per unit time") — the extensional version is "per tick."
- **Frequency / energy in physical units** — extensional version is "cycles per
  tick"; energy in Joules needs the (Planck-constant-like) calibration = *the one
  number* the program keeps rediscovering.
- **Velocity in metres-per-second** — "one hop per tick" (the speed limit) is
  extensional; metres-per-second is not.
- **Absolute phase** — gauge; only phase *differences* (relations) are extensional.
- **The smooth continuum metric / a simultaneity surface** — idealizations laid over
  the discrete extension.

---

## The unifying statement

> **Intensional = "needs the tick→second (or energy) calibration, or a choice of
> foliation." Time is the master intensional object; everything else intensional
> inherits its non-extensionality from time — or from time's energy dual.**

So the formalization strategy is: build the **extensional layer** (counts, adjacency,
densities, distances) as primitive in DCTT; let **time, energy, rates, the smooth
metric** re-enter only as *calibrated projections* on top. The calibration constant
that turns ticks into seconds (and cycles into Joules) is the single debt that all
intensional quantities share — see the "one calibration number" thread in
`../../physics-research/notes/clock_density_entropy_identity.md`.

---

## Worked extensional example: the entropy step

Proposed (see open questions — logged as *candidate*, not settled): per **even
(bipartite) step**, the change in the extensional entropy equals the summed change in
adjacency density and coherence density, times the minimum-probability quantum —

> **entropy change per even step = (change in adjacency density + change in coherence
> density) × (minimum probability quantum).**

- **Why it is extensional:** local (per cell), additive over regions, quantized in the
  minimum-probability quantum, and needing no external constant.
- **Why it is "useful for Boltzmann":** the extensional entropy *is* the micro-configuration
  count ("S = log W"); the minimum-probability quantum makes it a **discrete**
  Boltzmann count, so entropy moves in whole quanta.
- **Two readings of the same two channels:** the **sum** (adjacency + coherence) is
  the total extensional entropy; the **difference** (adjacency − coherence) is
  **decoherence** — the arrow-carrying order parameter, and a density field, so it
  has a **gradient.** That gradient is the candidate for the single field whose one
  reading bends light (clock density / gravity) and whose other reading points time's
  arrow.

**Open questions (why this is candidate, not settled):**
1. **Additivity.** Coherence is a sub-relation of adjacency (adjacency = coherence +
   decoherence), so a straight sum risks double-counting; decide whether the sum is
   forced or needs an inclusion–exclusion correction.
2. **Identity of the quantity.** Is this the Boltzmann "log W" itself, or a distinct
   extensional count? The *linear-in-the-density-changes* form is a per-step
   linearization that needs justifying if it is meant to be "log W."
3. **Even vs. odd step.** With a bipartite update, where does the *sign asymmetry*
   that gives the arrow enter — do even and odd half-steps add or cancel? (This is the
   bipartite-parity question.)

---

## Related

- `type_theoretic_foundations_directed_cubical.md` — the DCTT foundational-layer note
  this tool serves.
- `../../physics-research/notes/clock_density_entropy_identity.md` — the entropy
  densities, the clock-density ≡ entropy identity, and the one calibration number.
- `../../physics-research/notes/buffer_ratchet_and_beginning.md` — the arrow / ratchet
  / detectable⇒finite theorem (Paper VII), where decoherence-per-step is the candidate
  ratchet increment.
- `manifesto_two_transcendentals.md` — A=1 (ontological) + Observational Univariance
  (epistemological); the extensional/intensional split is a third face of the same
  discipline (what is forced vs. what is chosen).
