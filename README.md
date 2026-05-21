# dcl-mathematics

*Foundations of the A=1 Discrete Causal Lattice: Bipartite Octahedral
Lattices in Arbitrary Dimension.*

Paper-only supporting-mathematics repository in the A=1 Discrete
Causal Lattice (DCL) series.  This repo houses the pure mathematics
that downstream physics work in the series consumes -- theorems and
proofs about bipartite octahedral lattices in arbitrary dimension,
function spaces, discrete measure theory, discrete differential
geometry, and the discrete-to-continuum limit machinery that the
series' Hilbert-Sixth capstone will eventually synthesise.

## Role in the series

The series' physics papers each use *more* of the underlying
mathematics than Paper I exposed, and use it in arbitrary dimension
when the lattice is treated as a mathematical object rather than as a
substrate for a specific physical claim.  Consolidating the
foundational theorems here gives downstream papers a single citable
source.

| Repo | Role | Consumes from this repo |
|---|---|---|
| [`dcl`](https://github.com/JackDMenendez/dcl) | Paper I -- *Geometry First* | (upstream-of-record for the lattice itself) |
| [`dcl-sm-derivation`](https://github.com/JackDMenendez/dcl-paper-02-sm-derivation) | Paper II -- *Geometry Forces Physics* | (existing; would cite this repo on next revision) |
| [`dcl-paper-03-tidal-ionization`](https://github.com/JackDMenendez/dcl-paper-03-tidal-ionization) | Paper III -- quantum Roche limit | (in flight; may cite on revision) |
| `dcl-formalism` (planned) | Sympy package operationalising selected theorems | this repo proves the theorems; that package implements them as primitives |
| `dcl-paper-XX-hilbert-sixth` (planned) | Hilbert-Sixth capstone | consumes the discrete-to-continuum limit machinery (Section 6) for the axiomatisation claim |

`dcl-mathematics` does not consume `dcl-core` or any package; it is
paper-only.  Boltzmann-shaped operators and the fluid (NS / Euler)
limit appear here as *motivating examples* for the toolkit, not as
proof targets of the first paper -- their full treatment is left to
subsequent papers (in this repo or in a sibling repo).

## First paper -- foundations toolkit

The first paper lays out the foundational mathematics that the toolkit
collects.  Section structure (mirrors the audit-table rows in
`paper/sections/audit_table.tex`):

1. **General bipartite octahedral lattice in dimension $n$** --
   combinatorial definition, neighbour structure, parity / two-colouring.
2. **Automorphism algebra in dimension $n$** -- extension of the 3-D
   71-dim per-site algebra catalogued in `dcl-zoo`; rank, generators,
   commutation relations as a function of $n$.
3. **Discrete differential geometry on the lattice** -- discrete
   exterior calculus, discrete connections / curvature, integration by
   parts.
4. **Function spaces on the lattice** -- discrete $L^p$ /
   Sobolev-analogues / $\ell^p$, with $n$-D scaling laws and embedding
   theorems.
5. **Discrete measure theory on the lattice** -- counting measures,
   Haar-analogues for the automorphism algebra, change-of-variables.
6. **Discrete-to-continuum limit operators** -- limit topology,
   convergence modes (weak / strong / distributional), consistency
   with continuum operators.  *The Hilbert-Sixth on-ramp.*
7. **Motivating examples** -- Boltzmann-shaped operators on the
   lattice (collision operator, H-functional, equilibrium measures);
   fluid (NS / Euler) limit ansatz.  *Framing only -- full proofs
   deferred to subsequent papers.*

Publication is a deferred decision; see `CLAUDE.md` and issue draft
[004-new-subproject-dcl-mathematics.md](https://github.com/JackDMenendez/discrete-causal-lattice-project/blob/main/issue-drafts/004-new-subproject-dcl-mathematics.md)
in the project-tracking repo for the rationale.  The paper format is
load-bearing regardless of external publication -- it is the series'
canonical internal mathematical reference.

## Status

`v0.1-DRAFT` -- scaffolded from
[`dcl-paper-template`](https://github.com/JackDMenendez/dcl-paper-template);
audit-table rows seeded as STUB; section outlines in place.  See
`paper/sections/audit_table.tex` for the canonical row-by-row status,
and `CLAUDE.md` for the current next action.

## Build

```sh
./build.sh paper        # POSIX / MSYS2 UCRT64 on Windows
build.cmd paper         # Windows cmd / PowerShell
```

Output: `build/Foundations_of_the_A1_Discrete_Causal_Lattice.pdf` (or
the name resolved from `DOC_TITLE` in `makefile`).

Build requirements:

- GNU Make >= 4.3 (on Windows: MSYS2 UCRT64 + `pacman -S make` -- the
  stock Windows port is too old).
- `pdflatex` + `bibtex` (TeX Live or MiKTeX).

## License

Paper text and figures: CC BY 4.0.
Source (scaffolding, build scripts): MIT (see `LICENSE`).

## Citation

See `CITATION.cff`.
