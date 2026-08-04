# Falsification Plan: What Would End This Approach

**Status:** DRAFT (methodological, 2026-07-31).
**Purpose:** State what would falsify the A=1 successor programme, at which
level, and by what steps -- and fix the moment at which a claim becomes
binding.  Written **before** the next architecture is proposed, deliberately:
declared in advance it is a discipline, declared afterwards it is a
rationalisation.
**Cited by:** nothing yet.  Companion to the test plan in
[[successor_geometries_simplex_face_lattice]] §7 -- the tests say how to *score
an architecture*; this says what would *end the programme*.

---

## 1. Two levels, and the distinction is the whole thing

Paper IV falsified **A0**, not the framework.  Its own words: A=1 conservation
is not touched, the failure traces to the hop-set realisation.  That scoping was
correct.

But it is bounded.  **If every failure is answered with a new hop set, the
approach is unfalsifiable.**  The distinction between "this architecture died"
and "the framework died" is only meaningful if the boundary was drawn in
advance.

One observation that follows immediately: **A=1 is not where the risk lives.**
It is essentially probability conservation, which is extremely well tested and
holds.  It carries almost no falsification risk and correspondingly little
content.  The risk lives in what is *added* to it.

---

## 2. When does a claim become binding?  The contract point

**Software:** a contract exists the moment the API is released or any interface
is published.  Before that nobody can rely on it, so nobody cares -- the code is
a draft regardless of how finished it feels.

**Physics:** the **DOI**.  Same principle, different artefact: the contract
begins when the work is published to someone who can rely on it.

Both are the same rule -- *reliance* is what creates obligation.  What matters
is choosing the moment deliberately rather than sliding into it.

### The three tiers already in use

| Tier | Artefact | Status |
| --- | --- | --- |
| 1 | `notes/` | **Non-binding.**  Iterative, revise freely, no obligation. |
| 2 | `paper/sections/audit_table.tex` | **Binding, row by row**, with an explicit status per row. |
| 3 | **DOI** (Zenodo) | **Public, immutable, timestamped.** |

**The DOI is the *release*; the audit table is the *API declaration*.**  They do
different jobs and both are needed.  A paper may carry a DOI with most of its
rows marked STUB -- that is precisely how iterative work gets a clean commitment
point.  A STUB row says *published but not committed*; a PASS row is the
commitment.

---

## 3. Revision is renaming, not prohibition

"Unrevisable" is the wrong word and should not be used.  The rule is a
versioning rule:

| Change | Version | Announcement |
| --- | --- | --- |
| better proof, better implementation | **patch** | none needed |
| additional result, nothing withdrawn | **minor** | normal |
| a core commitment changes | **MAJOR** | **said out loud** |

Change a core commitment and you do not have a repaired theory, you have a
**different theory**.  It may well be better and someone should pursue it -- but
it is scored as new, and the old one was falsified.  Newtonian mechanics was not
wrong to be superseded; it was still falsified in its domain, and general
relativity is a different theory rather than Newton with a patch.

**So: someone else revising a core commitment and getting somewhere is a step
forward for them and for the field, *and* a clean falsification of this
version.**  Both are true and neither diminishes the other.  The programme that
gets superseded is usually the one that made superseding possible.

