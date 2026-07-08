# Manifesto: The Two Transcendentals — A=1 and Observational Univariance

**Status:** DRAFT (foundations manifesto, 2026-06-28)
**Purpose:** State the two principles that govern *everything* in the A=1
Discrete Causal Lattice program — **A=1** (the ontological/dynamical
transcendental) and **Observational Univariance** (the
epistemological/observational transcendental) — their division of labour, their
conjectured Noether-duality, and the two-axis discipline they impose on every
claim. This is a foundational/philosophical anchor and a methodological
constitution, **not** a derived result.
**Cited by:** program-wide (cross-subproject). Formal expression:
[[type_theoretic_foundations_directed_cubical]] (univalence *is* Observational
Univariance made formal). Instance: [[bell_chsh_separability_on_lattice]]
(no-signalling is Observational Univariance applied). Kin: the website
*Statement of Intent* and the *expressive power, not ontology* essay.

---

## The two transcendentals

Everything the program does is governed by two principles that sit above any
particular paper, engine, or experiment:

1. **A=1 — the ontological transcendental.** Amplitude is conserved exactly, at
   every tick: $\mathcal{A}=1$. Nothing is created or destroyed; everything is
   accounted for. This is a law about *what the substrate does*.

2. **Observational Univariance — the epistemological transcendental.** A quantity
   is physically observable **iff** it is invariant under the full representation
   freedom of the theory (node relabeling, embedding, gauge, and choice of
   derivation). Across all equivalent representations an observable has a single
   value — it is *univariant*. This is a criterion about *what counts as a
   physical claim*.

They transcend in **different registers**: A=1 lives *in the gears* and binds
every **tick**; Observational Univariance lives *at the readout* and binds every
**claim**. Together they bracket the program — **the world conserves; the
observables are invariant.**

---

## A=1: the law in the gears

A=1 is dynamical and ontological. Every process — propagation, interference,
decoherence, measurement — must conserve total amplitude. Amplitude that leaves a
channel must reappear in another; this is why decoherence leaves a permanent
record (see [[coherence_history_invariant]]) and why the `floor_ledger`
(the A=1 cleanup ledger) exists: it is the exact bookkeeping of amplitude the
probability floor manufactures or removes. A=1 is the one law every tick obeys.

## Observational Univariance: the criterion at the readout

*Definition.* A quantity is physically observable iff it is invariant under the
theory's representation freedom; equivalently, it is single-valued (univariant)
across all equivalent derivations. Two theories are empirically distinguishable
iff they assign **different values to the same univariant observable**.

*Naming.* "Univariant" = *single-valued under variation* (variance-zero ⇒
invariant) across the equivalence class. The term is chosen to resonate with the
type-theoretic notion of **variance**: among the kinds of variance a quantity can
have under the representation groupoid, an **observable is the *invariant* kind**.
Define it explicitly on first use — it is adjacent to *univariate* (statistics)
and *co/contravariance* (tensors, type theory), and only the controlled pun is
intended.

