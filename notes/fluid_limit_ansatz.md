# Fluid (NS / Euler) Limit Ansatz (Motivating Example)

**Status:** DRAFT (motivating-example framing only)
**Purpose:** Working space for the lattice-Boltzmann $\to$
Navier-Stokes / Euler fluid-limit ansatz.  Framing only at v0.1; the
full convergence proof is deferred to a subsequent paper.
**Cited by:** `paper/sections/motivating_examples.tex` \S
\ref{subsec:fluid_limit}.

---

## Setup

Section 8.2.  *Motivating example*, not a proof target of this
paper.  Builds on [[boltzmann_on_lattice]] (the kinetic equation) and
[[discrete_to_continuum_limits]] (the limit apparatus).

## Argument

Sketch (to be filled in during Phase 5):

1. **Scaling.**  Hydrodynamic regime: $\epsilon \to 0$ with
   collision frequency $\sim 1/\epsilon$ and observation timescale
   $\sim 1/\epsilon$ (the diffusive scaling).  Other scalings
   (acoustic, Euler) recover different limits.
2. **Moment hierarchy.**  Density $\rho$, momentum $\rho u$, energy
   $\rho e$ as moments of $f$.  Conservation laws follow from
   collision invariants.
3. **Chapman-Enskog ansatz.**  $f = f_{\text{eq}}(\rho, u, e) +
   \epsilon f_1 + \cdots$ for small $\epsilon$; substitute into the
   lattice Boltzmann equation, separate orders in $\epsilon$.
4. **Resulting equations.**  At leading order: Euler.  At next
   order: Navier-Stokes with transport coefficients given by
   integrals of $f_1$ against collision invariants.
5. **What this paper proves.**  Nothing.  Section 8.2 states the
   ansatz as a research target.  Full convergence proof
   (lattice-Boltzmann $\to$ Navier-Stokes in the diffusive limit,
   with explicit error bounds) is deferred to a subsequent paper.

## Open questions

1. The classical Chapman-Enskog expansion is asymptotic, not
   convergent; the rigorous lattice analogue (cf. DiPerna-Lions,
   Bardos-Golse-Levermore in the continuum) needs renormalised
   solutions or analogous tools.  What is the lattice version of
   those tools?  Pulled from where in the literature?
2. Hilbert's Sixth specifically asks for *rigorous derivation*; the
   subsequent paper that closes this row will need to be
   peer-review-grade in mathematical analysis, not just
   asymptotic-formal.  Identify reviewers in
   `project-arxiv-endorsement-outreach` (when that memory is
   written).
3. The lattice-Boltzmann method is a well-known numerical scheme;
   our setting is *not* numerical (we are deriving NS from a
   physical kinetic theory).  Make this distinction clearly to
   avoid the paper being read as numerical analysis.

## Pointers

- Related notes: [[boltzmann_on_lattice]],
  [[discrete_to_continuum_limits]],
  [[dcl_mathematics_scope_and_outline]].
- Related paper sections: \S\ref{subsec:fluid_limit}.
- Related repos: planned `dcl-paper-XX-hilbert-sixth` (which cites
  this row's eventual closure as its central technical achievement).
