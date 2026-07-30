# Successor Geometries: the Simplex Face Lattice, and a Test Plan for Proposed Architectures

**Status:** DRAFT (research thread, 2026-07-29).
**Purpose:** Organise the successor-geometry candidates after Paper IV's
single-domain no-go, record the structural results that constrain them, and
provide a **reusable test plan** that any proposed architecture can be run
through, plus a **results table** to accumulate verdicts.
**Cited by:** nothing yet.  Intended to give `dcl-core` a concrete experiment
spec and to be the scoreboard successor proposals are scored on.
**Context:** Paper IV v1.0 (*Optical-Axis Anisotropy on the A=1 DCL:
Birefringence Cancellation and a Single-Domain No-Go*, Zenodo
`10.5281/zenodo.21435951`) excluded the single fixed trigonal domain in both
the gauge and matter sectors.  Papers I and II are re-versioned to v2.0.

---

## 1. Why this note exists

Paper IV's exclusion has a single structural cause: the hop set uses **three of
the four** cube body diagonals, and the omitted fourth is what creates the
optical axis.  The four-diagonal set sums to a multiple of the identity --
isotropic; dropping one leaves an order-unity anisotropy.

But "three of four" at $d = 3$ **is** the *d*-of-*(d+1)* construction -- the
diamond progression's defining move.  The excluded configuration and this
repo's central object are the same thing at different levels of generality, so
the successor question belongs here rather than in Paper IV.

**Anisotropy theorem (derived here, needs independent check).**  The $d+1$
directions of a regular simplex in $d$ dimensions form a tight frame: their
outer products sum to a multiple of the identity.  Omitting one leaves that
multiple minus a rank-one term along the omitted direction, giving an optical
axis along the omission with eigenvalue ratio

> **$(d+1) : 1$**, axis versus transverse.

At $d = 3$ this is $4 : 1$, reproducing Paper IV's $\varepsilon = \{1,4,4\}$
exactly (the four cube diagonals sum to $4I$; subtracting one rank-one leaves
eigenvalue $1$ along it and $4$ in the plane).  **Consequence:** the anisotropy
does not wash out with dimension -- it grows as $d+1$.  No dimension escapes
the no-go by this route.

---

## 2. The face lattice of the simplex

The $d+1$ axes are the vertices of a simplex, and the coexisting sub-structures
are its **faces**.  At $d = 3$ (axes $V_1 \ldots V_4$):

| Subset | Count | Dim | Coord | Object | User's term |
|---|---|---|---|---|---|
| 1 of 4 (vertex) | 4 | 1 | 2 | chain | "0 faces" |
| 2 of 4 (edge) | 6 | 2 | 4 | rhombus | "1 face" |
| 3 of 4 (facet) | 4 | 3 | 6 | the current construction | "6-sided diamond" |
| 4 of 4 (whole) | 1 | 3 | 8 | 8-faced diamond | "8-sided diamond" |

Counts are $\binom{4}{k}$, so **the enumeration is complete**: $4+6+4+1 = 15 =
2^4 - 1$ non-empty subsets.  There is no fifth family.

- **Coordination is $2k$** for a $k$-subset.  Theorem 1's $\mathrm{coord}(d) =
  2d$ is the *facet* case, $k = d$.
- **Everything is a sublattice of the top one.**  At $d=3$ the $k=4$ lattice is
  **body-centred cubic** (coordination 8 along all four diagonals, bipartite).
  All other families sit inside it.  "Different polytopes coexist on the
  lattice" means they coexist inside the one BCC lattice.
- In general $d$: faces are indexed by non-empty subsets of the $d+1$ axes,
  with $\binom{d+1}{k}$ of dimension $k$ and coordination $2k$.

---

## 3. Structural results

### 3.1 Isotropy exists only at $k = d+1$

Only the full axis set is isotropic ($4I$ at $d=3$).  Any proper subset carries
a rank-one defect, hence an axis.  So "we must use all four axes" is forced by
the second-moment tensor, not a preference.

### 3.2 Chirality exists only at $k = d$

An ordered set of vectors has a determinant sign **only when there are exactly
$d$ of them in $d$ dimensions**.  Chains and rhombi have no determinant; the
full $(d+1)$-set is over-complete and has no single one.

> **Chirality lives exactly at the facets.**  Nothing below $k = d$ can carry
> handedness; nothing at $k = d+1$ carries it from the direction set alone.

This is the tension the successor must resolve: **isotropy wants $k = d+1$,
chirality wants $k = d$.**

### 3.3 The facets are related by proper rotations -- so averaging preserves handedness

The rotation group of the cube is isomorphic to $S_4$ acting on the four body
diagonals, and **all 24 permutations are realised by proper rotations**.
Therefore:

- the four facets are carried into each other by orientation-**preserving**
  maps;
- handedness transports consistently across all four -- **no orientation
  obstruction**;
- the average that restores isotropy does **not** average away chirality.

Summing the four facet tensors: $4(4I) - \sum_i V_iV_i^T = 16I - 4I = 12I$ --
isotropic exactly.  Isotropy and chirality would conflict only if the domains
were related by reflections.  They are not.

### 3.4 The ordering is the chirality -- and it may not be colour

An *unordered* triad has no handedness -- the determinant's sign depends on the
listing order.  Chirality is therefore extra structure laid on the geometry, and
the framework has it in the form of an **ordered labelling** of the axes (see
`figures/lattice_fig.txt`, where the letters sit on the *bonds*, not the sites).

> The ordering is the orientation, and the orientation is the chirality.

That much is solid.  **What is now in doubt is the identification of that
ordering with colour** *(author, 2026-07-30)*: the RGB/CMB labels did not do
what was expected, and a three-element index **is not SU(3)**.  A three-element
set supplies at most permutations, or a basis on which a group could act; the
continuous unitary structure has to come from somewhere else.  If it does not,
the labels are an ordering and nothing more.

