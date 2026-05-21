<!-- markdownlint-disable MD022 MD025 MD033 MD060 -->
# CLAUDE.md -- Working Brief for Claude Code

> Project: `dcl-mathematics` -- *Foundations of the A=1 Discrete
> Causal Lattice: Bipartite Octahedral Lattices in Arbitrary Dimension*

This file is the project memory for Claude Code.  Keep it updated so a
new conversation can continue work without the full chat history.

---

## CURRENT STATUS (2026-05-20) -- v0.1-DRAFT

Scaffold landed.  Repo provisioned from `dcl-paper-template`; section
outlines in place; audit table seeded with the foundations-toolkit
coverage rows (all STUB at v0.1).  No proofs written yet; the v0.1
artefact is an *outline-shaped* paper, not a finished one.

- **Headline claim:** a coherent body of pure mathematics about
  bipartite octahedral lattices in *arbitrary* dimension supports the
  series' downstream physics work -- including the discrete-to-continuum
  limit machinery that the Hilbert-Sixth capstone will eventually
  consume.
- **In progress:** drafting Phase 1 -- scope-and-outline note
  (`notes/dcl_mathematics_scope_and_outline.md`) + introduction
  section.
- **Blocked:** nothing external.  Paper I at v1.0 is the only upstream
  prerequisite and is already in hand.
- **Audit rows:** all 8 toolkit-internal rows are STUB; 2 inherited
  rows from Paper I are PASS.
- **Next concrete action:** write the scope-and-outline note that
  fixes the n-D conventions (lattice definition, parity / two-colouring,
  what gets deferred to sibling papers).  Until that note is stable,
  Section 1 cannot lock its notation.

Update this block whenever the answer to "what is the next action"
changes.

---

## What This Project Is

`dcl-mathematics` houses the supporting *pure mathematics* of the A=1
Discrete Causal Lattice (DCL) series.  Paper I established the
bipartite octahedral lattice in its physical (3+1)-D setting; this
repo generalises the underlying mathematics to arbitrary dimension and
collects it in a form the series' downstream physics papers (Boltzmann
on lattice, fluid limits, the Hilbert-Sixth capstone) can cite.  No
code lives here -- the sympy operationalisation of selected theorems
is the planned `dcl-formalism` package's job, and the physics
applications are their own paper repos.

The repository is *paper-only*.  Publication is a deferred decision;
the paper format is load-bearing regardless of external publication
because the series needs a canonical internal mathematical reference,
and theorems-with-proofs in arbitrary dimension is the right shape
for that role.

---

## Paper Title and Theme

**Title:** *Foundations of the A=1 Discrete Causal Lattice: Bipartite
Octahedral Lattices in Arbitrary Dimension*

**Working alternative (shorter):** *Mathematics of the A=1 Discrete
Causal Lattice -- Foundations Toolkit*

**Core theme / framing:** the title says *Foundations*; the
load-bearing claim is *generality*.  Paper I works in 3-D because
physics is 3-D.  This paper works in arbitrary $n$ because the
mathematics is naturally $n$-D and the Hilbert-Sixth capstone's
universality claim needs $n$-D theorems.  Boltzmann + NS appear here
as the *motivating example* of what the toolkit will eventually
support -- they are not the proof target of this first paper.

Title-format note: this title intentionally does **not** follow the
"Geometry verbs Physics" pattern of the methodological-capstone
papers (Paper I *Geometry First*, Paper II *Geometry Forces Physics*,
the planned Paper XX *Geometry Axiomatizes Physics*).  This is a
*supporting* mathematics paper, not a methodological-claim paper;
the title foregrounds the mathematical content rather than a
verb-shaped methodological assertion.

---

## Series Position

Upstream of: `dcl-formalism` (planned sympy package),
`dcl-paper-XX-hilbert-sixth` (planned capstone), future Boltzmann /
NS / kinetic-theory papers.

Downstream of: `dcl` (Paper I) -- the source-of-record for the
bipartite octahedral lattice in its physical setting.

