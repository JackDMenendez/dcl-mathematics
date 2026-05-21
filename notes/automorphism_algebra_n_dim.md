# Automorphism Algebra in Dimension $n$

**Status:** DRAFT
**Purpose:** Working space for the $n$-D generalisation of the 3-D
71-dimensional per-site automorphism algebra catalogued in
`dcl-zoo`.
**Cited by:** `paper/sections/automorphism_algebra.tex`.

---

## Setup

`dcl-zoo` catalogues a 71-dimensional Lie algebra acting per-site
on Paper I's 3-D bipartite octahedral lattice.  This note works
out the analogue for general $n$.

## Argument

Strategy: characterise the per-site automorphism algebra
intrinsically -- as the Lie algebra of infinitesimal automorphisms
of the lattice preserving (i) the bipartite structure and (ii) some
distinguished per-site object (e.g., the joint-tick-rule structure
from Paper I).

Expected ingredients:

1. Hyperoctahedral group $B_n$ (signed permutations of coordinate
   axes) acting per-site.
2. A natural Lie algebra extension capturing the per-site structure
   beyond rigid symmetries.
3. Closed-form expression for the dimension as a function of $n$,
   verifying $\dim_{n=3} = 71$.

## Open questions

1. Is the per-site algebra a known Lie algebra family (orthogonal,
   symplectic, exceptional) in disguise, or genuinely
   lattice-specific?
2. What is the closed-form expression for the dimension?  Trial:
   guess a polynomial in $n$ that gives $71$ at $n=3$; verify
   against $n=1, 2, 4, 5$ by direct enumeration.
3. Are there generators that exist only at specific $n$ (exceptional
   isomorphisms or accidental low-dimensional coincidences)?
4. Does Paper II's gauge-derivation programme already use the $n=3$
   algebra in a form that extends naturally to $n$-D, or does it
   need refactoring to align with the $n$-D presentation?

## Pointers

- Related notes: [[bipartite_octahedral_lattice_n_dim]] -- the
  algebra acts on this; [[dcl_mathematics_scope_and_outline]].
- Related paper sections: \S\ref{sec:automorphism_algebra}.
- Related repos: `dcl-zoo` for the 3-D 71-dim enumeration;
  `external/dcl-sm-derivation` for Paper II's gauge programme.