**Naming recommendation.**  Keeping RGB is worse than neutral -- it asserts a
QCD connection the structure may not support, and every use re-asserts it.  But
the labels cannot simply be dropped, because deleting the ordering deletes the
chirality.  So: **keep the structure, change the name.**

- **Use symmetric labels: an axis index (1--4) and a sign.**  That is the entire
  content -- four axes, two directions each, eight hops -- and it carries the
  ordering explicitly where chirality lives, with no false implication.
- **Avoid `s` and `d`.**  In any Standard-Model-adjacent context those are the
  strange and down quarks, so they read as **flavour** indices -- a more
  specific wrong implication than RGB's, which at least gestured at a triplet
  index.  "Dark" carries its own freight.
- **Do not name three-plus-one.**  Under A2 the fourth pair is *not* special:
  all four facets are related by proper rotations (§3.3), which is the whole
  reason averaging restores isotropy without losing handedness.  A
  triad-plus-extra naming asserts an asymmetry A2 exists to remove -- a fossil
  of A0, where the omitted axis genuinely *was* different.
- **Reserve *shadow* and *dark* for the omitted axis** in A0-style discussion,
  where the asymmetry is real and the omitted direction is exactly the one
  nothing traverses.  Apt there, misleading elsewhere.
- For the up/down split that the RGB-versus-CMB pairing was carrying, **parity**
  or **orientation** is the honest word.  "Colour" was never right for a sign.

**Consequences.**  Paper IV's open item asks whether *colour survives* a
successor geometry.  If the labels were never SU(3), the question is not whether
it survives but **whether it was ever there** -- a different and more awkward
question, better asked deliberately than discovered later.  §5's conjecture
depends on this identification (see there), and electron filter E3 is weakened
(see §4).  **This is not a local rename**: Paper II's SU(3) claim is published
and Papers I and II were re-versioned recently, so it is routed to the PM rather
than settled here (queued in [[dcl_core_handoff_queue]]).

### 3.5 Spinors want the phase

The facet index carries a representation of $S_4$.  Spinors require the
**double cover** -- for the cube's rotation group, the binary octahedral group
of order 48 -- and a double cover is implemented as a **sign ambiguity in the
phase** on transport around a loop.  A phase that selects the facet is
therefore the natural carrier of the spin-$\tfrac12$ sign, rather than extra
baggage beside the spinor.

### 3.6 Absolute anisotropy is unobservable; only sector differences are

**In a taxicab space, a polytope *is* a sphere.**  The unit sphere of a norm is
by definition the set of points at distance one, so for the word metric the
sphere is the polytope -- a skewed cross-polytope for a facet architecture, a
cube for the full axis set.  Calling that "anisotropic" imports a Euclidean
standard, and per [[platos_cave_invariant_observer]] §4.5 the observer has no
access to one.  To a taxicab observer the taxicab sphere is round.

A **universal** cone distortion is therefore a coordinate convention.  If light,
matter, rulers and clocks all deform together, no experiment detects it --
Poincaré's conventionality of geometry, appearing in Lorentz-violation
phenomenology as field redefinitions that remove certain coefficients outright,
leaving only *combinations* physical.  Measurement is comparison, and the ruler
is made of matter.

What is linearly invariant is the unit ball's **shape class**: a basis change
carries a skewed cross-polytope to the standard one, so *skew is gauge*, but no
linear map takes an octahedron to a cube or either to a sphere.  Even so, a
universal shape class is unobservable, because the ratios actually measured
cancel it.  Hence:

> **Only the relative light-cone structure between sectors is physical.**

**Why A0 still fails.**  Paper IV's exclusion is **differential**, not absolute:
the induced gauge sector is $O(1)$ at dimension four while the matter
anisotropy is dimension six, so *the sectors ride different light cones*.  Two
sectors disagreeing with each other cannot be normalised away -- whatever basis
makes one round makes the other skewed.  The mismatch is basis-independent.

**Consequence for the tests.**  T1 and T13 are therefore **sector-relative**,
not absolute.  This is a *weaker* criterion than the one this note originally
asserted, and it restates A2's job: not Euclidean isotropy, but **sector
universality** -- all sectors sharing one cone, whatever shape that cone has.

### 3.7 Three metric levels, not to be conflated

| Level | Structure | Where it appears |
|---|---|---|
| **Sites** (the index set) | word metric; unit ball is a polytope | adjacency, hop counting |
| **Probabilities** | $\ell^1$ -- sums to one | A=1 as a partition of $N$ units; $\delta p_\min$ |
| **Amplitudes** | $\ell^2$ -- the Hilbert norm | unitarity, interference, Tsirelson |

With only adjacency, distance is the **word metric**: fewest hops.  For a hop
set $S$ the unit ball of the asymptotic norm is $\mathrm{conv}(S)$, so the norm
is fixed by the *shape* of the generator set -- a facet architecture gives
$\ell^1$ in the skewed basis $e_i \mapsto V_i$ (genuine taxicab, and **the skew
is the anisotropy**), while the full four-axis set gives the cube, hence
$\ell^\infty$.  Which norm you get is architecture-dependent.

Three cautions:

- $\ell^1$ is **not** a Hilbert norm -- it fails the parallelogram law, so no
  inner product induces it.  The Hilbert space is $\ell^2(\text{sites})$: its
  *index set* carries the word metric, its *vectors* carry the $\ell^2$ norm.
  Neither reduces to the other.  This is the same ladder as
  [[platos_cave_invariant_observer]] §5.1, with the Born rule as the
  $\ell^2 \to \ell^1$ step.
- **Counting never becomes Euclidean.**  For a fixed finite hop set the
  large-scale limit of the word metric is a norm whose unit ball is that
  polytope.  Euclidean geometry does not emerge from hop-counting at any scale.
- **Physical distance is an $\ell^2$ notion.**  Long-wavelength propagation is
  governed by the dispersion relation, controlled at leading order by the
  second-moment tensor -- which is what T1 measures.  So isotropy (or, per §3.6,
  sector agreement) is a statement about the amplitude dynamics, not about the
  combinatorics.

