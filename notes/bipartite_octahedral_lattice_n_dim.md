# Bipartite Octahedral Lattice in Dimension $n$

**Status:** DRAFT
**Purpose:** Pin the combinatorial definition of the bipartite
octahedral lattice in arbitrary dimension and verify $n=3$ recovers
Paper I's lattice.
**Cited by:** `paper/sections/lattice_n_dim.tex`.

---

## Setup

Paper I defines the bipartite octahedral lattice in 3-D as the
substrate of A=1 physics.  This note is the working space for the
$n$-D generalisation.

Working definition (provisional, refine before Section 1 commits):
$\Lambda_n$ is the graph with

- vertex set $V_n = \mathbb{Z}^n$,
- edge set $E_n$ given by $\pm e_i$ neighbours (axial edges) plus
  the octahedral cross-edges at each site,
- two-colouring $V_n = V_n^+ \sqcup V_n^-$ by site-coordinate parity
  $\sum_i x_i \bmod 2$.

## Argument

Claims to establish:

1. The two-colouring is well-defined for all $n \geq 1$ and every
   edge crosses colour classes.
2. The $n=3$ instance is graph-isomorphic to Paper I's bipartite
   octahedral lattice (cite Paper I's explicit description).
3. The lattice carries a natural action of the symmetric group on
   coordinate-axis permutations and sign-flips ("hyperoctahedral
   group" $B_n$), respecting the bipartition.

## Open questions

1. Are the octahedral cross-edges the *right* additional edges for
   the $n$-D generalisation, or do we want a different rule?  The
   3-D case has a specific geometric meaning (octahedral coordination);
   what is its $n$-D analogue?
2. What is the right name?  "Bipartite octahedral lattice in
   dimension $n$" is descriptive but verbose.  Consider
   $\Lambda_n^{B}$ or a similar shorter notation.
3. Does the lattice admit a useful $\mathbb{Z}^n$-translation
   symmetry that survives the bipartite colouring (translations by
   2-vectors only)?

## Pointers

- Related notes: [[automorphism_algebra_n_dim]] -- the algebra acts
  on this lattice; [[dcl_mathematics_scope_and_outline]] for the
  framing.
- Related paper sections: \S\ref{sec:lattice_n_dim}.
- Related repos: `external/dcl` (Paper I); `dcl-zoo` (3-D base
  case).
