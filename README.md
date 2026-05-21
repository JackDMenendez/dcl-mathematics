# Paper Template (paper-only)

A starting scaffold for a research paper, derived from the
infrastructure of the *Geometry First* (A=1 Discrete Causal Lattice)
project. Use this when the paper has no companion experiment code; for
papers that ship runnable experiments and tests, use the full-stack
sibling template instead.

## Click "Use this template" on GitHub

This repo is configured as a GitHub Template Repository. From the
GitHub web UI on the template's page, click **Use this template ->
Create a new repository**, then `git clone` the new repo locally.

## What you get

```
.
+-- paper/
|   +-- main.tex                 -- title page, front matter, section wiring
|   +-- macros/
|   |   +-- packages.tex         -- LaTeX package list
|   |   +-- commands.tex         -- theorem envs, \placeholder, \todomark
|   +-- sections/
|   |   +-- abstract.tex         -- placeholder
|   |   +-- introduction.tex     -- EXEMPLAR (cross-refs, eq, figure include)
|   |   +-- section_template.tex -- copy-and-rename for new sections
|   |   +-- audit_table.tex      -- longtable seed, two example rows
|   |   +-- conclusion.tex       -- placeholder
|   |   +-- acknowledgements.tex -- placeholder
|   |   +-- code_and_data.tex    -- appendix placeholder
|   |   +-- reproducibility.tex  -- appendix placeholder
|   +-- figures/
|   |   +-- example_figure.tex   -- figure-fragment template
|   |   +-- README.md            -- figure conventions
|   +-- paper-bib/
|       +-- references.bib       -- BibTeX seed
+-- notes/                        -- working theoretical notes
+-- release_notes/                -- per-version change log + Release body
+-- .claude/agents/claim-auditor.md  -- read-only audit agent
+-- CLAUDE.md                     -- project memory for Claude Code
+-- CITATION.cff                  -- machine-readable citation
+-- LICENSE                       -- MIT
+-- makefile                      -- root build (paper, promote, clean)
+-- common.mak                    -- shared make variables
+-- build.sh / build.cmd          -- platform wrappers around make
+-- .gitignore .gitattributes .gitmessage
```

## First steps after creating your repo

1. **Search-and-replace the placeholders** in:
   - `paper/main.tex` -- title, author, ORCID, email, repo URL
   - `paper/macros/packages.tex` -- pdftitle, pdfauthor, pdfsubject,
     pdfkeywords
   - `CITATION.cff` -- title, author, ORCID, repo URL
   - `LICENSE` -- year and copyright holder
   - `CLAUDE.md` -- short title, current status block
   - `README.md` (this file) -- replace with your project's own README
2. **Build the paper** to confirm the toolchain works:
   ```sh
   ./build.sh paper        # POSIX / MSYS2 UCRT64 on Windows
   build.cmd paper         # Windows cmd / PowerShell
   ```
   Output: `build/Paper.pdf` (renamed via `DOC_TITLE` in the
   `makefile`).
3. **Replace the exemplar section** (`paper/sections/introduction.tex`)
   with your own introduction once the patterns are no longer needed
   as scaffolding.
4. **Wire up new sections** by copying `paper/sections/section_template.tex`
   to a new name and adding the corresponding `\section{...}` +
   `\input{sections/...}` block in `paper/main.tex`.
5. **Maintain the audit table.** Treat
   `paper/sections/audit_table.tex` as the source of truth for which
   claims are PASS / PART / STUB / FAIL; the claim-auditor agent in
   `.claude/agents/` flags prose that contradicts it.

## Build requirements

- GNU Make >= 4.3 (the stock Windows port is too old; on Windows use
  MSYS2 UCRT64 with `pacman -S make`).
- `pdflatex` + `bibtex` (TeX Live or MiKTeX).

## Release flow

See `release_notes/README.md`. Short version: deposit on Zenodo
first to get the DOI, *then* commit the version bump. The DOI is part
of the title-page `\thanks{}` block and `CITATION.cff`.

## License

Paper text and figures: CC BY 4.0.
Source (this scaffolding): MIT (see `LICENSE`).