Calibration is a scaling, and scaling does not change a unit ball's shape -- so
calibration cannot round the ball.  Combined with §3.6: the shape is not
something units can change *and* not something an observer can detect, and the
residual physical content is exactly the sector difference.

### 3.8 The circle constant, and what it illustrates

**Do not publish this section's headline.  See the caution at the end.**

In taxicab geometry the unit circle is the diamond $|x| + |y| = 1$; each side
runs from $(1,0)$ to $(0,1)$ with taxicab length 2, so the circumference is 8
and the diameter 2:

> $\pi_{\text{taxicab}} = 4$, exactly -- a rational integer, with no
> transcendence anywhere.

**On this lattice the counts are exact.**  The current architecture is
combinatorially the integer lattice in three dimensions with six neighbours, so

- sites at hop-distance $n$: $\;4n^2 + 2$
- sites within hop-distance $n$: $\;(4n^3 + 6n^2 + 8n + 3)/3$

($n=1$ gives 6 and 7; $n=2$ gives 18 and 25.)  Closed form, integer-valued, and
the discrete counterparts of $4\pi r^2$ and $\tfrac43\pi r^3$ -- with a
coefficient of 4 where Euclid has $4\pi$.  Substrate geometry is **arithmetic,
not analysis**, which makes lattice-point counting, quadratic forms and theta
series of lattices available as tools (relevant to the $D_d$ / $A_d$ families of
[[prior_work_dimension_from_adjacency]]).

**Skew does not change it.**  A basis change transports metric and ball
together, so the facet architectures give 4 as well; so does $\ell^\infty$.  The
circle constant is therefore the *same across the whole results table* -- a
shared structural fact, not a discriminator, and not a test.

**Euclid minimises it.**  The circle constant $\pi_p$ of the $\ell^p$ norm
satisfies $\pi_1 = \pi_\infty = 4$ and is **minimised at $p = 2$**, where it
equals $\pi$.  That is a second, independent characterisation of the Hilbert
exponent, alongside the one already load-bearing here (A=1 presupposes
normalisation, hence an inner product).  Two unrelated routes distinguishing the
same exponent is worth noting, though neither is yet a derivation.

**Which value is physical?  Observational Univariance decides.**  The value 4 is
a property of the hop metric -- the unit ball's shape, shared by every sector.
By §3.6 a structure shared by everything is undetectable from inside; by
Observational Univariance it is not univariant.  So it sits in what
[[manifesto_two_transcendentals]] calls the **gauge fibre**: real in the
God's-eye representation, absent from the univariant quotient.  The value
$3.14159\ldots$ is what a wave-based measurement returns, because physical
distance is read off dispersion -- the $\ell^2$ level (§3.7), which is all an
internal observer has.

> The tidy integer is the part you cannot measure; the transcendental value is
> the observable one.

This is an unusually concrete instance of the manifesto's claim that the
God's-eye view carries more than the observables: the surplus includes the
entire shape of the unit ball, and with it the circle constant.

**A discovery instrument.**  If the substrate has no $\pi$, then $\pi$ is
*produced* by the long-wavelength limit.  So compute the **effective circle
constant as a function of wavelength** and watch it flow from 4 at hop scale to
$3.14159\ldots$ at long wavelength.  The rate of that flow is set by the leading
anisotropic term -- i.e. this is **T13 made visual**.  The phenomenon is
standard (restoration of rotational symmetry in the continuum limit is routine
lattice-field-theory practice), so the measurement technique already exists.

**Two cautions.**

- *Pin the definition before quoting a number.*  Measured as **arc length**
  around the boundary the constant is 4; measured as a **count of sites** at
  radius $n$ it is the 4 in $4n^2+2$ -- related, arrived at differently, and
  other reasonable definitions give other constants.  Since this framework
  insists every observation is a count, the site-count version is the more
  native one and should be the one that gets a name.
- *Naming collision.*  [[manifesto_two_transcendentals]] uses "transcendental"
  in the **Kantian** sense (principles above any particular claim: A=1 and
  Observational Univariance).  $\pi$ is transcendental in the **number-theoretic**
  sense.  Same word, unrelated meanings, both notes in `notes/`.  Any writing
  that touches both owes a sentence keeping them apart.

**Publication caution.**  "$\pi = 4$ on the lattice" is the most quotable line
in this thread and must not leave the repo.  To a lattice practitioner the
observation is unremarkable -- taxicab $\pi = 4$ is a textbook curiosity and
hypercubic artefacts vanishing in the continuum limit is routine -- while to
everyone else it reads as crankery.  The framework-specific content is narrow
and much less quotable: the circle constant sits in the gauge fibre.  Treat this
like the §5 conjecture.

### 3.9 Calibration discipline: do not fix the spacing to the Planck length

**Calibration is an identification**, and by
[[platos_cave_invariant_observer]] §4.10 an identification is a quotient that
discards information.  Saying "one hop equals one Planck length" asserts that
*this* two (hops) is *that* two (lengths).  The question is always what was
discarded and whether it mattered.

Here what is smuggled is larger than a unit.  **The Planck length has never been
measured** -- it is a dimensional combination of $\hbar$, $G$ and $c$, not an
observed scale.  Fixing the lattice spacing to it asserts that the
quantum-gravity scale *is* the discreteness scale: a substantive physical
hypothesis in the costume of a unit convention.  Nothing in this framework
requires it, and condensed matter is full of continuum descriptions emerging
many orders above the lattice constant.

**The operational test is to vary the spacing and see what moves.**  By
[[bell_chsh_separability_on_lattice]] §11 a dimensionless prediction *cannot*
depend on calibration, so anything that shifts is by construction not
calibration-invariant.

**And there is a sharp asymmetry worth keeping explicit:**

- **Dimension-four effects are spacing-independent.**  They cannot be hidden by
  shrinking the lattice -- which is exactly why Paper IV's exclusion was
  decisive: the induced photon's common-mode anisotropy is order-unity and
  dimension-four, so no choice of spacing rescues it.
