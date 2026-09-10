# The Cubic Taxicab Shell at Radius 3: Steps, Hops, and Where the Field Comes From

Working notes, 9 September 2026\. Session transcript with Claude, from the radius-3 clarification onward. Every numerical claim below was computed in the session; the scripts are listed in Appendix A.

**Provenance markers.** Statements are tagged so the paper can cite correctly: `[computed]` \= calculated here, exact or converged; `[standard]` \= established result, needs a citation not a derivation; `[conjecture]` \= Claude's speculation, unverified, do not present as result.

---

## 1\. The object

The relevant sphere is the **L∞ unit ball** — the cube — and the eight axes are its corners.

| site type | count | L∞ | L¹ (cubic radius) | L² (unit radius) |
| :---- | :---- | :---- | :---- | :---- |
| face centre (axial) | 6 | 1 | 1 | 1 |
| edge centre (face diagonal) | 12 | 1 | 2 | √2 |
| corner (body diagonal) | 8 | 1 | 3 | √3 |

So "cubic radius 3" picks the corners: they are the sites that reach the boundary in the taxicab metric, while the face centres sit at taxicab 1\. The unit radius is |V\_{x+y+z}| \= √3; the cubic radius of the same vector is 3\. `[computed]`

For reference, the full L¹ sphere of radius 3 in **Z**³ has 4r²+2 \= 38 points, decomposing as 6 axial \+ 24 mixed (permutations of (±2,±1,0)) \+ 8 corners. Only the 8 corners lie in the 3×3×3 stencil. `[computed]`

## 2\. The norm coincidence

For every step vector with entries in {0, ±1}:

> **‖V‖₁ \= ‖V‖₂² \= Hamming weight of V.**

Axial 1 \= 1². Face diagonal 2 \= (√2)². Body diagonal 3 \= (√3)². A linear count, a quadratic length, and a combinatorial weight coincide exactly on this stencil. `[computed]`

**Why this is load-bearing for A=1.** The framework needs *local integer update rules* to conserve a quantity that is naturally quadratic (coherence, amplitude squared, energy). On this generating set the quadratic form *is* an integer count — no rounding, no floating-point invariant, no approximation. Integer arithmetic can carry a quadratic conservation law exactly *because* the stencil was chosen so that L² squared collapses to L¹. This belongs near the front of the paper; it is a stronger argument for the stencil than elegance or isotropy.

The 3×3×3 stencil grades by this weight into shells of size 1, 6, 12, 8 — the binomial expansion of (1+2)³ \= 27 — and cubic radius 3 selects the outermost grade. The eight axes are the top grade of a graded object, not a substitution for the six.

## 3\. Categorical structure: six is a sum, eight is a product

Take the three two-element sets {x, −x}, {y, −y}, {z, −z}.

- The **six-axis** lattice takes their **coproduct**: 2 \+ 2 \+ 2 \= 6\. Disjoint union; pick one generator and step. Yields the Cartesian (box) product graph **Z** □ **Z** □ **Z**.  
- The **eight-axis** lattice takes their **product**: 2 × 2 × 2 \= 8\. A choice function; step in all three factors at once. Yields the categorical (tensor) product **Z** × **Z** × **Z**, which is the product in the category of graphs and graph homomorphisms.

Same three generating pairs, opposite universal property. The 6-versus-8 distinction is sum-versus-product all the way down. `[standard]`

Two consequences.

**Disconnection.** The 8-generator Cayley graph on **Z**³ is disconnected: x−y mod 2 and y−z mod 2 are both invariant under every generator, giving four sectors. Verified by BFS — component sizes 1729, 1710, 1710, 1710 in a bounded box; the all-same-parity sector has parity patterns {(0,0,0), (1,1,1)} and is the BCC lattice. `[computed]` This is Weichsel's theorem in action (tensor products of connected bipartite graphs disconnect), so bipartiteness comes free as a theorem rather than an assumption — but starting from **Z**³ hands you four non-interacting universes. Start from BCC as corner-plus-body-centre instead and it is connected with coordination 8\.

**Direction space.** The direction set is {±1}³ ≅ (**Z**/2)³, so the eight axes carry a group structure; their Cayley graph under single sign flips is the 3-cube Q₃ — 8 vertices, degree 3, bipartite, diameter 3\. Adjacent directions differ by taxicab 2, antipodal by 6\. Position space and direction space each carry a bipartition, and whether those two parities are independent or locked is an open structural question for the tick-parity alternation. `[computed]`

