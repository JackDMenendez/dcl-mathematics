# Discrete Measure Theory on the Lattice

**Status:** DRAFT
**Purpose:** Working space for counting measures, Haar-analogue
measures invariant under the per-site automorphism algebra,
change-of-variables, discrete Radon-Nikodym on $\Lambda_n$.
**Cited by:** `paper/sections/discrete_measure_theory.tex`.

---

## Setup

Section 6 of the paper.  Provides the measure-theoretic underpinning
for the function-space theory in
[[function_spaces_on_lattice]] and the inner products in
[[discrete_differential_geometry_on_lattice]].

## Argument

1. **Counting measure $\mu_\#$.**  $\mu_\#(A) = |A|$ for finite $A
   \subset \Lambda_n$.  Sigma-algebra: power set of $\Lambda_n$
   (lattice is countable).
2. **Rescaled measure.**  $\mu_{\#, \epsilon} = \epsilon^n
   \mu_\#$ on $\epsilon \Lambda_n$.  This is the one that converges
   to Lebesgue measure in the $\epsilon \to 0$ limit.
3. **Haar-analogue.**  The unique (up to scaling)
   counting-measure-equivalent measure invariant under the per-site
   automorphism algebra of
   [[automorphism_algebra_n_dim]].
4. **Change-of-variables.**  For automorphism $\phi \colon
   \Lambda_n \to \Lambda_n$, $\int f \circ \phi \, d\mu = \int f \,
   d(\phi_* \mu)$.
5. **Discrete Radon-Nikodym.**  Any measure $\nu$ absolutely
   continuous with respect to $\mu_\#$ has density $\nu(\{x\}) /
   \mu_\#(\{x\}) = \nu(\{x\})$.  (Discrete case is essentially
   trivial; included for completeness.)

## Open questions

1. Is the Haar-analogue actually the counting measure $\mu_\#$
   itself?  The hyperoctahedral / per-site algebra is finite-
   dimensional and acts within each colour class.  Uniqueness may
   collapse to "the counting measure is the only invariant up to
   colour-class weighting."
2. Do we want measures on the cell complex (forms-as-measures), or
   only measures on the vertex set?  For
   [[discrete_differential_geometry_on_lattice]] the inner product
   on $k$-forms needs measures on $k$-cells.
3. Connection to $\epsilon$-rescaling: under
   $\Lambda_n \to \epsilon \Lambda_n$, does the measure rescale as
   $\epsilon^n \mu_\#$ uniformly across $k$-cells, or do $k$-cells
   pick up $\epsilon^{n-k}$ factors?  Decide before Section 6
   commits.

## Pointers

- Related notes: [[automorphism_algebra_n_dim]],
  [[function_spaces_on_lattice]],
  [[discrete_differential_geometry_on_lattice]],
  [[discrete_to_continuum_limits]].
- Related paper sections: \S\ref{sec:discrete_measure_theory}.