- **Higher-dimension effects scale with powers of the spacing**, and can be
  pushed under any bound by making it small enough.

So the "matter is safe because it is dimension-six" reasoning was only true
**given** a Planckian spacing: the safety was a calibration choice, not a
result.  (It was overturned for a different reason -- the observable kinetic
structure is order-unity, hence spacing-independent -- but the lesson lands
twice.)  A live instance remains in the published record: the $\omega = 0$
amplitude filter accumulates **linearly in the spacing**, and its e-folding
times are quoted at a Planckian value.

**One reassurance:** $\delta p_\min$ is dimensionless, so the
dimensional-selection relation does not inherit any of this.  Whatever else is
in doubt there, it is not calibration.

**The constructive move -- invert it.**  Do not calibrate to the Planck length;
**let experiment calibrate the spacing.**  Every spacing-dependent effect then
becomes a bound: *this effect is not observed at level X, therefore the spacing
is below Y.*  That converts an assumption into an empirical handle, and is
strictly stronger than quoting a number at a guessed scale.  It also fits the
programme's falsifiability posture better: "here is what the data says about the
spacing" beats "here is what happens if the spacing is Planckian."

**Which circle constant is inside your constants?**  The reduced Planck
constant is $h/2\pi$, and that $2\pi$ is **not physics** -- it is the conversion
between *counting turns* and *measuring arc*: energy is $h$ times frequency in
**cycles**, or $\hbar$ times angular frequency in **radians**.  It is the
circumference of the unit circle, present only because radians were chosen.  By
§3.8 it therefore has no lattice counterpart: on a substrate where phase
advances in discrete steps, the analogue of one full turn is **the phase clock's
period in ticks -- an integer** (see [[phase_clock_and_bipartite_parity]]).

Two consequences:

- **A wrong $2\pi$ cannot be hidden.**  Factors of $2\pi$ are dimensionless,
  hence calibration-invariant ([[bell_chsh_separability_on_lattice]] §11), so
  they cannot be absorbed into the spacing.  A mis-set circle constant shows up
  as a genuine numerical discrepancy against experiment.  That puts $2\pi$
  factors in the small set of **no-dial quantities** -- a real test rather than
  bookkeeping, and one of the few things this framework can get *observably*
  wrong.
- **"The Planck length" is itself convention-dependent.**  The *reduced* Planck
  length, built from the reduced Planck mass with its $8\pi$, is
  $\sqrt{8\pi} \approx 5$ times the ordinary one.  So "calibrate to the Planck
  length" is under-specified by a factor of five before anything else happens --
  and the ambiguity is a factor involving $\pi$, arriving silently inside a
  constant.  This is the section's argument by example rather than by principle.

**Discipline:** for every constant used in matching, record which
circle-constant convention it carries.  Folded into T14.

Operationalised as **T14** below.

### 3.10 The momentum ellipsoid: what it can and cannot give (added 2026-07-30)

*Thread: a unit-measure probability shape that deforms into an ellipsoid along
its momentum direction, keeping surface measure one.*

**What comes free.**  A normalised density under a boost really does contract
along the direction of motion while total measure stays one and the density
rises correspondingly.  Length contraction with probability conservation is
exactly that picture, so the intuition is consistent with special relativity as
far as it goes.

**Three things stand between it and special relativity.**

1. **The group is the content.**  Any deformation rule produces *some*
   momentum-dependent shape.  Special relativity requires the eccentricity be
   exactly $\gamma$ and -- harder -- that boosts **compose**: velocity addition,
   and the Thomas--Wigner rotation obtained from composing non-collinear boosts.
   A shape rule that does not close into $SO(1,3)$ is an anisotropy, not
   relativity.  Getting the contraction does not imply getting the group.
2. **A measure cannot give a signature.**  A probability measure is
   **positive-definite**; the Minkowski form is **indefinite**.  One cannot
   obtain an indefinite quadratic form by normalising a positive one, and the
   light cone *is* the signature.  So the cone must come from elsewhere -- and
   there is an obvious elsewhere: the **causal structure**.  That is the
   "causal" in *discrete causal lattice*, and a causal order is precisely where
   a cone lives naturally.  **Look for relativistic structure in the adjacency
   ordering, not in the normalisation.**
3. **Regular lattices are in tension with exact Lorentz invariance.**  A regular
   lattice picks out a frame -- its own -- and boosts do not map it to itself.
   The known route to genuine Lorentz invariance from discreteness is to make
   the discreteness **random** rather than regular: causal-set Poisson
   sprinkling is manifestly Lorentz invariant because a Poisson process has no
   preferred direction.  This substrate is regular, so *exact* relativity is off
   the table by that argument.  What remains available is **emergent,
   approximate** invariance with violations suppressed at higher order.

**And there is already data.**  Paper IV excluded A0 on precisely
Lorentz-violation grounds: a marginal CPT-even $k_F$ coefficient at order unity
and dimension four, killed by cavity and Michelson--Morley isotropy bounds.  For
the old architecture, "the framework reproduces special relativity" is not an
open question but a **published negative**.

> **T1 is the special-relativity test.**  Sector agreement means all sectors
> share one light cone, which is effective Lorentz invariance at leading order.
> **T13 is the same question at the next order.**

No new line of work is needed here -- only running the test already written, and
recognising the standard it is judged against.  A2's four-facet averaging is
plausibly what buys it, since averaging over orientations is a way of not
picking a direction; but it restores **cubic** symmetry, not full rotational
symmetry, so it delivers isotropy at order $k^2$ with residuals beyond.
Approximate, not exact.

**State which claim is being made.**  *Exact* Lorentz symmetry in the substrate
is very hard for a regular lattice and would require something standing in for
the randomness.  *Emergent* Lorentz invariance with suppressed violations is
standard, achievable and testable, and is what T1/T13/T14 measure.  Both are
respectable; conflating them is how the defensible version gets dismissed
alongside the overreach.