## 4\. Symmetry: where a π/3 could legitimately come from

Under the full octahedral group (order 48):

| direction set | orbit | stabiliser | order |
| :---- | :---- | :---- | :---- |
| 8 body diagonals | single | C₃ᵥ | 6 |
| 6 face axes | single | C₄ᵥ | 8 |

Each body diagonal has a genuine three-fold rotation axis through it. `[standard]`

This matters for the hydrogen result ω×R₁ \= π/3. **Do not** derive the "3" from the taxicab length of the diagonal: that length is 3 *because* the dimension is 3, so the 3:1 diagonal-to-axial ratio is dimension-forced, not discovered. It is not independent evidence and a referee will say so in one sentence. Present it as *the metric supplies this ratio structurally*, not as a resonance.

The stabiliser is a better origin. C₃ᵥ supplies 2π/3, and bipartite tick alternation is a natural mechanism for halving it to π/3 over a two-tick cycle. If that closes, the hydrogen ground state stops being a noticed coincidence and becomes a consequence of the stabiliser plus the parity structure, both independently motivated. `[conjecture]` — this is the single most valuable thing on the list to try to prove.

## 5\. Steps and hops

Decouple **steps** (fine motion inside the sphere) from **hops** (attaining the radius and re-centring the sphere). Note first that if steps *are* the eight diagonals then every step attains the radius, step \= hop, and there is no trembling at all. The two timescales exist only because the step set is strictly finer than the hop set — so the intermediate nodes are constitutive, not decorative.

### 5.1 Hop rule A: first passage to cubic radius 3

Unweighted axial walk, absorbed on first attainment of L¹ \= 3\. Exact absorbing-Markov solve in rational arithmetic. `[computed]`

| landing class | probability | uniform over the 38-shell |  |
| :---- | :---- | :---- | :---- |
| (3,0,0) axial | 1/21 \= 0.047619 | 6/38 \= 0.157895 | suppressed 3.3× |
| (2,1,0) mixed | 4/7 \= 0.571429 | 24/38 \= 0.631579 |  |
| (1,1,1) corner | 8/21 \= 0.380952 | 8/38 \= 0.210526 | **enhanced 1.81×** |

E\[steps per hop\] \= 31/7 \= 4.428571. Overshoot \= 0 exactly (axial steps move L¹ by precisely ±1, so the shell is always attained exactly).

**The multinomial selection rule.** Per *site*, the first-passage probability is

> p(site) × 126 \= 3\! / (a\! b\! c\!), where (a,b,c) \= |coords|

giving 1 for axial, 3 for mixed, **6 for corners**. The corners carry the maximum weight 3\! because reaching (1,1,1) requires all three coordinates to move and there are six orderings that do it, while (3,0,0) admits exactly one. **The diagonals win entropically.** `[computed]`

Consequence: the eight-axis BCC hop structure is *emergent* from a plain isotropic six-axis walk. It is not a rival postulate to be chosen — run the six and the eight falls out of the first-passage statistics.

**Not weight-robust.** Weighting face diagonals at 3× axial drops the corner share to 0.163, *below* the uniform 0.211. So if the walk is genuinely weighted, the weights are constrained by requiring corner dominance. State that as a falsifiable prediction, not a free parameter. `[computed]`

### 5.2 The six are half-steps

On BCC (all coordinates sharing one parity), (1,1,1) **is** a lattice point and (1,0,0) **is not**. Two axial steps, (±2,0,0), are needed to return. So the eight diagonals are whole lattice steps and the six axials are *half*\-steps. `[computed]`

The intermediate nodes are not merely between lattice sites — they are off the lattice entirely. The walk spends most of its time on sites the lattice does not contain and only intermittently touches down. This makes the hop rule intrinsic: no radius parameter is needed.

### 5.3 Hop rule B: first return to the lattice

Unweighted axial walk, absorbed on first return to BCC. `[computed]`

> **P(first return at step t) \= (1/3)(2/3)^(t−2), t ≥ 2** — exact, verified to t \= 8  
>   
> **E\[steps per hop\] \= 4** — exact

