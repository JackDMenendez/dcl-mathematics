# Bell/CHSH on the Lattice: What It Takes for an A=1 Substrate to Be Nonlocal

**Status:** DRAFT (research thread, 2026-06-27)
**Purpose:** Settle, at the level of theorem rather than intuition, the question
*"can the A=1 discrete causal lattice violate a Bell/CHSH inequality, and if so,
through what structure?"* The conclusion is sharp: every mechanism that is
**local + separable** — including a stochastic random walk, a shared classical
phase, a shared "trembling," and a *linear* harmonic-resonance lock — is bounded
by $S \le 2$; the violation requires a **non-separable joint amplitude** sampled
by a **joint (non-factorizable) collapse**. The lattice's *adjacency-without-metric*
structure is identified as the natural — and possibly the only — place such a
joint object can live without signalling.
**Cited by:** `dcl-paper-06-Bell-test` (this note is the formal backbone of that
paper's nonlocality argument; the experiment's `measure_pair` controlled
comparison is the operational test of the conclusions here). Requirements spec:
`dcl-paper-06-Bell-test/notes/core_measurement_requirements.md`.

---

## Setup

### The qubit and the observable

A session carries a spinor field $(\psi_R, \psi_L)$ over the lattice with the
unity constraint $\sum_x (|\psi_R|^2 + |\psi_L|^2) = 1$ (A=1). The chirality
(R/L) degree of freedom is a two-level system with global Bloch vector
$$
n_z = \sum_x (|\psi_R|^2 - |\psi_L|^2), \quad
n_x = 2\,\mathrm{Re}\!\sum_x \overline{\psi_R}\psi_L, \quad
n_y = 2\,\mathrm{Im}\!\sum_x \overline{\psi_R}\psi_L .
$$
A measurement along axis $\hat n(\theta,\phi)$ returns $\pm 1$ with
$p_\pm = (1 \pm \langle\sigma_{\hat n}\rangle)/2$,
$\langle\sigma_{\hat n}\rangle = n_x\sin\theta\cos\phi + n_y\sin\theta\sin\phi + n_z\cos\theta$.

### The CHSH functional

For settings $a,a'$ (Alice) and $b,b'$ (Bob) and outcomes $A,B \in \{\pm1\}$,
with correlators $E(a,b) = \langle A B\rangle$,
$$
S = E(a,b) - E(a,b') + E(a',b) + E(a',b').
$$
Two bounds frame everything below:
- **Local realism (Bell/CHSH):** $|S| \le 2$.
- **Quantum (Tsirelson):** $|S| \le 2\sqrt2 \approx 2.828$, achieved by a
  maximally entangled pair at the optimal angles; loophole-free experiments
  measure $\sim 2.4$.

### The lattice features in play

(1) **A=1** per session; (2) the substrate is an **adjacency graph, with no
metric** — physical distance is emergent, not fundamental; (3) dynamics are a
**stochastic random walk** (an RNG samples paths) atop a deterministic
"resonance structure"; (4) a **probability floor** $\delta p_\min$
(`prob_floor`) clamps sub-quantum probabilities — a genuine **nonlinearity**;
(5) measurement of a pair can be **per-session** (independent local collapse) or
**joint** (collapsing A repartitions a shared floored budget before B is read).

---

## Argument

### 1. The local-realist bound is a factorization statement

CHSH $\le 2$ follows from a single structural assumption — that the joint
outcome distribution factorizes through a shared variable $\lambda$ that is
independent of the settings:
$$
P(A,B \mid a,b) = \int d\lambda\, \rho(\lambda)\, P(A\mid a,\lambda)\,P(B\mid b,\lambda),
\qquad \rho(\lambda\mid a,b)=\rho(\lambda). \tag{LHV}
$$
Everything that follows is a question of whether a given lattice mechanism does
or does not have the form (LHV).

### 2. Per-session A=1 $\Rightarrow$ separable $\Rightarrow S\le2$