**Two known derivation routes, and where they say to dig.**  If the goal is a
*new derivation* of relativity, the existing ones locate the work.

*Ignatowsky (1911); Frank and Rothe (1911) -- relativity without the light
postulate.*  Assume only the relativity principle, homogeneity of space and
time, isotropy, and that the transformations form a **group**: Lorentz follows,
with the invariant speed appearing as a free parameter that experiment fixes
(infinite recovers Galileo).  A scheme supplying those four therefore
*re-derives* rather than derives -- which identifies exactly what must be earned
here.  Homogeneity is free on a lattice, isotropy is T1, the relativity
principle is a stance; **group closure** is the one not given.  And it is cheap
to test:

> **The closure test.**  Compose two deformations of the family and ask whether
> the result is another member of the same family.  If it **closes**, Ignatowsky
> indicates Lorentz and the invariant speed drops out.  If it does **not**, the
> scheme is an anisotropy model.  An afternoon's algebra, and it decides whether
> the ellipsoid route is alive at all.

*Zeeman (1964); Hawking--King--McCarthy and Malament -- causal order alone gives
the group.*  Any bijection of Minkowski space preserving the causal order is a
Lorentz transformation composed with a translation and a dilation; causal
structure determines the metric up to a conformal factor, and the conformal
factor is supplied by **volume**.  That is the causal-set slogan:

> **Order + number = geometry.**

This framework has **both, in exact form**: adjacency supplies the order,
integer counting supplies the number (§3.7;
[[platos_cave_invariant_observer]] §5.1).  That is the derivation shape the
substrate is actually built for, and it is rigorous rather than aspirational.
**The ellipsoid is a picture of the result; the causal order is the source.**

**The actual open problem.**  Causal sets obtain Lorentz invariance because the
sprinkling is **random** -- a Poisson process has no preferred direction.  A
regular lattice's causal order picks a frame.  So "order plus number equals
geometry" runs cleanly for a sprinkling, and what a *regular* substrate must
confront is:

> **Can a regular causal order, plus exact counting, yield Lorentz invariance
> without randomness?**

If A2's four-facet averaging does what sprinkling does, that is the mechanism.
If it does not, the obstruction is now stated precisely enough to work on.
Either way this is a sharper question than the ellipsoid, and it is the
genuinely novel one available.

**A different reading of the same ellipsoid.**  Deformation aside, an
ellipsoid encoding momentum is a **second velocity moment** -- the stress
tensor.  Isotropic for a Maxwellian in local equilibrium; ellipsoidal under flow
or shear.  That object is the closure variable on the road from kinetic theory
to fluids, and it has a named home in anisotropic-Gaussian closures (ES-BGK
being the standard example).  Three notes on it:

- **T1's machinery may transfer directly** -- the propagation tensor and the
  stress tensor are both symmetric positive-definite second moments.
- **The §3.6 guard reproduces known physics**: an absolute, universal isotropic
  stress carries no observable content; only differences are physical.  That is
  exactly true in continuum mechanics, where motion comes from gradients and the
  deviatoric part.  A guard derived for this framework recovering a standard
  fact unprompted is worth banking.
- **This is Hilbert-sixth territory** ([[discrete_to_continuum_limits]]), but the
  hard part there is *analysis* -- rigorous limits, propagation of chaos, and
  above all long times -- not the closure ansatz.  The field moved substantially
  and recently; check the current state before writing anything.  The defensible
  claim available today is the small one: **the momentum ellipsoid is a
  second-moment closure object, and the isotropy machinery applies to it.**
  Hilbert-sixth stays a STUB row.

---

## 4. What an electron must be

Rather than sweeping the architecture space blind, use the electron as the
filter.  Four requirements, each of which kills part of the space:

| # | Requirement | Consequence |
|---|---|---|
| E1 | Propagates freely | its configuration must be **isotropic** -- so not a single facet (§3.1) |
| E2 | Is chiral (the R/L spinor field) | needs handedness -- so **facets must be in its makeup** (§3.2) |
| E3 | Is colourless | cannot be *one* triad, *if* the triad carries a colour index at all -- **weakened 2026-07-30**, see §3.4 |
| E4 | Is spin-$\tfrac12$ | needs the double cover -- the $Z_2$ sign in the phase (§3.5) |

**What they select:** the electron is the **symmetric, orientation-carrying
combination over all four facets** -- chiral because built from facets,
colourless and freely propagating because symmetric, spin-$\tfrac12$ through
the phase's double cover.

This is the same architecture the isotropy argument forces (coherent
superposition over the four triads, not an incoherent domain choice).  Two
independent constraints selecting one scheme is the best evidence available at
this stage.

*(Robustness note, 2026-07-30: E3 is weakened by the colour doubt of §3.4, but
the conclusion is not.  **E1 and E2 alone already select it** -- isotropy
forbids a single facet, chirality requires facets in the makeup, and the only
thing satisfying both is the symmetric combination.  Losing E3 costs an
argument, not the answer.)*

**Corollary:** a 1-face or 2-face has no determinant, so **it cannot be an
electron.**  Whatever the lower faces are, they are chirality-free.  Whether
they are physical at all, or merely sub-structures of the facets, is open.

---

## 5. Conjecture: confinement as the no-go

*Speculative.  Recorded because it follows from pieces already established; not
to be stated publicly before the check below.*

A single triad is anisotropic at order unity and therefore **cannot propagate
freely** -- that is exactly Paper IV's exclusion.  The symmetric combination is
isotropic and can.  Set that beside colour: a single triad *is* a colour state;
the symmetric combination is the singlet.

> **Conjecture.**  Coloured $=$ single triad $=$ anisotropic $=$ cannot
> propagate freely.  Colourless $=$ singlet $=$ isotropic $=$ free.
> **Confinement is the no-go**, read as a selection rule on what may propagate.