| landing site | probability |  |
| :---- | :---- | :---- |
| (1,1,1) 8-type diagonal | 0.33580514 | |v| \= √3 |
| (2,0,0) 6-type axial | 0.28282414 | |v| \= 2 |
| (0,0,0) HOME | 0.21871420 | **null hop, no displacement** |
| farther ((2,2,0), (3,1,1), …) | 0.16265652 |  |

8/(6+8) \= 0.542821. Per-site diagonal/axial \= 0.890496 — per site the axial return is slightly *more* likely; the diagonals lead only on multiplicity, 8 against 6\.

Three results:

1. **The 22% null hop.** One touchdown in five returns home: phase advance with zero displacement. That is the zitterbewegung signature proper — trembling that does not propagate — and it arises from lattice geometry with no extra postulate. A candidate rest-mass channel.  
2. **Memorylessness.** After a two-step dead time the waiting law is exactly geometric at rate 1/3. The coarse-grained hop process is therefore a clean renewal process, exponential in the continuum limit — no long-time memory, no anomalous subdiffusion leaking in from the trembling. This was not guaranteed and it is the well-behaved case for the subordination.  
3. **A fork.** Rule A gives 31/7 ≈ 4.43 steps per hop, rule B gives exactly 4 — about 10% apart in the zitterbewegung ratio. **Recommend rule B:** no free parameter, intrinsic to the lattice, whole number, and §7 shows the 4 is structural rather than dynamical.

## 6\. Both six and eight: one cell

Whether both shells are real is settled by asking whether both contribute faces to the BCC Voronoi cell, or whether one is redundant. `[computed]`

Voronoi facets of the BCC cell, by neighbour shell:

  |v|^2 \= 3   ( 8 facets)   e.g. (-1,-1,-1)     diagonals, dist sqrt(3)

  |v|^2 \= 4   ( 6 facets)   e.g. (-2, 0, 0\)     axes,      dist 2

  TOTAL FACES \= 14      vertices \= 24

  face polygon sizes: {4: 6 faces, 6: 8 faces}

Neither shell is redundant — drop the six and the cell does not close. A single BCC cell **is** both six-axis and eight-axis: eight hexagonal faces across the diagonals, six square faces across the axes. That polyhedron is the truncated octahedron, and since cube and octahedron are dual (6 faces/8 vertices against 8 faces/6 vertices), it is exactly the object that carries both halves of the duality instead of choosing.

**The permutohedron.** That cell is also the 3D permutohedron: `[computed]`

hull of permutations of (1,2,3,4): vertices \= 24, facets \= 14

proper non-empty subsets of {1,2,3,4} \= 2^4 \- 2 \= 14

split:  C(4,2) \= 6 squares,   C(4,1)+C(4,3) \= 8 hexagons

So the 6/8 split is the subset-size structure of a **four**\-element set, and the polytope's combinatorics is *orderings* — the same combinatorics that produced the hop statistics in §5.1, where corners won by ordering count 3\! \= 6 against 1\. Two independent calculations landed on the same object. Worth pursuing: the natural index set here has four elements, not three, and T³\_diamond already has four tetrahedral directions. That may be where the "4" in the lattice actually lives.

## 7\. All three shells: 6, 12, 8

The twelve face diagonals {V\_{x+y}, V\_{x−y}, …, V\_{−y−z}} complete the stencil: 6 \+ 12 \+ 8 \= 26\. These three shells are exactly the nearest-neighbour sets of the three cubic Bravais lattices, and each shell **generates a different sublattice**: `[computed]` / `[standard]`

| shell | vectors | generates | index in Z³ | lattice | coordination |
| :---- | :---- | :---- | :---- | :---- | :---- |
| 6 axial | (±1,0,0) | **Z**³ | 1 | SC | 6 |
| 12 face | (±1,±1,0) | even coordinate sum | 2 | FCC | 12 |
| 8 body | (±1,±1,±1) | all same parity | 4 | BCC | 8 |

### 7.1 The 4 is the lattice index

The quotient **Z**³/Λ\_BCC has order 4 (cosets labelled by (x−y, y−z) mod 2 — the same invariants that disconnected the tensor product in §3, and isomorphic to the Klein four-group). By Kac's lemma the mean return time to the identity coset is 4, for *every* step set that generates the quotient: `[computed]`

 6 axial only    E\[steps per hop\] \= 4

12 face only     E\[steps per hop\] \= 4

18 axial+face    E\[steps per hop\] \= 4