*(The physics vocabulary for this is Lakatos -- a protected hard core inside a
belt of auxiliary assumptions that absorb anomalies, with the programme counting
as **progressive** if its modifications predict new things and **degenerating**
if they only explain away old failures.  The versioning frame says the same
thing and is already in use in this program's handoffs.)*

---

## 4. The timing rule -- what actually prevents drift

The failure mode is **not** revising.  It is **deciding after a result which
part was implementation.**  Decided afterwards, every failure lands
conveniently in the belt and the framework survives everything.

**Paper IV is the live case.**  Scoping the failure to the hop set and leaving
A=1 standing was defensible -- probably right.  But it was decided *after* the
exclusion, so a reader has no way to distinguish "we always regarded the hop set
as implementation" from "we relocated the claim."  Declaring beforehand costs
nothing and removes the ambiguity entirely.

### Proposal: structural rows in the audit table

Audit rows currently record **claims**.  Add rows (or a scope column) recording
**structural commitments** -- what is API and what is implementation -- each with
a status and a date.  Then "the hop set is implementation" is a dated
declaration rather than a reading available in hindsight.

That makes Step 0 **mechanical** instead of a preamble, and mechanical is what
survives a change of session, a change of year, and a reader who was not there.

**Candidate API list, to be ruled on (this note does not decide it):**

| Commitment | Candidate status | Note |
| --- | --- | --- |
| A=1 conservation | API | Low risk, low content (§1) |
| Observational Univariance | API (methodological) | The criterion, not a claim |
| Substrate discreteness | API -- **at what scale?** | Unfalsifiable without a scale (Step 3) |
| $\delta p_\min > 0$ | **Depends on §6.1** | Facet-share reading makes it definitional |
| Bipartite structure | ? | Load-bearing in parity, chirality, phase clock |
| Hop set / coordination | implementation | Paper IV precedent -- but declare it |
| Simplex / face-lattice construction | implementation? | The successor space itself |
| Lorentz invariance: exact or emergent | **must be declared** | §3.10 |
| No unification-by-enlargement | **API — declared 2026-08-03** | §7.1; protects failure-by-exhaustion |
| No anthropic explanation of parameters | **API — declared 2026-08-03** | §7 item 1; the foreseeable move if $\delta p_\min$ returns *fitted* |
| Formalisation is not evidence | **methodological — declared 2026-08-03** | §7 item 4 |

---

## 5. Proof, and why formalisation enforces this

Mathematics is iterative, and the split is **statement versus proof**:

- the **theorem statement** is the API;
- the **proof** is the implementation.

A better proof is a patch nobody needs to be told about.  A changed statement is
a MAJOR bump everybody does.

**In Lean this stops being an analogy.**  The type is the contract, the term is
the implementation, and the compiler enforces the split: refactor a proof
arbitrarily and the statement is untouched; change the statement and every
downstream use breaks immediately and visibly.

That is a better argument for `src/dcl_formalism/` than rigour -- it is
**mechanically enforced commitment discipline**.

---

## 6. The steps

**Step 0 -- Declare the API.**  Rule on the candidate list in §4.  Without this,
none of the following steps mean anything, because any failure can be relocated.

**Step 1 -- Exhaust the architecture space.**  Run Tier 1 (T1--T3) on every row.
The space is *enumerated and finite*: fifteen faces, the sign-by-parity family,
and a handful of binary forks -- dozens of candidates, not infinities.

> **If nothing survives Tier 1 plus chirality, the approach fails by
> exhaustion.**

Elimination over a finite candidate set is a genuine falsification and almost no
physics programme can offer one.  It is this programme's strongest asset and
should be stated as the plan, not discovered as an outcome.

**Step 2 -- Disambiguate $\delta p_\min$** ([[successor_geometries_simplex_face_lattice]]
§6.1).  Facet-share reading makes it definitional and risk-free; probability-floor
reading makes it genuinely falsifiable.  **A prerequisite**: the framework's risk
cannot be stated until the quantity is identified.

**Step 3 -- Commit to a scale, or to a scale-free prediction.**  "Discrete at
some scale" retreats forever as bounds tighten.  §3.9's inversion (every
spacing-dependent effect becomes a bound) is good practice but must be paired
with **which bound would be fatal**.

**Step 4 -- Run the no-dial quantities.**  Dimensionless means untunable, so a
miss here cannot be calibrated away:

- the CHSH value and the shape of $E(\theta)$ -- cosine versus linear;
- sector-agreement ratios (T1, T13);
- factors of $2\pi$ (§3.9);
- the effective circle-constant flow (§3.8).

**Step 5 -- The four internal killers** (no new experiment required; run in
parallel with Step 1):

1. **Fermionic antisymmetry** -- asserted to live in the amplitude layer, not
   shown ([[platos_cave_invariant_observer]] OQ8).  Without it there is no
   electron.
2. **Non-signalling under the floor** -- if the floor must be a clamp, Gisin says
   it generically signals ([[bell_chsh_separability_on_lattice]] §10.5).
3. **Lorentz invariance from a regular causal order** -- if randomness is truly
   required, a regular substrate cannot get there (§3.10, OQ7).
4. **Tsirelson** -- overshoot into PR-box territory is a defect, not a triumph.

**Step 6 -- Publish the negative.**  Precedent and machinery exist: audit table,
claim map, re-version rather than quietly amend, superseded deposits left
retrievable with forward-pointing notices.

---

## 7. Practices declined, and the shrink test (added 2026-08-03)

Lessons taken from the string-theory programme.  Framing note first: string
theory produced real results -- AdS/CFT, black-hole entropy counting, a large
body of mathematics.  What follows concerns **specific practices that made
falsification hard**, not the worth of the programme.

**Declined, dated 2026-08-03:**

1. **The anthropic escape.**  No parameter will be explained by observer
   selection.  The exposure here is specific and foreseeable: if $\delta p_\min$
   returns *fitted*, the available move is "$d = 3$ because that is where
   observers are."  Declined **in advance**, before it is needed -- which is the
   only time such a declaration means anything (§4).