If it holds, Paper IV's negative result becomes a mechanism rather than only an
obstacle.  **What would test it:** whether the isotropy requirement, applied as
an admissibility condition, reproduces singlet-only free states for the right
group-theoretic reason rather than by a coincidence of counting.

**Weakened 2026-07-30.**  The conjecture's hook is that a single triad *is* a
colour state and the symmetric combination is the singlet.  §3.4 now records
that the colour identification is in doubt -- a three-element index is not
SU(3).  If the triad was never colour, the hook is gone and the conjecture drops
from suggestive to barely motivated.  It was already embargoed pending the check
above; **this is a second, independent reason not to move it.**

---

## 6. The alphabet fixes the mesh

If the phase selects uniformly over an alphabet of size $M$, then
$\delta p_\min = 1/M$.  So:

- four facets $\Rightarrow$ $\delta p_\min = 1/4$;
- all fifteen faces $\Rightarrow$ $1/15$;
- four facets plus the whole $\Rightarrow$ $1/5$.

> $\delta p_\min = 1/4$ **is** the claim that the selection alphabet is exactly
> the four facets.

Two consequences.  First, a "combination of possibilities" that widens the
alphabet **breaks the quarter** unless the lower faces carry different weights
or belong to a separate selection.  Second, and more seriously: if the quarter
is geometric in this way then
$1/\delta p_\min - 1 = (d+1) - 1 = d$ **identically**, which is true for every
$d$ and therefore selects nothing.  That is the *fitted* branch of open handoff
`2026-07-16-dpmin-derived-or-fitted-gate`, arriving from the geometry side.
The geometry programme is unaffected; only the dimensional-selection novelty
claim is.

### 6.1 Three readings of the quarter (added 2026-07-30)

Before asking whether $\delta p_\min = 1/4$ is *derived or fitted*, it is worth
asking **what the number means**, because at least three different physical
claims currently wear it:

| Reading | The quarter is | Consequence for $d_{\max} = 1/\delta p_\min - 1$ |
|---|---|---|
| **Facet share** | one of the $d+1$ facets (§6) | $= (d+1) - 1 = d$ **identically** -- a tautology, true for every $d$, selecting nothing |
| **Quarter turn** *(speculative)* | one tick of a phase clock of period 4 (§3.9, [[phase_clock_and_bipartite_parity]]) | the quantity is about **phase**, not space; any link to dimension would have to be established, not assumed |
| **Probability floor** | the minimum resolvable probability | the occupancy constraint bites -- with four indivisible units, at most **four sites can be occupied at once**, which looks far too coarse for a wavefunction (see below) |

**Why this matters for the gate.**  Two of the three readings make the
derive-or-fit question *moot*: under "facet share" the relation is definitional
regardless of how the quarter was arrived at, and under "quarter turn" it is not
a statement about dimension at all.  Only the third reading leaves
dimensional selection standing as an independent claim -- and that reading
carries its own difficulty.

**The occupancy arithmetic.**  If A=1 normalises a session and the quarter is a
probability quantum on that normalisation, there are four indivisible units, so
a session occupies **at most four sites**.  Six equal nonzero shares over the
six nearest neighbours would need at least six units, so uniform occupancy of
the neighbour shell is not improbable but *arithmetically unavailable*, and
single-tick propagation cannot be isotropic -- isotropy must be recovered by
interference or averaging (bearing directly on **T9**).  Four sites is a
tetrahedron, not a wavefunction, which suggests either that the practical
quantum is very much smaller than $1/4$, or that the quarter is **not** a
spatial-occupancy quantum.  This is a question the code can answer immediately
and is queued for `dcl-core`.

**A note in A2's favour.**  Four units spread over six neighbours cannot be
uniform; four units over **four facets** is exactly uniform, one each, with no
remainder.  So the arithmetic of the quantum independently prefers the facet
decomposition -- a third route to A2, alongside isotropy (§3.3) and the electron
filters (§4).

### 6.2 Normalisation, and a guard against unit-sphere numerology (added 2026-07-30)

**A=1 is the unit-*measure* convention.**  It declares total probability to be
one, which is the sphere whose surface has measure one -- not the sphere whose
radius is one.  This is not an alternative the programme might adopt; it is the
convention the programme is already in.

**One cannot remove $\pi$, only relocate it.**  Fix radius $=1$ and $\pi$
appears in the area, $4\pi$.  Fix measure $=1$ and $\sqrt\pi$ appears in the
radius, $1/(2\sqrt\pi) \approx 0.282$.  Normalisation is precisely a decision
about which quantity gets to be clean and which absorbs the constant -- the same
shape as every other choice-of-sameness in these notes, with a cost worth
knowing one is paying.

*(The dimensional caveat of §3.9 still applies: setting the measure to one
produces **no length**.  The number $0.282$ is expressed in whatever units the
picture was drawn in, not a physical scale.)*

**The guard.**  Unit-**radius** quantities have famously strong
dimension-dependence.  The volume of the unit ball runs
$2,\ 3.14,\ 4.19,\ 4.93,\ \mathbf{5.26},\ 5.17,\ 4.72,\ \ldots$ -- **peaking at
$d = 5$** and then falling to zero.  The surface area of the unit sphere peaks
at **$d = 7$**.  Both are real and striking, and they are very likely the source
of the folklore that "five or six dimensions is special."

**They are also artefacts of the convention.**  Those peaks exist *only because
the radius was fixed to one*.  Renormalise -- fix the measure instead, as A=1
does -- and the special dimension moves or disappears.  By Observational
Univariance ([[manifesto_two_transcendentals]]; [[platos_cave_invariant_observer]]
§4.9), a dimension picked out by which quantity one declared to be unity is
**not physical**.

> Any dimension-selection argument built on unit-sphere volumes or areas fails
> the univariance test.  The first question is always: *unit in what?*

This guard is worth stating because the programme already has a
dimensional-selection claim in play (§6, §6.1) and is therefore well positioned
to make exactly this mistake.  It is seductive numerology, and it would
discredit the surrounding work.