*What it forbids.* Anything that depends on the arbitrary representation — node
labels, the embedding, the derivation path, or the floor *bookkeeping* (as
opposed to the floor's physical value) — is **gauge, not physics**, and may not
appear in any observable. This single criterion subsumes the program's recurring
checks; each is Observational Univariance applied to a different representation
freedom:

- **No-signalling** (Bell): Alice's marginal must be invariant under Bob's
  setting. A leak is a representation artifact, not nonlocality.
- **Gauge invariance**: the SU(3)×SU(2)×U(1) content must be invariant under the
  gauge freedom.
- **Coordinate invariance**: physical content survives the discrete-to-continuum
  change of description ([[discrete_to_continuum_limits]]).
- **Representation-independence** of any number: independent of node labeling and
  embedding.
- **Expressive power, not ontology**: the stance *is* Observational Univariance —
  what is real is the invariant, not the substrate's particular encoding.

**The God's-eye view and the univariant quotient.** A complete simulation state
(the `.npy` "God's-eye view") is a *representation*, and it generally carries
**more** than the observables: global signs and phases, intermediate-step detail,
node labelings. The physics is **not** this total representation but its
**univariant quotient** — what survives modding out the representation freedom.
The surplus is the gauge fibre: physically meaningless, even though the God's-eye
view can display it. The load-bearing instance (see
[[phase_clock_and_bipartite_parity]]): the bipartite **even/odd split is the
physical/gauge split**. Observables are bilinear in the amplitude, so the odd
sheet's distinguishing sign cancels — **the odd step's only invariant is A=1**,
and "what happens during an odd step" is a non-question in exactly the sense
"which slit" is: it lives in the surplus, not the quotient. So the God's-eye view
is a *privileged-but-unphysical* representation, and Observational Univariance is
precisely the projection onto the physical quotient.

---

## The conjectured unity: a Noether-duality (NOT yet a theorem)

Conservation and invariance are linked by **Noether's theorem**: every continuous
symmetry carries a conserved charge, and conversely. In standard quantum theory,
**conservation of amplitude/probability is the Noether charge of global phase
(U(1)) invariance.** A=1 is that conserved charge; Observational Univariance
generalizes the invariance side to *all* representation freedom. This suggests
the two transcendentals are not independent but **two faces of one principle**:

> **Conjecture (Noether-duality of the transcendentals).** A=1 is the conserved
> charge of the lattice's representation-invariance — i.e. A=1 is *derivable from*
> Observational Univariance, making OU fundamental and A=1 its Noether shadow.

**Honest caveat.** Noether in clean form requires a continuous symmetry and an
action; the lattice is **discrete**. There is a discrete Noether (variational
difference equations), but it is subtler, and the continuous phase symmetry is
recovered only in the continuum limit. So on the lattice this duality is a
**conjecture to be made precise, not a theorem to invoke.** Per the program's
falsifiability rule, it is a unification to *derive*, not assert.

**The architectural fork the program must call:**
- **(a) Two independent transcendentals** — A=1 (postulated conservation) and OU
  (methodological criterion), each primitive.
- **(b) One principle, two faces** — OU fundamental, A=1 its conserved-charge
  consequence.

(b) is more elegant and more powerful, but it *owes a derivation*. Stating which
the program claims is itself a load-bearing decision: they are different theories
with different burdens.

---

## The two-axis discipline (operational constitution)

Every result must pass **both** gates before it is physics:

1. **Dynamically legal** — it conserves A=1 (audited by the `floor_ledger`).
2. **Observationally legal** — it is univariant (audited by a
   representation-invariance check).

One law for the gears, one criterion for the readout. A quantity that fails (1)
is illegal dynamics; a quantity that fails (2) is bookkeeping masquerading as
physics and never reaches the audit table. A prediction that passes **both** is
then scored the only way that matters: by whether traditional physics assigns the
**same** value to the invariant (agreement — derivation is free, no discriminating
power) or a **different** value (the falsifiable residual — where the lattice's
structure is strictly finer and an experiment adjudicates). *The invariant is
sacred; theories are scored by which value of it they predict; the experiment
reads it off the world.*

---

## Lineage (so novelty is claimed honestly)

The *content* — observables are invariants — is classical: **Klein's Erlangen
program** (geometry as invariants of a transformation group), **Noether**
(symmetry ↔ conservation), **Einstein** (general covariance; the hole argument's
Leibniz-equivalence), and **gauge theory**. What is the program's own:
(i) the **synthesis** — folding mathematical univalence and physical invariance
into one named criterion that spans foundations and physics; (ii) the
**operational use** — a representation-invariance gate on every prediction, paired
with the A=1 conservation gate; and (iii) the **conjectured Noether-duality**
binding the two transcendentals. This is a **methodological constitution**, not a
new law of nature — and that framing is what keeps it defensible.

---

## Open derivation targets

1. **Derive A=1 as the Noether charge of representation-invariance** (resolve the
   architectural fork in favour of (b), or show it cannot be done and accept (a)).
   The headline target; belongs on the dcl-mathematics roster.
2. **Make Observational Univariance precise in directed type theory** — observables
   as the invariant-variance fragment under the representation groupoid (ties to
   [[type_theoretic_foundations_directed_cubical]]; cf. Nuyts' variance kinds).
3. **A discrete Noether for the lattice** — the precise variational statement on a
   discrete causal structure whose continuum limit recovers phase-symmetry ↔
   probability conservation.
4. **An invariance-check protocol** — a concrete, mechanical test that a candidate
   prediction is univariant (independent of labeling, embedding, floor
   bookkeeping), suitable to run as a standing audit beside the `floor_ledger`.

---

## Pointers

- **Formal expression:** [[type_theoretic_foundations_directed_cubical]]
  (univalence = Observational Univariance formalized; directed/cubical foundations).
- **Instance:** [[bell_chsh_separability_on_lattice]] (no-signalling as OU; the
  invariant-vs-residual framing of falsifiability).
- **A=1 mechanism:** [[coherence_history_invariant]] (A=1 forces records — the
  conservation in the gears); the `floor_ledger` in `dcl-core` (the A=1 ledger).
- **Roster:** [[dcl_mathematics_scope_and_outline]] — add open target #1 as a
  named goal.
- **External (lineage):** Klein, *Erlangen Program* (1872); Noether (1918);
  Einstein, general covariance + the hole argument; Voevodsky, univalent
  foundations.