2. **Scale retreat.**  Extra dimensions were Planckian, then large, then warped,
   as bounds tightened.  Each move was defensible alone and corrosive in
   aggregate.  Step 3 already requires committing to a scale or a scale-free
   prediction; this records the precedent and the reason.
3. **Uniqueness or beauty as evidence.**  "The only consistent theory of X" is an
   elegance argument doing evidential work.  Elegance orders the search; it never
   enters the verdict ([[successor_geometries_simplex_face_lattice]] §6.2).
4. **Internal mathematical success substituting for external test.**  The
   uncomfortable one, because this programme is building both a Lean
   formalisation and a category-theoretic account.  Both are valuable; neither is
   evidence:

   > **Machine-checked coherence proves the framework is *consistent*, not
   > *correct*.**  A Lean-verified theorem about a wrong lattice is a correct
   > theorem about nothing.

   Formalisation must not become the deliverable.
5. **Multiplying structure to fit** -- branes, fluxes, compactifications added as
   required.  The local analogue is architecture-shopping, already named in §8 as
   the primary risk.

### 7.1 The finiteness commitment

The architecture space is **finite** -- dozens of candidates, enumerated in
[[successor_geometries_simplex_face_lattice]] §2 and §3.11.  Step 1's
failure-by-exhaustion rests entirely on that, and it is this programme's largest
structural advantage over any comparable framework: **string theory cannot fail
by exhaustion, because its landscape is astronomically large.**

Therefore:

> **Treat any enlargement of the architecture space as a cost, not a neutral
> move.**

The six-tick accounting cycle enlarges it.  A5 enlarges it.  Every new free
parameter enlarges it.  Each may be individually justified and still be a step
toward a landscape -- and the crossing has **no natural warning signal**, which
is why the rule has to be standing rather than applied case by case.

**The specific temptation, named in advance.**  If none of A0--A6 passes
cleanly, the attractive move will be *"they are all limits of something
larger."*  That is the M-theory move (Witten, Strings '95: the five superstring
theories as limits of one eleven-dimensional structure -- a real unification,
and one whose central object still has no complete formulation thirty years on).
It is also the step that **destroys finiteness**, because exhaustion stops being
available the moment the space becomes a space of *embeddings* rather than a
list.  Declined here, while it costs nothing and nothing is pressing.

### 7.2 The shrink test

For any proposed synthesis or unification:

> **Does the total candidate space get smaller?**

M-theory shrank five theories to one at the top *and* exploded the
compactification space beneath.  Both happened; the second dominated.  So the
criterion is not "is this a unification" but whether the **net** space contracts.
A unification that reduces at one level while multiplying at another is how a
landscape gets built -- one reasonable step at a time.

Apply the test **before** adopting, not after.

---

## 8. The honest risk assessment

The most likely failure mode is **not** a dramatic experimental miss.  It is
**unfalsifiability by architecture-shopping** -- a slow drift in which each
negative result relocates the claim rather than ending it.

Step 0 is the only defence, and it costs nothing except deciding in advance what
will not be given up quietly.

**And slowness is not a risk here.**  Every failure mode identified above is a
*rushing* failure -- claiming before committing, scoping after the fact,
publishing a number at an assumed scale.  The $\delta p_\min$ gate sitting open
while the dimensional-selection claim is held is this discipline already
working, and it cost nothing but patience.

---

## Open Questions

1. **What is actually in the API?**  §4's candidate list is a proposal to rule
   on, not a decision.  This is the author's call and it is Step 0.
2. **Do structural rows belong in `audit_table.tex`, or in a separate
   commitments file?**  Interacts with the open `dcl-data` question of whether
   the audit table remains authoritative (handoff
   `2026-07-30-dcl-data-shared-repo-proposal`, R3).
3. **How many MAJOR bumps before the programme should be called degenerating?**
   Not a number anyone can set honestly in advance -- but the *criterion* can be
   set: are the revisions predicting new things, or only accommodating old
   failures?

---

## Pointers

- **Test plan:** [[successor_geometries_simplex_face_lattice]] §7 (T1--T15) and
  §8 (results table).  Those score architectures; this scores the programme.
- **Related:** [[manifesto_two_transcendentals]] (the two-axis discipline this
  extends); [[platos_cave_invariant_observer]] §6 (God-eye discipline);
  [[bell_chsh_separability_on_lattice]] §11 (why dimensionless quantities are
  the unfittable ones).
- **Precedent:** Paper IV v1.0 -- a published negative, correctly scoped, and the
  case study for §4's timing rule.
- **External:** Lakatos (research programmes, progressive versus degenerating);
  semantic versioning, as already used in this program's handoff frontmatter.
