# Scope and Outline

**Status:** DRAFT
**Purpose:** Lock the scope and conventions of the first paper before
Section 1 starts pinning notation.  Decisions here flow into all
sibling notes.
**Cited by:** all sections of the first paper; CLAUDE.md mirrors the
"What NOT to Change" subset.

---

## Setup

`dcl-mathematics` is the foundations-mathematics support repo of the
A=1 DCL series.  The first paper develops the toolkit for bipartite
octahedral lattices in arbitrary dimension $n$.  Paper I is the
upstream-of-record for the $n=3$ physical-substrate setting; this
paper generalises.

## Argument

Scope decisions to lock in Phase 1:

1. **Dimension generality.**  Treat $n$ as a free parameter throughout;
   specialise to $n=3$ only when matching Paper I.  Symbol: $n$ for
   lattice dimension (not $d$, which is the differential).
2. **Paper-only.**  No code, no experiments.  The sympy
   operationalisation belongs to the planned `dcl-formalism` package.
3. **Motivating-examples policy.**  Boltzmann + NS / Euler appear in
   Section 8 as *framing only* -- statements of what the toolkit will
   support, not proof targets of this paper.  Their audit-table rows
   are by design `STUB` and stay `STUB` until a subsequent paper closes
   them.  Do not promote them.
4. **Deferral boundaries.**  Out of scope here, on purpose:
   - Physics applications (Papers I, II, III, the discrete-probability
     paper).
   - Sympy primitives (the planned `dcl-formalism` package).
   - Numerical confirmation (lives in sibling repos or in
     `dcl-formalism`'s automated checks).
   - Full Boltzmann H-theorem proof on $\Lambda_n$.
   - Full lattice-Boltzmann -> NS / Euler convergence proof.
5. **Publication decision.**  Deferred.  The paper format is
   load-bearing regardless of external publication -- it serves as the
   series' canonical internal mathematical reference.

First-paper outline (mirrors `paper/main.tex` section order):

- Part I: Combinatorial Foundations (Sections 1-3).
- Part II: Analytic Foundations (Sections 4-6).
- Part III: The Hilbert-Sixth On-Ramp (Section 7).
- Part IV: Motivating Examples (Section 8) -- framing only.

## Open questions

1. Is "bipartite octahedral lattice in dimension $n$" the *canonical*
   $n$-D generalisation of Paper I's lattice, or is there a family of
   natural generalisations to choose among?  Need to pin this before
   Section 1 starts writing.
2. Notation collision: $d$ is both the spatial dimension in some
   conventions and the discrete exterior derivative here.  We're using
   $n$ for dimension; double-check no other symbol clashes against
   established literature conventions (e.g., Bossavit's discrete
   exterior calculus uses $d$ for differential).
3. Where does the "edge weighting / metric on $\Lambda_n$" enter --
   in Section 1 (combinatorial setup) or in Section 4 (when
   integration by parts demands a metric)?  Decide once.
4. The 71-dimensional figure for the 3-D per-site algebra (from
   `dcl-zoo`) -- does it match $n=3$ in our closed-form expression
   for the dimension as a function of $n$?  Verify before Section 3
   commits to a formula.

## Pointers

- Related notes: [[bipartite_octahedral_lattice_n_dim]],
  [[automorphism_algebra_n_dim]], [[discrete_to_continuum_limits]]
- Related paper sections: all sections of `paper/sections/`
- Related repos: `external/dcl` (Paper I, upstream-of-record);
  `dcl-zoo` (3-D 71-dim per-site algebra)
- Related issue: `dcl-project/issue-drafts/004-new-subproject-dcl-mathematics.md`
