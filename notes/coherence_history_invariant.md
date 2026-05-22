# The Coherence-History Invariant: Why "Nothing" Means Never-Cohered

**Status:** DRAFT (exploratory research thread, 2026-05-21)
**Purpose:** Pin the working definition of "nothing" in the A=1
framework -- *never having had coherence* -- and the mechanism that
distinguishes it from the DCQ-FBT framework's *currently lacking
coherence*.  The mechanism: interference / decoherence creates a
permanent record because A=1 accounting forces the amplitude to go
*somewhere*, and at least some of the 51 unused generators from
Paper~II are conjectured to be where the records live.  Implication:
some of what we currently call virtual particles may be residual
records of past decoherence events.
**Cited by:** TBD (research-thread note).  If it matures into
paper-text, would inform `\S\ref{sec:automorphism_algebra}` (the
51-vs-20 generator split), `\S\ref{sec:dimensional_selection}`
(another consequence of A=1), and may motivate a new section on
the coherence-history invariant.

---

## Setup

The external reference paper `@cite{dcq_fbt_paper_delta_v3}` (PDF
in `paper/paper-bib/pdfs/`) defines "nothing" as a state *lacking*
coherence -- i.e., the absence of a coherent superposition / pure
state at the present moment.  This is a *current-state* definition.

The A=1 framework places a stricter constraint.  By the unity axiom
(amplitude conserved at every tick) plus locality (information
propagates only between adjacent nodes) plus the joint-tick rule
(Paper~I), *any decoherence event must leave a record somewhere*.
The amplitude that exits the coherent channel cannot vanish; A=1
accounting forces it into another channel.  Therefore a region that
has ever cohered carries the record of that coherence even after
the coherence is lost.  *True* A=1-nothing is a region whose
record-keeping channels are in their primordial (zero-history)
state -- equivalently, a region that has *never* cohered.

This is a stricter notion than the DCQ-FBT paper's, and operationally
distinct: a once-cohered-now-decohered region is "nothing" in their
sense but not in ours.

## Argument

The chain:

1. **A=1 unity (Paper~I).**  $\mathcal{A} = 1$ exactly, every tick.
   Decoherence events redistribute amplitude rather than destroying
   it.

2. **Per-site phase space.**  At each site, the 71-dimensional
   per-site automorphism algebra catalogued in `dcl-zoo` provides
   the available "slots" for amplitude.  Paper~II identifies
   approximately 20 of those 71 generators as accounting for the
   Standard Model gauge structure (the SU(3) $\times$ SU(2)
   $\times$ U(1) gauge derivation).  Approximately 51 generators
   are unaccounted for.  *(Pin the exact count from Paper~II at
   write-up time; the argument adapts to 50 / 51 / 52 with no
   structural change.)*

3. **The 51 unused generators as candidate record-keepers.**
   Working hypothesis: the unused generators receive the
   amplitude that decoherence redistributes.  They act as a per-site
   "history register," accumulating the framework's memory of past
   coherence.

4. **Implication for the definition of "nothing."**  A region that
   has been through one or more decoherence events still has
   non-trivial structure in its history-register generators.
   It is not "nothing" in the A=1 sense -- it carries history.
   A=1-nothing requires the history register to be empty.
   Equivalently: A=1-nothing is the set of regions that have never
   participated in coherent dynamics.

5. **Implication for virtual particles.**  Standard QFT defines
   virtual particles as off-shell intermediate states in Feynman
   diagrams -- they appear / disappear within a computation but are
   never observable on their own.  The A=1 picture suggests an
   alternative reading: some of what is measured as virtual-particle
   contribution may be the *residual record* of past coherence
   events encoded in the history-register generators.  Distinct from
   real particles (which live in the gauge-structure generators);
   distinct from coherent superpositions (which live in the
   amplitudes proper); but also distinct from "nothing" (which
   would be the absence of history-register content).

## Open Questions

1. **Exact generator count.**  Is it precisely 51, or some adjacent
   number?  Paper~II's gauge-derivation table is the authority;
   verify before committing to a count in paper-text.
2. **Which of the 51 carry which records?**  Some may carry general
   coherence-history; some may correspond to specific channels
   (e.g., flavour records, gauge-decoherence records); some may be
   structural padding with no record-keeping role.  A classification
   is needed.  Phase~2 of `dcl-mathematics` could surface this.
3. **Mapping to standard QFT virtual particles.**  The claim "some
   virtual-particle contributions are residual generators" requires
   a precise correspondence: which Feynman-diagram internal lines
   correspond to which residual generators?  Long-horizon question;
   depends on completing Paper~II's gauge derivation plus a careful
   translation between the A=1 lattice picture and continuum QFT.
4. **Reversibility / record erasure.**  Can a decoherence record
   ever be erased (by reversing dynamics, or by a second decoherence
   event "cancelling" the first)?  If yes, the A=1-nothing condition
   is recoverable -- a region can drop back to never-cohered status.
   If no, the universe accumulates records monotonically, giving an
   arrow of time.  Likely the latter, but worth pinning explicitly.
5. **Connection to dimensional selection.**
   $d_{\max} = 1/\delta p_\min - 1$ says A=1 *forces* the dimension
   to be at most $d_\max$.  Does the coherence-history invariant
   similarly *force* the existence of records, or is it merely
   *permitted* by the framework?  If forced, the framework is more
   tightly constrained than v0.2 currently presents.  If permitted
   but contingent, the record-keeping is a *consequence of A=1 plus
   coherent dynamics having ever occurred*, not a structural
   axiom.
6. **Contrast with DCQ-FBT operationally.**  The DCQ-FBT paper's
   "lacking coherence" definition admits a region that has decohered
   into the never-cohered class; ours does not.  Are there
   experimental setups -- e.g., very-low-rate single-photon counting
   in regions of space we have empirical reason to believe have
   *not* hosted coherent dynamics -- that could distinguish the two
   definitions?  Phase~3 of `dcl-delta-p-min`'s observational-
   signatures work is the natural place to scope this.

## Pointers

- **External reference:** `@cite{dcq_fbt_paper_delta_v3}` -- the
  DCQ-FBT "lacking coherence" definition is the contrast we sharpen
  against.  PDF in
  `paper/paper-bib/pdfs/paper-delta-v3-dcq-fbt-ontology.pdf`.
- **Paper~I (`external/dcl`):** A=1 unity axiom, locality axiom,
  joint-tick rule.  The mechanism's foundation.
- **Paper~II (`external/dcl-sm-derivation`):** identifies the SM
  gauge generators among the 71-dim per-site algebra.  Source for
  the 20-vs-51 split.
- **`dcl-zoo`:** the 71-dim per-site automorphism algebra catalogue.
  Where the 51 unused generators live.
- **Related notes:** [[automorphism_algebra_n_dim]] -- the algebra's
  generalisation to dimension $d$; the 20-vs-51 split in the $d=3$
  case is the entry point.  [[dcl_mathematics_scope_and_outline]] --
  add this thread to the open-questions roster if it persists.
- **Related paper sections:** \S\ref{sec:automorphism_algebra}
  (algebra structure); \S\ref{sec:dimensional_selection}
  (A=1 unity argument as one consequence; coherence-history
  invariant may be another).
- **Long-horizon target:** if this matures, a new paper or section
  on "Coherence History as a Conservation Law in the A=1 Framework"
  -- distinct from dimensional selection but flowing from the same
  axiom.  Could be its own subproject (sibling of
  `dcl-delta-p-min`) or a major section of a later paper.