If each session is a single **pure** spinor with its **own** norm 1, the pair
state is by construction a product $|a\rangle\otimes|b\rangle$ — *separable*.
Separable states satisfy (LHV) with $\lambda$ trivial, hence $S\le2$, for **any**
dynamics and **any** $\delta p_\min$. Equivalently: an entangled pair has
**mixed** marginals (tracing out B leaves A impure), so "A is its own pure A=1
spinor" is *mathematically equivalent* to "the pair is unentangled." The
per-session-independent ontology is a **product-state machine**.

### 3. Any shared classical variable $\Rightarrow$ LHV $\Rightarrow S\le2$

A common phase set at birth, a shared coherence, a shared Zitterbewegung
("trembling") phase, or a **linear** harmonic-resonance entrainment (two
oscillators locking through a coupling — Huygens' clocks on a shared beam) all
have the same structure: a property $\lambda$ established at the common origin,
carried locally, and *revealed* by measurement. That is (LHV) verbatim.
Measuring B then "affects" A only **epistemically** (Bayesian update on a shared
value, like opening one of two envelopes). Perfect anti-correlation is included
and is *classical*; it does not exceed 2.

### 4. A stochastic random walk is not a loophole

Bell's theorem already admits **stochastic** local models: $P(A\mid a,\lambda)$
is a probability, not a fixed value. Moreover, **Fine's theorem** — every
stochastic local model is equivalent to a deterministic one with $\lambda$
extended to absorb the local random seeds — shows local randomness changes
nothing: fold the RNG into $\lambda$ and (LHV) still holds. Hence a random walk
whose steps are drawn by **independent local** RNGs, atop a shared resonance
structure, gives exactly
$$
P(A,B\mid a,b) = \sum_\lambda \rho(\lambda)\,P(A\mid a,\lambda)\,P(B\mid b,\lambda) \le 2 .
$$
The "resonance structure" plays the role of $\lambda$; richness of $\lambda$
buys nothing. (Note: Bell assumes **no** dynamics — it is not "accepting wave
equations"; it is a setting-correlation constraint that wave-mechanical QM is
the theory which *violates*.)

### 5. The unique escape: non-separable joint state + joint draw

(LHV) fails iff $P(A,B\mid a,b)$ does **not** factorize. Two conditions, both
necessary:
- **(i) Non-separability.** The joint state is not a product; for a pure pair,
  the canonical witness is a coherent superposition
  $|\Psi\rangle = \tfrac1{\sqrt2}(|R\rangle_A|L\rangle_B + |L\rangle_A|R\rangle_B)$,
  **not** the classical mixture $\tfrac12\{|RL\rangle\langle RL| + |LR\rangle\langle LR|\}$.
- **(ii) Joint collapse.** Measuring A and B is one non-factorizable Born event:
  B is sampled from the **A-updated** conditional, not by an independent local
  draw. (This is precisely `measure_pair(mode="joint")`; the `"per_session"`
  mode is the factorized model of §4.)

The discriminating signature is the **shape of $E(\theta)$** in the relative
analyzer angle: a shared classical variable gives a **linear** (triangle-wave)
correlation bounded by 2; a non-separable pure state gives
$$
E(\theta) = -\cos\theta \quad\text{(spin-}\tfrac12\text{; or } \cos2\theta \text{ in the chirality/polarization convention)},
$$
whose curvature is exactly the overshoot that reaches $2\sqrt2$. The violation
lives **off-axis**: in the birth basis everything looks classical.

### 6. Entanglement lives on configuration space, not physical space

The two-particle Schrödinger object is $\Psi(x_A, x_B, t)$ — one amplitude on
the **$2d$-dimensional configuration space** — generically non-separable. Two
fields $\psi_A(x), \psi_B(x)$ on the **same physical $d$-space** are a
**mean-field / Hartree product** ansatz: separable by construction, $S\le2$, and
*not* the two-body wavefunction however faithfully each field obeys its own
equation. So the representational question is decisive: does the substrate carry
a joint object over **pairs** of nodes, or two objects over **single** nodes?
The latter cannot encode entanglement. (Nelson's stochastic mechanics makes the
same point dynamically: a random walk recovers single-particle QM, but
reproducing entanglement forces the drift to depend on the **joint** $\Psi$ —
i.e. a **nonlocal** walk. A local per-particle walk cannot violate Bell.)

### 7. Adjacency-without-metric is where the joint object can live

The lattice has **adjacency, not distance**: emergent separation is not a
fundamental quantity, so two sessions a million km apart in emergent space may
remain **graph-adjacent**. This is the structurally interesting move:

- **It matches experiment.** Entanglement correlations are empirically
  **distance-independent** (e.g. Micius, 1200 km). A metric field theory must
  work to explain that; an adjacency-only substrate gets it for free — there is
  no separation for the correlation to decay against.
- **It is ER=EPR-flavored.** Entanglement $\equiv$ a persistent connection
  (short graph path / shared cone) in the underlying graph; "spooky action at a
  distance" becomes "adjacency," with no influence propagating *through*
  emergent space.
- **It supplies the channel, not the state.** Adjacency makes a coupling
  *possible*; it does not make it *quantum*. An edge can carry a classical
  shared $\lambda$ (still $\le 2$, §3) or a non-separable joint amplitude
  ($\to 2\sqrt2$). The edge **is** the lattice's way of holding
  configuration-space correlation without literally storing an $N^2$ array — but
  only if what it holds is non-separable.

### 8. Two conditions on the edge — including the locality loophole

Adjacency **reintroduces** the locality loophole that real Bell tests close by
spacelike separation: if A and B are graph-adjacent they are causally connected,
and a critic attributes any correlation to influence through the edge. In a
simulation locality is enforced **computationally** — A's outcome must be
computed without reading B's setting through the edge. Hence the edge must be:
- **(i) non-separable** in the amplitude it carries (gives $\cos$, not linear), and
- **(ii) non-signalling** — Alice's marginal $P(A\mid a,b) = P(A\mid a,b')$
  independent of Bob's setting. The edge may transmit the *birth-state
  correlation* and Born-random *steering*; it must **not** transmit B's *setting*
  into A's marginal. Setting-dependence through the edge $=$ communication $=$
  the violation is trivial and dead.

