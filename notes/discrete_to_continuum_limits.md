# Discrete-to-Continuum Limits

**Status:** DRAFT
**Purpose:** Working space for the most load-bearing section of the
paper -- the discrete-to-continuum limit machinery that the
Hilbert-Sixth capstone will consume.
**Cited by:** `paper/sections/continuum_limits.tex`; downstream
consumer: planned `dcl-paper-XX-hilbert-sixth`.

---

## Setup

Section 7 of the paper.  The on-ramp to Hilbert's Sixth.  Uses the
function spaces of [[function_spaces_on_lattice]], the measures of
[[discrete_measure_theory_on_lattice]], the discrete exterior
calculus of [[discrete_differential_geometry_on_lattice]], and the
lattice itself from [[bipartite_octahedral_lattice_n_dim]].

## Argument

1. **The limit parameter.**  $\epsilon > 0$ is the lattice spacing;
   $\epsilon \Lambda_n \subset \mathbb{R}^n$ as a sublattice.  As
   $\epsilon \to 0$, $\epsilon \Lambda_n$ fills $\mathbb{R}^n$
   "densely in the right sense".
2. **Operator convergence.**  For each discrete operator $T_\epsilon$
   on functions on $\epsilon \Lambda_n$, define what "$T_\epsilon \to
   T$" means where $T$ acts on functions on $\mathbb{R}^n$.  Three
   modes:
   - *Strong* convergence on a dense subspace.
   - *Weak* convergence (testing against compactly-supported
     continuum functions).
   - *Distributional* convergence in $\mathcal{D}'(\mathbb{R}^n)$.
3. **Consistency theorems.**  The discrete $d$
   ([[discrete_differential_geometry_on_lattice]]) converges to the
   continuum $d$.  The discrete Laplacian $-d^\ast d$ converges to
   the continuum Laplacian.  The discrete $\ell^p$
   ([[function_spaces_on_lattice]]) becomes $L^p(\mathbb{R}^n)$.
4. **Function-space convergence.**  Convergence of the function
   spaces themselves: there are natural sampling and interpolation
   maps tying $\ell^p(\epsilon \Lambda_n)$ to $L^p(\mathbb{R}^n)$.
5. **Why this is the Hilbert-Sixth on-ramp.**  Hilbert's 1900
   problem singled out the rigorous derivation of fluid equations
   from kinetic theory -- specifically the Boltzmann limit.  Both
   limits (kinetic-from-particle, fluid-from-kinetic) require a
   discrete-to-continuum limit with full rigour.  This section
   provides the apparatus.

## Open questions

1. Choice of *mode* for the consistency theorems: should we state
   them in their strongest natural form (e.g., strong $\ell^p$
   convergence under regularity assumptions) or in a robust form
   that covers a wide class of operators?  The capstone may need
   different modes for different operators.
2. Sampling vs. interpolation: how do we map $L^p(\mathbb{R}^n)$
   functions to $\ell^p(\epsilon \Lambda_n)$ and back?  Sampling
   (pointwise restriction) requires regularity; interpolation
   (e.g., piecewise constant) is more robust.  Pin the choice
   before stating consistency theorems.
3. Bipartite-structure preservation: as $\epsilon \to 0$, does the
   two-colour structure of $\Lambda_n$ have any continuum
   counterpart, or does it dissolve into a global "twice the volume
   density" effect?
4. Rate of convergence: the capstone may need quantitative
   estimates (e.g., $\|T_\epsilon f - T f\|_{L^p} \leq C \epsilon^\alpha
   \|f\|_{W^{k,p}}$) rather than just qualitative convergence.
   Identify which operators admit which rates.
5. Cross-reference to numerical-analysis literature (finite-element
   / finite-difference convergence theorems on uniform grids):
   $\Lambda_n$ is essentially a uniform grid plus extra structure;
   most of the convergence theory may already exist in the
   numerical-PDE literature and need only adaptation.

## Pointers

- Related notes: all other sibling notes; this is the synthesis.
- Related paper sections: \S\ref{sec:continuum_limits}; downstream
  citation point for \S\ref{sec:motivating_examples}.
- Related repos: planned `dcl-paper-XX-hilbert-sixth` (the capstone
  that consumes this material).
