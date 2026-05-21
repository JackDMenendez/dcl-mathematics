# Boltzmann on the Lattice (Motivating Example)

**Status:** DRAFT (motivating-example framing only)
**Purpose:** Working space for the Boltzmann-shaped collision
operator on $\Lambda_n$.  Framing only at v0.1; the full H-theorem
proof is deferred to a subsequent paper.
**Cited by:** `paper/sections/motivating_examples.tex` \S
\ref{subsec:boltzmann}.

---

## Setup

Section 8.1.  *Motivating example*, not a proof target of this
paper.  The audit-table row for this content is by design `STUB` and
stays `STUB` until a subsequent paper closes it.

## Argument

Sketch (to be filled in during Phase 5):

1. **Phase space.**  Lattice + velocity space: $\Lambda_n \times V$
   where $V$ is a finite or discrete set of admissible lattice
   velocities (e.g., the neighbour-vector set $\{\pm e_i\} \cup
   \{octahedral cross-edges\}$).
2. **Collision operator.**  Binary collisions $(v_1, v_2) \to (v_1',
   v_2')$ respecting microscopic conservation (momentum, energy,
   parity).  Operator $Q[f]$ acts on densities $f \colon \Lambda_n
   \times V \to \mathbb{R}_{\geq 0}$.
3. **Lattice $H$-functional.**  $H[f] = \sum_{x, v} f(x, v) \log
   f(x, v)$.  Expected to be non-increasing under the dynamics
   $\partial_t f + v \cdot \nabla_{\text{lattice}} f = Q[f]$.
4. **Equilibrium measures.**  Zero-set of $Q$: local
   (Maxwellian-analogue) distributions parametrised by conserved
   quantities.
5. **What this paper proves.**  Nothing.  Section 8.1 states the
   above as a research target and a downstream consumer of the
   foundations toolkit.  Full proof of the H-theorem on $\Lambda_n$
   is deferred.

## Open questions

1. Is the right discrete-velocity set the neighbour-vector set of
   $\Lambda_n$ itself, or a larger set (e.g., second-neighbours, or
   a continuous velocity space)?  Choice affects whether the
   continuum-Boltzmann limit is recovered cleanly.
2. The discrete H-functional may pick up bipartite-colour terms
   that are not present in the continuum H-functional.  Are these
   spurious (artefacts of the colouring) or genuine (extra
   conservation laws)?
3. Microscopic-reversibility on the lattice: which collision rules
   are compatible with the joint-tick rule of Paper I?  This is the
   constraint that ties Boltzmann-on-lattice to A=1 dynamics rather
   than to a generic lattice gas.

## Pointers

- Related notes: [[fluid_limit_ansatz]] (the downstream limit);
  [[discrete_to_continuum_limits]] (the apparatus the eventual
  proof will use); [[dcl_mathematics_scope_and_outline]] for the
  motivating-examples policy.
- Related paper sections: \S\ref{subsec:boltzmann}.
- Related repos: future kinetic-theory paper to be created
  separately when the proof scope is ready.