**The lead that survives.**  If a dimension-dependent effect intrinsic to the
unit-*measure* sphere is wanted, **concentration of measure** is the
mathematically respectable candidate: on a sphere with normalised measure, as
dimension grows almost all the measure concentrates near any equator, with
exponentially sharp tails.  This is a statement about the probability measure
itself, so it is invariant under renormalisation and passes the univariance test
the volume peaks fail.

Its physical content, if any: in high dimension a normalised distribution on the
sphere becomes degenerate -- typical configurations grow indistinguishable.
Should the programme ever want a mechanism disfavouring large $d$ that is *not*
the counting argument, this is the one to examine.  **Solid as mathematics,
entirely unexamined as physics.**

---

## 7. Test plan

Run a proposed architecture through these in order.  **Tiers are fail-fast** --
do not spend a Bell computation on something that fails Tier 1.

Verdicts use the repo legend: **PASS / PART / STUB / FAIL** (STUB = not yet
run).

### Tier 1 -- killers (cheap, run first)

| ID | Test | Compute | Pass criterion | Meaning of failure |
|---|---|---|---|---|
| **T1** | **Sector agreement** of the propagating cone *(corrected 2026-07-30 -- see §3.6)* | second-moment tensor $\Sigma_s$ **per sector** $s$ (induced gauge, matter, any other propagating sector); then the differences $\Sigma_s - \Sigma_{s'}$ | all sectors agree; the **difference** is below the $\sim10^{-18}$ cavity / Michelson-Morley bound.  $\Sigma \propto I$ is *not* required | sectors ride different light cones -- Paper IV's exclusion recurs |
| **T2** | Chirality carrier present | does the architecture contain $k=d$ facets? | yes | no handedness $\Rightarrow$ no R/L $\Rightarrow$ no electron (§3.2, E2) |
| **T3** | A=1 preserved | does the selection emit a partition of $N$ units summing to one, with no zero parts? | yes | normalisation broken; see [[platos_cave_invariant_observer]] §5.1 |

### Tier 2 -- structure

| ID | Test | Compute | Pass criterion | Meaning of failure |
|---|---|---|---|---|
| **T4** | Orientation consistency | are the maps relating members of the selection alphabet orientation-preserving? | all proper | handedness not globally definable; chirality lost in the average (§3.3) |
| **T5** | Double cover | does the phase admit a consistent $Z_2$ lift, giving $-1$ on a $2\pi$ loop? | yes | no spin-$\tfrac12$ (E4) |
| **T6** | Singlet structure | does an isotropic symmetric combination exist, and are non-singlets anisotropic? | yes to both | the confinement conjecture (§5) fails; colourless free states not distinguished |
| **T7** | Induced mesh | $\delta p_\min$ from the alphabet size and weights | matches the value used elsewhere in the framework; derived-or-fitted status **declared** | silent mismatch with §6 and the open gate |
| **T8** | State-space accounting | component count (facets $\times$ chiralities $\times$ anything else) | matches known particle content, or the excess is quotiented as gauge | unexplained extra states |

### Tier 3 -- dynamics and physics

| ID | Test | Compute | Pass criterion | Meaning of failure |
|---|---|---|---|---|
| **T9** | Coherence requirement | residual anisotropy under **incoherent** averaging as a function of domain size; compare to $10^{-18}$ | either incoherent suffices, or coherent superposition is shown to be **required** | ambiguity about the physical mechanism remains unresolved |
| **T10** | Gisin safety | is the floor implemented as **admissibility** (idempotent selection) or as a **clamp** (nonlinear map)? | admissibility | nonlinear dynamics generically signals; see [[bell_chsh_separability_on_lattice]] §10.5-10.6 |
| **T11** | Bell | does the empirical model lack a global section, and does $S$ cap at $2\sqrt2$? | contextual **and** capped | under 2 $\Rightarrow$ Bell-local; over $2\sqrt2$ $\Rightarrow$ PR-box, unphysical ([[bell_chsh_separability_on_lattice]] §10.3-10.4) |
| **T12** | Calibration functoriality | does calibration commute with dynamics? | yes | the interface argument of [[bell_chsh_separability_on_lattice]] §11.6 fails |
| **T13** | Higher-order sector comparison *(added 2026-07-30)* | the leading anisotropic term **beyond** the quadratic (order $k^4$), again **per sector and compared** | sector difference at $O(k^4)$ below its (much weaker) bound | a differential cone shape survives beyond leading order.  Expected to pass -- the residual is suppressed, unlike Paper IV's $O(1)$ dimension-4 failure.  **Scored in the T1 cell** of the results table.  Visualisable as the effective-circle-constant flow (§3.8) |
| **T14** | **Calibration-dependence audit** *(added 2026-07-30, §3.9)* | for **every reported quantity**: is it dimensionless (hence spacing-independent, [[bell_chsh_separability_on_lattice]] §11), or spacing-dependent — and with what scaling exponent? | every spacing-dependent quantity is reported as a **scaling law plus a bound**, never as a number at an assumed spacing | a result silently contingent on a calibration *choice*.  This is a **standing audit applied to every result**, not a one-off per architecture — so it has no column in the results table; it gates what may be written down at all.  Would have caught the "matter is safe because dimension-six" argument before it was made |

**T9 first within Tier 3.** It is a single number and it collapses an entire
axis of the architecture space: if incoherent averaging cannot reach
$10^{-18}$, the coherent reading is *forced* rather than merely preferred.

---

## 8. Results table

Rows are architectures; columns are tests.  Fill in as results land.

**Legend:** PASS / PART / STUB (not yet run) / FAIL.

| Architecture | T1 iso | T2 chir | T3 A=1 | T4 orient | T5 cover | T6 singlet | T7 mesh | T8 states | T9 coher | T10 Gisin | T11 Bell | T12 calib |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **A0** single facet *(Paper IV, negative control)* | **FAIL** -- differential: gauge $O(1)$ dim-4 vs matter dim-6 | PASS | PASS | PASS (trivial) | STUB | FAIL | PASS $1/4$ | STUB | n/a | STUB | STUB | STUB |
| **A1** four facets, **incoherent** | PART -- statistical suppression only; sector agreement unproven | PASS | STUB | PASS | STUB | STUB | PASS $1/4$ | STUB | **decisive** | STUB | STUB | STUB |
| **A2** four facets, **coherent** *(favoured)* | PART -- $12I$ per sector, but **sector agreement not yet computed** | PASS | STUB | PASS (§3.3) | STUB | STUB | PASS $1/4$ | STUB | STUB | STUB | STUB | STUB |
| **A3** full $k=4$ (BCC, coord 8) | STUB -- cube metric is **not** a failure (§3.6); sectors uncompared | **FAIL** (§3.2) | STUB | n/a | STUB | STUB | STUB | STUB | n/a | STUB | STUB | STUB |
| **A4** all fifteen faces | STUB | PASS | STUB | STUB | STUB | STUB | **$1/15$** -- breaks the quarter (§6) | STUB | STUB | STUB | STUB | STUB |

Reading of the table as it stands: **A0** is excluded (published).  **A3** loses
handedness.  **A2** is the only row with no FAIL, and it is the row the electron
filters of §4 independently select.  **A1** versus **A2** is decided by T9 alone.

*Note the T1 column was re-scored on 2026-07-30 under the corrected
sector-relative criterion (§3.6).  Two cells moved from PASS to PART: computing
$12I$ or $4I$ for a single sector establishes that sector's cone, **not** that
the sectors agree, and agreement is what the test now asks.  A3's cube metric
was demoted from a failure to STUB -- a non-Euclidean cone is not a defect if
every sector shares it.*

**Working position (2026-07-29): A2 is adopted for the electron and photon
sectors.**  Note the asymmetry in what each sector demands:

- the **photon** requires only **T1**.  Its birefringence channel already passed
  in Paper IV; what failed was the common-mode anisotropy, which is exactly
  what A2's coherent superposition addresses.
- the **electron** additionally requires **T2**, **T4**, **T5** and **T6**
  (chirality carrier, orientation consistency, double cover, singlet).

So A2 is *required* by the photon and *over-determined* by the electron -- the
stricter constraint selects the architecture the looser one already needs.
This is a working position, not a closed one: A2 still has STUB in most cells,
and adoption is provisional on T9 and Tier 3.

---

## Open Questions

1. **Check the $(d+1):1$ theorem** (§1) independently, then state it in Lean
   under `src/dcl_formalism/` alongside coordination $2k$ and the tight-frame
   identity.  All three are small.
2. **Gauge or physical?**  Is the facet index a gauge redundancy (physical
   states are the symmetric combination; isotropy exact; nothing physical may
   be labelled by it) or a genuine internal degree of freedom (extra states owed
   an account)?  T8 depends on the answer, and "selected as part of the phase"
   reads gauge-like but should be decided deliberately.
3. **Do the other architectures have a role?** *(Deferred by the author,
   2026-07-29 -- logged, not to be worked yet.)*  With A2 adopted for the
   electron and photon, the open question is whether A1, A3, A4, A5 and the
   lower faces are **rejected alternatives** or **distinct sectors** coexisting
   with A2.  The face lattice permits coexistence by construction (§2), so
   "wrong" and "elsewhere" are not the same verdict, and a FAIL in the table
   means only that a row cannot host *these two particles*.  Sub-questions:
   $k=1$ and $k=2$ cannot carry handedness (§3.2, §4) -- are they real
   sub-structures, sectors for chirality-free objects, or artefacts of the
   enumeration?  And is A5 (§ candidate row) a rival or a different regime?
4. **Does the confinement conjecture survive its check?** (§5.)
5. **Effective dimension.**  A $k$-face has effective dimension $k$, so the
   face lattice gives a spectrum of effective dimensions $1,2,3$ with
   multiplicities $4,6,4$.  Whether this connects to dimensional-flow results in
   causal sets / CDT is unexamined -- see
   [[prior_work_dimension_from_adjacency]].
6. **Audit rows.**  This repo's two inherited PASS rows (bipartite octahedral
   lattice at $d=3$; the 71-dimensional per-site algebra) descend from the
   construction Paper IV excluded and need re-statement.