26 all shells    E\[steps per hop\] \= 4

 8 body only     E\[steps per hop\] \= 1     \<- step \= hop, no trembling

So the exactly-4 of §5.3 is not a dynamical accident — it is the index \[**Z**³ : Λ\_BCC\], robust to weighting and to which shells are admitted. That is the kind of number that survives review.

### 7.2 The twelve are a selection rule, not an addition

`[computed]`

step set          null   6-type   8-type  12-type    other   8/(6+8)

 6 axial only    0.2187   0.2828   0.3358   0.0735   0.0889    0.543

12 face only     0.1402   0.3558   0.0000   0.2954   0.2083    0.000

 8 body only     0.0000   0.0000   1.0000   0.0000   0.0000    1.000

18 axial+face    0.0959   0.2057   0.3295   0.1420   0.2267    0.616

26 all shells    0.0481   0.1121   0.4877   0.0910   0.2575    0.813

**That zero is structural.** Face-diagonal steps change the coordinate sum by 0 or ±2, so a walk launched from the origin never leaves FCC — and body diagonals have odd sum. A pure twelve-axis universe *cannot produce a diagonal hop at all, ever.*

### 7.3 The cells, all three

`[computed]`

SC    6 faces (squares)         8 vertices  (all deg 3\)      \= cube

FCC  12 faces (rhombi)         14 vertices  (8 deg-3 \+ 6 deg-4) \= rhombic dodecahedron

BCC  14 faces (6 sq \+ 8 hex)   24 vertices  (all deg 3\)      \= truncated octahedron

The 6-and-8 pair is the BCC cell's *faces* and the FCC cell's *vertices*; 12 is what FCC contributes. All three numbers are one duality seen from different sides.

### 7.4 The dial

Admitting more shells as steps runs the diagonal share of hops 0 → 0.543 → 0.616 → 0.813, while the **null-hop rate collapses from 0.219 to 0.048**. Since the null hop is the trembling-without-propagation channel — the mass-like one — the step set is precisely what sets the balance between trembling and propagation. More axes means more travel and less trembling. This is a knob with physical content, and the first thing in the construction that looks constrainable from data.

## 8\. Where the field comes from

### 8.1 The return is the quantizing event

Not the reaching. The return is where the strong Markov property applies and the path factorises into independent, identically distributed **excursions**. That factorisation is what makes them countable and interchangeable, which is what "quantum" must mean for a stochastic process. The excursion is fully specified by §5.3: length law (1/3)(2/3)^(t−2), mean 4, landing distribution as tabulated. The outbound leg is excursion interior and carries no separate event. `[standard]` (machinery) / `[computed]` (the specific law)

### 8.2 The inverse-square law is not an input

Current simulation practice — iterate hops, recalculate field strength as a function of r — *imposes* the distance dependence. It does not need to be imposed. The expected visit count of a 3D walk is the lattice Green's function G \= (I − P)⁻¹, the walk's visit measure inverting the discrete Laplacian, and asymptotically `[standard]`

> G(x) \~ 3 / (2π|x|)

Numerically confirmed, with the G(0) value as an independent validation: `[computed]`

G(0) numeric \= 1.50933032    exact 1/(1-p\_return) \= 1.51638606   err 4.65e-3 \~ O(1/L)

field |grad G| along the axis:

   r      E(r)         r^2 \* E(r)        target 3/(2pi) \= 0.477465

   8    0.00767785      0.491382

  12    0.00335381      0.482949

  16    0.00187344      0.479601

  24    0.00082437      0.474837

Inverse-square with the coefficient 3/(2π), to three figures. (The r·G(r) estimator sags at large r from torus wrap-around; the gradient largely cancels it.)

**Action item.** Stop computing 1/r². Start counting visits, and check that 1/r² emerges. If it does, the field law is derived rather than assumed. The random-walk / Laplacian correspondence is the backbone of lattice field theory, so this is citable rather than novel — but it converts an assumption into a consequence, which is a real upgrade to the framework's standing.

### 8.3 An exact internal label

An excursion occupies the three non-identity cosets of **Z**³/Λ\_BCC ≅ **Z**₂ × **Z**₂, and Aut(**Z**₂ × **Z**₂) \= S₃. So excursions carry a 3-valued internal label with S₃ symmetry, forced by the lattice rather than postulated. `[computed]`