Coexists with `dcl-formalism` slot (Paper I follow-ons #13 + #14):
division of labour is *this repo proves the theorems*; *that package
operationalises them as sympy primitives*.  Same body of mathematics,
two different surfaces.

---

## Audit Table Status

| Row | Status | What it claims |
|---|---|---|
| Bipartite octahedral lattice (Paper I, 3-D) | PASS (inherited) | Existence and basic structure in the physical setting. |
| 71-dim per-site automorphism algebra (3-D, `dcl-zoo`) | PASS (inherited) | The 3-D per-site algebra is catalogued. |
| General bipartite octahedral lattice in dimension $n$ | STUB | Combinatorial definition, neighbours, parity / two-colouring. |
| Automorphism algebra in dimension $n$ | STUB | n-D extension of the 3-D 71-dim per-site algebra. |
| Discrete differential geometry on the lattice | STUB | Discrete exterior calculus, connections, curvature, integration by parts. |
| Function spaces on the lattice | STUB | Discrete $L^p$ / Sobolev-analogues / $\ell^p$ with n-D scaling. |
| Discrete measure theory on the lattice | STUB | Counting measures, Haar-analogues, change-of-variables. |
| Discrete-to-continuum limit operators | STUB | Limit topology, convergence modes, consistency with continuum operators.  *The Hilbert-Sixth on-ramp.* |
| Boltzmann-shaped operators on the lattice | STUB (motivating example) | Collision operator, H-functional, equilibrium measures.  *Framing only -- proof deferred.* |
| Fluid (NS / Euler) limit ansatz | STUB (motivating example) | Discrete-to-continuum scaling that recovers fluid equations.  *Framing only -- proof deferred.* |

Mirror of `paper/sections/audit_table.tex` -- update this table when
the audit table changes.  The claim auditor agent
(`.claude/agents/claim-auditor.md`) treats `audit_table.tex` as the
authority; this section is for quick orientation only.

---

## Conventions

- **Status legend.** `PASS` / `PART` / `STUB` / `FAIL` (defined in
  the front-matter of `paper/main.tex`).
- **File naming.** Sections: `paper/sections/<topic>.tex`.  Figures:
  `paper/figures/<name>.{tex,pdf,png}` with `.tex` fragment + binary
  pair.  Notes: `notes/<topic>.md`.
- **Cross-references.** Always `\label{}` + `\ref{}` / `\autoref{}`,
  never hard-coded numbers.  Section labels: `sec:<name>`.  Subsection:
  `subsec:<name>`.  Equation: `eq:<name>`.  Figure: `fig:<name>`.  Table:
  `tab:<name>`.  Theorem: `thm:<name>`.  Definition: `def:<name>`.
  Lemma: `lem:<name>`.  Proposition: `prop:<name>`.
- **Bibliography.** All cites flow through `paper/paper-bib/references.bib`.
  Style: `\bibliographystyle{unsrt}` (numeric, in citation order).
- **Dimension symbol.** Use `n` for the lattice dimension throughout
  (not `d`, which is reserved for differentials in discrete exterior
  calculus).  Specialise to `n=3` when matching Paper I's
  physical setting.
- **Motivating-example tagging.** Boltzmann + NS sections are
  explicitly *motivating examples* in this first paper, not proof
  targets.  Use `\todomark{motivating-example: ...}` to mark prose
  whose load-bearing content is deferred to a subsequent paper.
- **British/American spelling.** The series mixes both; do not
  normalise.  Use British forms (-ise, -ation, neighbour, colour)
  when in doubt -- consistent with issue drafts 001-004 in
  `dcl-project`.

---

## Release flow

See `release_notes/README.md` for the full procedure.  Summary
(applicable only if the publication decision is taken):

1. CI green on `main`.
2. Update `CITATION.cff` (`version`, `date-released`).
3. Draft `release_notes/vX.Y.md` and `release_notes/vX.Y-release-message.md`.
4. **Deposit on Zenodo first** -- the DOI lands in the title-page
   `\thanks{}` block and `CITATION.cff` *before* the release commit.
5. Commit version bump (DOI included).
6. Tag `vX.Y`, push the tag.
7. Create the GitHub Release using the release-message body.

If publication stays deferred, tag a `vX.Y-internal` cut instead and
leave the Zenodo slot open; downstream consumers cite the
internal-reference tag.

---

## What NOT to Change

- The *Section 1-7* outline structure in `paper/main.tex` -- it
  mirrors the audit-table rows and gives downstream papers stable
  cross-reference targets.
- The "motivating examples" framing for Boltzmann + NS in Section 7 --
  proving those limits is the job of subsequent papers (in this repo
  or sibling repos), not this first paper.  Don't promote Section 7
  rows from STUB to PART/PASS without first deciding whether the
  proof scope has changed.
- The `paper/sections/section_template.tex` file -- it is the
  copy-from source for new sections.
- The `n` symbol for lattice dimension (see Conventions).

---

## Notes Index

- `notes/README.md` -- conventions for the `notes/` directory.
- `notes/dcl_mathematics_scope_and_outline.md` -- scope-decision
  record + first-paper outline (n-D conventions, motivating-examples
  policy, deferral boundaries).
- `notes/bipartite_octahedral_lattice_n_dim.md` -- working notes on
  the general-$n$ lattice definition.
- `notes/automorphism_algebra_n_dim.md` -- working notes on the n-D
  generalisation of the 3-D 71-dim per-site algebra (cross-reference
  `dcl-zoo`).
- `notes/discrete_differential_geometry_on_lattice.md` -- discrete
  exterior calculus / connections / curvature on the lattice.
- `notes/function_spaces_on_lattice.md` -- discrete $L^p$ /
  Sobolev-analogue / $\ell^p$ scaling and embedding theorems.
- `notes/discrete_measure_theory_on_lattice.md` -- counting measures,
  Haar-analogues, integration by parts.
- `notes/discrete_to_continuum_limits.md` -- limit operators,
  convergence modes, consistency conditions.  *The Hilbert-Sixth
  on-ramp.*
- `notes/boltzmann_on_lattice.md` -- motivating-example framing for
  Boltzmann-shaped collision operators on the lattice.
- `notes/fluid_limit_ansatz.md` -- motivating-example framing for
  the lattice-Boltzmann -> NS / Euler limit ansatz.
