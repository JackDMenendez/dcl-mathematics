# The taxicab space as a tensor product

**Purpose.**  Answer the literature question: *does anything out there give a
category-theoretic definition of something like our taxicab space?*  Yes --
and under a name that carries more than the question asked for.  The taxicab
metric is not a metric one selects from a menu; in the category of metric
spaces it is the **tensor product**, and the supremum metric is the
**categorical product**.  That is the same two-way split as the
architecture-dependence recorded in
[[successor_geometries_simplex_face_lattice]] section 3.7, arrived at from
the other direction.

**Status.**  DRAFT (opened 2026-08-25).  Literature / positioning note.  No
audit row proposed; nothing here is a result of ours.  Companion to
[[choosing_a_category]], which asks *which* category to pick; this note
records what the picking looks like once metric structure is the thing being
enriched.  Three of the primary sources are already in this directory as
PDFs.

**Verification caveat.**  The claims below are attested in the abstracts,
slides and reference pages cited, and are standard in that literature.  They
have not been checked line by line against the full papers.  Before anything
here is cited in the paper, read the source.

---

## 1. The base definition, which we already hold

Lawvere's 1973 paper -- in this directory as
`1973-metric-spaces-generalized-logic-closed-categories.pdf` -- defines a
metric space as a category **enriched** over the extended non-negative reals
ordered by "greater than or equal", with **addition** as the tensor and zero
as the unit.  Points are objects, the distance from a point to another point
is the hom-object between them, and composition *is* the triangle inequality:
the distance from the first point to the second, plus the distance from the
second to the third, is greater than or equal to the distance from the first
to the third.

Two features matter here rather than in the general discussion of
[[choosing_a_category]] section 2.

**The tensor is addition.**  Additivity of distance along a composite is not
an extra axiom laid on top of an enrichment; it *is* the enrichment.  So a
metric that adds along coordinates is not an exotic choice within this
setting -- it is the setting.

**Asymmetry is the default.**  Lawvere spaces do not require that the
distance from one point to another equals the distance back, and do not
require that zero distance forces the two points to coincide.  The classical
axioms are revealed as extra conditions.  This is directly useful to us:
[[choosing_a_category]] section 6.1 needs a structure in which going back is
not the identity, because duration is path-dependent while displacement is
not.  An asymmetric enriched category is that structure, off the shelf.

## 2. The result that answers the question

In the category of metric spaces with short (distance-non-increasing) maps:

> The **tensor product** of two metric spaces is the cartesian product of the
> underlying sets carrying the **sum** metric -- the taxicab metric -- and
> this is what makes the category symmetric monoidal closed.  The
> **categorical product** of the same two spaces carries the **supremum**
> metric.

Attested at the nLab entry on metric spaces and in Simon Cho's *Categorical
semantics of metric spaces and continuous logic* (see section 8 for links),
where the point is put as: the tensor product of two of these spaces is the
cartesian product endowed with a taxicab-type metric, *rather than* the
supremum-type metric of the categorical product.

**Why this is more than a curiosity for us.**
[[successor_geometries_simplex_face_lattice]] section 3.7 records that the
norm we end up with is fixed by the shape of the generator set: a facet
architecture gives the taxicab norm in the skewed basis sending each standard
basis vector to the corresponding step vector, while the full four-axis set
gives the cube, hence the supremum norm.  Stated categorically that reads:

> **The facet architecture realises the tensor product; the full axis set
> realises the cartesian product.**

Those are the two universal constructions available on the same category --
not an analogy between our situation and theirs, but the same pair of
constructions.  It also sharpens the phrase "architecture-dependent" in that
section: the dependence is not on an arbitrary parameter, it is on *which
universal property the architecture instantiates*.  Whether the two axis sets
really are the tensor and the product of one-dimensional pieces, or merely
carry the same two norms, is the thing to check before this is asserted
anywhere binding.

## 3. The whole exponent family is a family of tensors

Two type-theory papers, both already in this directory, extend the picture
from the two endpoints to the whole family of exponents between one and
infinity.

- *Bunched Fuzz: Sensitivity for Vector Metrics* introduces a tensor for each
  exponent, each equipped with its own linear implication.
- *A Linear Type System for Lp-Metric Sensitivity Analysis* (FSCD 2024,
  "Plurimetric Fuzz") generalises past the earlier systems, which handled
  only the taxicab and supremum cases.

The structural claim is that the exponent is a **choice of tensor on one
category**, with taxicab and supremum as the two ends of that family.  This
is a sharper version of "architecture-dependent" than section 3.7 currently
states, and it is worth knowing that the intermediate exponents are
mathematically available even though nothing in our setting appears to want
one -- a finite hop set gives a polytope unit ball, and polytopes are the
taxicab and supremum ends, not the round middle.

## 4. Word metrics: enrichment over the natural numbers

Leinster's *The magnitude of a graph* treats a graph as a metric space under
shortest-path distance -- our word metric.  Because those distances are
integers, the enrichment restricts from the extended non-negative reals to
the natural numbers, and the resulting invariant (the magnitude) is a
**rational function in a formal variable**, with integer data, rather than a
real number.