7. **Can a regular causal order plus exact counting give Lorentz invariance
   without randomness?** (§3.10.)  Zeeman and Hawking--Malament give the group
   from causal order alone, and "order plus number equals geometry" is the
   causal-set route -- but causal sets buy Lorentz invariance with *random*
   sprinkling, whereas a regular lattice's order picks a frame.  This framework
   has the order and the counting in exact form and is regular.  Whether A2's
   four-facet averaging can stand in for randomness is **the sharpest open
   question in this note**, and is upstream of T1 rather than a consequence
   of it.
8. **Does the momentum-deformation family close under composition?** (§3.10,
   the closure test.)  Cheap, decisive, and it determines whether the ellipsoid
   is a route to relativity or an anisotropy model.  Do this before any further
   work on the ellipsoid.

---

## Pointers

- **Upstream:** Paper IV v1.0 (`dcl-paper-04-optical-axis-birefringence`) --
  the no-go, its root cause, and the "four-orientation $O_h$-restoring vacuum"
  proposal this note formalises.  Website essay
  `dcl-website/news/posts/2026-07-21-optical-axis-tested-single-domain-no-go.qmd`.
- **Related notes:** [[bell_chsh_separability_on_lattice]] (T10-T12 live there);
  [[platos_cave_invariant_observer]] (§5.1 for the partition/no-zero structure;
  §6 for the God-eye discipline that constrains how these tests may be
  measured); [[bipartite_octahedral_lattice_n_dim]];
  [[prior_work_dimension_from_adjacency]].
- **Gate:** open handoff `2026-07-16-dpmin-derived-or-fitted-gate` -- §6 bears
  directly on its verdict.
- **Source:** `figures/lattice_fig.txt` (the $d=3$ site with its two triads).