The `floor_ledger` (the A=1 cleanup ledger) is the audit instrument for (ii):
does balancing A's region depend on B's setting?

### 9. Where $\delta p_\min$ earns its keep (and where it does not)

A *linear* resonant birth is separable (§3). The standard laboratory entangled
source — spontaneous parametric down-conversion — is a resonant **nonlinear**
process whose joint amplitude is non-separable by conservation at the conversion
vertex. The lattice's annihilation $\to$ pair-creation is its analog. The
nonlinearity that could turn a joint-normalized (direct-sum) coupling into a
genuinely non-factorizable state is exactly the **floor**: $\delta p_\min$ is a
nonlinearity acting on the shared budget. This is the only framing in which the
floor is *load-bearing* rather than incidental. **But** note the direction of
the standard result: it is the *continuum* entangled state that gives the maximal
$2\sqrt2$, and coarse-graining generally *degrades* correlations. So the
hypothesis "violation requires $\delta p_\min>0$ and vanishes in the continuum"
runs against the usual grain and carries a high burden — see
[[discrete_to_continuum_limits]].

---

## Conclusions

1. **Separable $\Rightarrow S\le2$, unconditionally.** Per-session A=1, shared
   classical variables, and independent-local stochastic walks are all of the
   form (LHV). No amount of dynamical richness, randomness, or constant
   nonlinearity lifts a separable model above 2.
2. **The violation is one thing only:** a non-separable joint amplitude sampled
   by a joint, non-factorizable collapse. Everything else is bookkeeping around
   that.
