# Function Spaces on the Lattice

**Status:** DRAFT
**Purpose:** Working space for $\ell^p$, Sobolev-analogue
$\ell^{k,p}$, $n$-dependent scaling, embedding theorems on
$\Lambda_n$.
**Cited by:** `paper/sections/function_spaces.tex`.

---

## Setup

Section 5 of the paper.  Builds on the counting / Haar measure of
[[discrete_measure_theory_on_lattice]] and the discrete $d$ of
[[discrete_differential_geometry_on_lattice]].

## Argument

1. **$\ell^p(\Lambda_n)$.**  Functions $f \colon \Lambda_n \to \mathbb{C}$
   with $\|f\|_p^p = \sum_{x \in \Lambda_n} |f(x)|^p < \infty$.
   Complete; separable for $p < \infty$; dual is $\ell^{p'}$.
2. **Sobolev-analogue $\ell^{k,p}$.**  Functions with discrete
   $k$-th-order derivatives (via $d$ from
   [[discrete_differential_geometry_on_lattice]]) in $\ell^p$.
3. **Rescaling.**  For lattice spacing $\epsilon > 0$, the rescaled
   norm $\|f\|_{p, \epsilon}^p = \epsilon^n \sum |f|^p$ is the one
   that converges to $\|f\|_{L^p(\mathbb{R}^n)}$ in the
   $\epsilon \to 0$ limit.  Same for Sobolev-analogue norms with the
   appropriate $\epsilon$-power.
4. **Embedding theorems.**  Discrete analogues of
   $W^{k,p}(\mathbb{R}^n) \hookrightarrow L^q(\mathbb{R}^n)$ with
   $1/q = 1/p - k/n$.  Constants should be $\epsilon$-independent in
   the limit.

## Open questions

1. The rescaling $\|f\|_{p,\epsilon}^p = \epsilon^n \sum |f|^p$
   comes from the volume-form interpretation.  Is there a
   convention-clash with how Paper I weights lattice sums?  Check
   before committing in Section 5.
2. For the Sobolev embeddings to pass to the continuum, do we need
   uniform-in-$\epsilon$ Poincare / Friedrichs-type inequalities?
   State these as separate lemmas.
3. Compact embeddings (discrete Rellich-Kondrachov) require some
   notion of "bounded discrete domain".  For unbounded $\Lambda_n$
   we may need weighted spaces or local-compactness reformulations.
4. Does the bipartite structure require parity-respecting Sobolev
   spaces (separate even / odd components), or does the natural
   space mix?

## Pointers

- Related notes: [[discrete_measure_theory_on_lattice]],
  [[discrete_differential_geometry_on_lattice]],
  [[discrete_to_continuum_limits]].
- Related paper sections: \S\ref{sec:function_spaces}.