**Record the fact and stop there.** Writing "therefore colour" is exactly the move the language-landmines discipline exists to prevent; a referee will spend the entire review on that sentence instead of on the result.

### 8.4 Three problems to address before writing this up

**Reification.** Physicists will not accept excursions as virtual particles — virtual particles are terms in a perturbative expansion, not entities. This is avoidable and the honest version is stronger: the excursion measure *is* the propagator, and excursions are its path-sum decomposition. True, and unobjectionable.

**Sign.** A visit count is positive definite, so it yields a potential but not two signs of charge. The natural candidate is already in the framework: define the field as *visits to even-parity sites minus visits to odd-parity sites*. Signed, uses the existing bipartite structure, and is a one-afternoon experiment. **Run this before anything else.**

**Calibration.** Field units per excursion is exactly the energy-to-coherence conversion factor already flagged as the critical open gap. This construction relocates that gap rather than closing it. State so explicitly in the paper so nobody concludes it was overlooked.

## 9\. Open items, ranked

1. **Signed parity field** (§8.4). Does even-minus-odd visit density give both signs of charge? Cheapest high-value experiment on the list.  
2. **π/3 from C₃ᵥ plus tick parity** (§4). If 2π/3 halves to π/3 over a two-tick cycle, the hydrogen result becomes a derivation.  
3. **Fix the hop rule** to first-return (§5.3) and propagate E\[T\] \= 4 through anything that currently uses a different ratio.  
4. **The tail.** 16–26% of hops land beyond the 14-neighbourhood ((2,2,0), (3,1,1), (2,2,2), …). If hops must be confined to 6+8, a truncation rule is needed — and truncating will perturb both the exactly-4 and the exactly-geometric law. Decide what is being given up.  
5. **Weight sensitivity** (§5.1). Corner dominance fails under some weightings. Characterise the admissible weight region and publish it as a constraint.  
6. **Four or three?** (§6). The permutohedron's index set has four elements and T³\_diamond has four tetrahedral directions. Is that the same 4?  
7. **Direction-space vs position-space parity** (§3). Independent or locked?

## Appendix A — scripts

| file | what it computes |
| :---- | :---- |
| `hop_fpd.py` | Rule A: exact first-passage distribution on the cubic-radius-3 shell; step sets and weights configurable |
| `both68.py` | BCC Voronoi facets by neighbour shell; permutohedron comparison |
| `branch68.py` | Rule B: first-return branching and waiting-time law for the axial walk |
| `shells_6_12_8.py` | Kac's-lemma hop times, first-return branching for all step sets, all three Voronoi cells |
| `greens.py` | Lattice Green's function; the 3/(2π) inverse-square check |

## Appendix B — literature to cite

**Digital geometry (the object is theirs).** Digital distance functions and neighbourhood-sequence / weighted distances on the BCC and FCC grids — Strand, Nagy, Borgefors and collaborators. The 14-neighbourhood is studied there because it approximates Euclidean distance markedly better than the cubic 6/18/26 neighbourhoods, which supplies a non-anthropic, externally-citable reason for the stencil choice. Emergent isotropy is normally what kills discrete spacetime models, so this citation is worth more to a sceptical reader than any elegance argument.

- *Digital distance functions on three-dimensional grids* — Strand, Nagy, Borgefors, Theoretical Computer Science  
- *Approximating Euclidean distance using distances based on neighbourhood sequences in non-standard three-dimensional grids*  
- *Weighted distances based on neighbourhood sequences*  
- *Body Centered Cubic Grid — Coordinate System and Discrete Analytical Plane Definition*

**Graph products.** Weichsel's theorem on connectivity of tensor products of bipartite graphs.

**Subordination.** Montroll–Weiss continuous-time random walk, for the step-time / hop-time decoupling.

**Trembling from lattice walks (precedent to position against).** Feynman's checkerboard model; the Dirac quantum-walk literature. Two-timescale lattice walks producing zitterbewegung is not new. What appears unclaimed is first passage to a taxicab shell with the multinomial selection rule, and the categorical treatment of the 14-neighbourhood with A=1 as a functorial rather than imposed balance.

**Standard machinery.** Kac's lemma (mean return time \= 1/stationary measure); random-walk Green's function asymptotics G(x) \~ d Γ(d/2−1) / (2 π^{d/2} |x|^{d−2}), which is 3/(2π|x|) at d \= 3\.  