3. **The lattice can host it** through adjacency-without-metric: the joint object
   lives on the graph edge connecting the pair, which also explains the observed
   distance-independence of entanglement.
4. **It is decidable, not philosophical.** Plot $E(\theta)$: linear $\Rightarrow$
   separable, $S\le2$; cosine $\Rightarrow$ non-separable, $S\to2\sqrt2$. Run the
   positive control (textbook maximally-entangled state, optimal angles) and the
   `prob_floor` $=0$ vs $>0$ comparison; the latter decides whether discreteness
   is the entangling nonlinearity (thesis) or incidental (the pair was already
   entangled by its birth).
5. **The honest fork for the program.** Either the lattice represents a joint
   (configuration-space / edge-borne) non-separable state — and then it can
   reproduce quantum nonlocality, conceding the pair is one joint object until
   measured — or its ontology is genuinely per-session-separable, in which case
   it is **Bell-local ($S\le2$)** and empirically incomplete on this axis. Both
   are publishable; they are opposite headlines.

---

## Open Questions

1. **Representation.** Does the lattice store a joint amplitude over pairs of
   nodes (or an edge object that is provably non-separable), or two fields over
   nodes (mean field)? This single code-level fact predicts the result. The
   **two-body Bohr solver** is the probe: is its bound state a configuration-space
   joint object (entangled) or a Hartree product?
2. **Birth event.** Does annihilation on the lattice leave a coherent
   $|RL\rangle+|LR\rangle$ or a classical mixture of $|RL\rangle$ and
   $|LR\rangle$? Only the former violates. Make the "shared cone harmonic"
   birth argument operational (ref. `c:\dev\dcl\notes\entanglement_as_shared_cone_harmonic.md`).
3. **Edge signalling.** Is the adjacency edge non-signalling (correlation +
   Born-steering only) or does it leak B's setting into A's marginal? The
   `floor_ledger` no-signalling audit answers this.
4. **$\delta p_\min$ as nonlinearity.** Does $\cos2\theta$ (and $S>2$) appear
   only for `prob_floor`$>0$? If it appears at `prob_floor`$=0$, the floor is
   incidental and the entanglement was in the preparation.
5. **Tsirelson, not beyond.** A bound-respecting model must not exceed $2\sqrt2$.
   Does the lattice cap at Tsirelson, or can a global combinatoric rebalance
   overshoot (PR-box territory, unphysical)? Overshoot would be a defect to
   diagnose, not a triumph.

---

## Pointers

- **Paper:** `dcl-paper-06-Bell-test` — this note is its nonlocality backbone;
  the experiment operationalizes Conclusions 2–4. Spec:
  `dcl-paper-06-Bell-test/notes/core_measurement_requirements.md`. Handoffs
  `2026-06-27-core-spin-measurement-primitives` (measurement primitives P1–P4)
  and `2026-06-27-entangled-pair-preparation-physics-gap` (the direct-sum vs
  tensor-product preparation gap — the operational form of §5/§6).
- **A=1 axioms (Paper I):** unity + locality (adjacency) + joint-tick rule. The
  adjacency-not-metric structure of §7 is the locality axiom read at face value.
- **Related notes:** [[discrete_to_continuum_limits]] (the continuum-degradation
  burden on the $\delta p_\min$ thesis, §9); [[coherence_history_invariant]]
  (A=1 forces decohered amplitude *somewhere* — the collapse bookkeeping of §5/§8);
  [[function_spaces_on_lattice]] / [[discrete_measure_theory_on_lattice]] (the
  formal home for "joint amplitude over pairs of nodes" vs single-node fields,
  §6); [[dcl_mathematics_scope_and_outline]] (add this thread to the roster).
- **External:** Bell (1964); Clauser–Horne–Shimony–Holt (1969); Tsirelson (1980);
  Fine (1982, stochastic$\equiv$deterministic LHV); Nelson (stochastic mechanics
  and its entanglement nonlocality); Yin et al. (Micius, distance-independent
  Bell violation at 1200 km).