This is the categorical form of the observation in
[[successor_geometries_simplex_face_lattice]] section 3.8 that substrate
geometry is arithmetic, not analysis.  The exactness of the site counts --
the number of sites at hop-distance *n* being four *n* squared plus two, and
the cumulative count being a cubic in *n* over three -- is not a happy
accident of this particular lattice.  It is what enrichment over the natural
numbers does.  Hepworth and Willerton's *Categorifying the magnitude of a
graph* takes the same object further, to a homology theory.

Practical bearing: if a numerical invariant of the lattice is ever wanted,
magnitude is the one this literature hands us, and it will come out as a
rational function rather than something needing numerical evaluation.

## 5. One theorem that singles out the taxicab case

Meckes, *Positive definite metric spaces*: all subsets of the exponent-*p*
spaces for *p* between one and two inclusive are positive definite -- a
generalisation of the classical property of negative type -- and this is
precisely the class on which magnitude is well-defined and well-behaved.  The
property fails for exponents above two.

Our skewed taxicab space is a linear image of the standard taxicab space, so
it inherits this.  The supremum case does not.  If the tensor-versus-product
choice of section 2 ever needs a tiebreaker that is not aesthetic, this is a
candidate -- with the standing caution from [[falsification_plan]] section 7
that a good-behaviour property is not evidence, and this must not be dressed
up as one.

## 6. What is *not* out there

No one names "the taxicab space" as a categorical object in its own right.
It appears in this literature only as the tensor product of enriched spaces,
which is why the search does not turn up a paper with our object on the
shelf under our description of it.

**Consequences for the novelty claim.**  The construction is not ours and
must not be presented as ours.  Consistent with
[[prior_work_dimension_from_adjacency]], the narrow thing that could be ours
is the *identification of a physical architecture choice with the
tensor-versus-product distinction* -- and even that needs the check flagged at
the end of section 2 before it is worth claiming.

## 7. Where this goes next

- The tensor-versus-product point belongs in [[choosing_a_category]] section
  6, which is about which morphisms get chosen; this is a worked case where
  the choice has a name and a literature.
- Section 3.7 of [[successor_geometries_simplex_face_lattice]] should
  eventually cite Lawvere and the nLab formulation rather than deriving the
  taxicab-versus-supremum split from the generator set alone.
- The asymmetry point of section 1 is a loose end for [[choosing_a_category]]
  section 6.1: that section builds the path-dependence of duration out of the
  traversal category failing to be a groupoid.  Whether an asymmetric
  enriched category is the *same* construction in different clothes, or an
  independent one, is unresolved here.
- Open question not settled by any of this: our accounting distances come
  from hop counts, and the enriched-category picture takes distance as given.
  Which of the three metric levels of section 3.7 -- sites, probabilities,
  amplitudes -- the enrichment is supposed to model is not something the
  literature decides for us.

## 8. The references

Primary, with local copies where we have them:

1. **Lawvere (1973)**, *Metric spaces, generalized logic, and closed
   categories*, Reprints in Theory and Applications of Categories.
   Local: `notes/1973-metric-spaces-generalized-logic-closed-categories.pdf`.
   <http://www.tac.mta.ca/tac/reprints/articles/1/tr1.pdf>
2. **Cho**, *Categorical semantics of metric spaces and continuous logic*,
   arXiv:1901.09077.  <https://arxiv.org/abs/1901.09077>
   Slides: <https://conferences.inf.ed.ac.uk/ct2019/slides/64.pdf>
3. **nLab**, entry on *metric space* -- the tensor-versus-product statement
   in its most compact form.  <https://ncatlab.org/nlab/show/metric+space>
4. **Bunched Fuzz: Sensitivity for Vector Metrics**, ESOP 2023.
   Local: `notes/Bunched Fuzz.pdf`.
   <https://link.springer.com/chapter/10.1007/978-3-031-30044-8_17>
5. **A Linear Type System for Lp-Metric Sensitivity Analysis**, FSCD 2024.
   Local: `notes/A Linear Type System for Lp-Metric Sensitivity Analysis.pdf`.
   <https://drops.dagstuhl.de/entities/document/10.4230/LIPIcs.FSCD.2024.12>
6. **Leinster**, *The magnitude of a graph*.
   <https://www.researchgate.net/publication/259804096_The_magnitude_of_a_graph>
7. **Hepworth and Willerton**, *Categorifying the magnitude of a graph*,
   arXiv:1505.04125.  <https://arxiv.org/pdf/1505.04125>
8. **Meckes**, *Positive definite metric spaces*, arXiv:1012.5863
   (Positivity, 2013).  <https://arxiv.org/abs/1012.5863>

Entry points, if the above are too dense to start with:

9. **Willerton**, *Metric-like spaces as enriched categories: three
   vignettes*, arXiv:2501.00416 -- a talk write-up covering the tight span,
   magnitude, and the Legendre-Fenchel transform.
   <https://arxiv.org/html/2501.00416>
10. **Leinster and Meckes**, *The magnitude of a metric space: from category
    theory to geometric measure theory*, arXiv:1606.00095.
    <https://arxiv.org/pdf/1606.00095>
