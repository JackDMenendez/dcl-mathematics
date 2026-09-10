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

### 2.1 Shell length reference

Step vectors of the 3×3×3 stencil: `[computed]`

| shell | n | L¹ (cubic) | L² (unit) | L∞ | ⟨|s|²⟩ |
| :---- | :---- | :---- | :---- | :---- | :---- |
| axial | 6 | 1 | 1 | 1 | 1 |
| face | 12 | 2 | √2 \= 1.414214 | 1 | 2 |
| body | 8 | 3 | √3 \= 1.732051 | 1 | 3 |

Euclidean length ratios (row ÷ column):

| ÷ | axial | face | body |
| :---- | :---- | :---- | :---- |
| **axial** | 1 | 1/√2 \= 0.707107 | 1/√3 \= 0.577350 |
| **face** | √2 \= 1.414214 | 1 | √6/3 \= 0.816497 |
| **body** | √3 \= 1.732051 | √6/2 \= 1.224745 | 1 |

Taxicab (cubic) length ratios are rational, since L¹ is the Hamming weight:

| ÷ | axial | face | body |
| :---- | :---- | :---- | :---- |
| **axial** | 1 | 1/2 | 1/3 |
| **face** | 2 | 1 | 2/3 |
| **body** | 3 | 3/2 | 1 |

BCC *neighbour* distances differ from stencil step lengths, because only the body diagonals are whole BCC lattice vectors — the axial and face directions appear at doubled length: `[computed]`

| BCC shell | |v|² | |v| | count | ratio to 1st | direction |
| :---- | :---- | :---- | :---- | :---- | :---- |
| 1st | 3 | √3 \= 1.732051 | 8 | 1 | body diagonal (whole step) |
| 2nd | 4 | 2 | 6 | 2/√3 \= 1.154701 | axial, doubled |
| 3rd | 8 | 2√2 \= 2.828427 | 12 | 1.632993 | face diagonal, doubled |
| 4th | 11 | √11 \= 3.316625 | 24 | 1.914854 |  |
| 5th | 12 | 2√3 \= 3.464102 | 8 | 2 | body diagonal, doubled |

**2/√3 \= 1.154701** is worth tracking: it is simultaneously the first-to-second BCC shell ratio (the two-speed mismatch if both take one tick) and the per-step drift of the inversion-breaking 12-subset in §8.5.

Finally, by §8.3 the Coulomb coefficients go as 1/⟨|s|²⟩, so across the shells they stand in the ratio **6 : 3 : 2** (axial : face : body).

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

### 5.4 Hop probability reference

Companion to §2.1, same shells, probabilities instead of lengths. Canonical axial walk, rule B (first return to the lattice). `[computed]`

| shell | sites | P(shell) | P per site | |v| (BCC) | L¹ (min steps) |
| :---- | :---- | :---- | :---- | :---- | :---- |
| null (weight 0\) | 1 | 0.21871420 | 0.21871420 | 0 | 0 |
| axial (2,0,0) | 6 | 0.28282414 | 0.04713736 | 2 | 2 |
| face (2,2,0) | 12 | 0.07357348 | 0.00613112 | 2√2 \= 2.828427 | 4 |
| body (1,1,1) | 8 | 0.33580514 | 0.04197564 | √3 \= 1.732051 | 3 |
| tail (everything else) | — | 0.08908304 | — | ≥ √11 | ≥ 5 |

Ratios of P(shell) (row ÷ column):

| ÷ | axial | face | body |
| :---- | :---- | :---- | :---- |
| **axial** | 1 | 3.844104 | 0.842227 |
| **face** | 0.260139 | 1 | 0.219096 |
| **body** | 1.187328 | 4.564214 | 1 |

Ratios of P **per site** (row ÷ column):

| ÷ | axial | face | body |
| :---- | :---- | :---- | :---- |
| **axial** | 1 | 7.688209 | 1.122969 |
| **face** | 0.130069 | 1 | 0.146064 |
| **body** | 0.890496 | 6.846321 | 1 |

The null hop against each shell: 0.773322 / 2.972731 / 0.651313 by total, and 4.639933 / 35.672776 / 5.210503 per site (axial / face / body). It is by a wide margin the most probable single landing site.

**Read this against §2.1.** By length the shells order body \> face \> axial (√3 \> √2 \> 1). By total probability they order **body \> axial \> face**, and by per-site probability **axial \> body \> face**. The orderings disagree, and both disagreements are informative:

- Per site the axial landing is the most likely of the three; the body diagonals lead in total only on multiplicity, 8 sites against 6\. (Ratio 0.890496 — the same number as in §5.3.)  
- The face shell is suppressed far beyond what its distance suggests — 7.7× below axial per site. The explanatory variable is not Euclidean distance but **L¹, the minimum number of unit axial steps**: (2,0,0) needs 2, (1,1,1) needs 3, (2,2,0) needs 4\. Per-site probability is monotone decreasing in L¹ across all three, while it is *not* monotone in |v| — (2,0,0) at distance 2 beats (1,1,1) at distance 1.732.

So in this construction the taxicab metric governs the dynamics and the Euclidean metric governs the geometry, and they do not agree on which shell is nearest. That tension is worth resolving explicitly before the two are used in the same equation.

### 5.5 Undistorting: condition on hop duration

The §5.4 numbers are distorted by path multiplicity, and dividing by the minimal-path count does **not** remove it: `[computed]`

| site | L¹ | minimal paths | P/site | P/site/path |
| :---- | :---- | :---- | :---- | :---- |
| (2,0,0) axial | 2 | 1 | 4.714e-02 | 4.714e-02 |
| (1,1,1) body | 3 | 6 | 4.198e-02 | 6.996e-03 |
| (2,2,0) face | 4 | 6 | 6.131e-03 | 1.022e-03 |
| (4,0,0) | 4 | 1 | 7.909e-04 | 7.909e-04 |
| (3,1,1) | 5 | 20 | 2.259e-03 | 1.130e-04 |
| (2,2,2) | 6 | 90 | 1.173e-03 | 1.303e-05 |

(2,2,0) and (4,0,0) share L¹ \= 4 yet differ by 1.29× after normalising, because non-minimal first-passage paths also contribute. Minimal-path counting is not the right correction.

**Conditioning on the hop duration t is.** The numbers then come out as exact small rationals: `[computed]`

| t | P(T \= t) | null | axial | face | body | tail | conditional on t |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| 2 | 1/3 | 1/6 | 1/6 | 0 | 0 | 0 | null : axial \= **1 : 1** |
| 3 | 2/9 | 0 | 0 | 0 | 2/9 | 0 | **100% body diagonal** |
| 4 | 4/27 | 1/27 | 2/27 | 1/27 | 0 | 0 | null : axial : face \= **1 : 2 : 1** |
| 5 | 8/81 | 0 | 0 | 0 | 2/27 | 2/81 | body : tail \= **3 : 1** |
| 6 | 16/243 | 0.1563 | 0.4063 | 0.3125 | 0 | 0.1250 |  |
| 7 | 32/729 | 0 | 0 | 0 | 0.5781 | 0.4219 |  |

> **Parity selection rule.** A landing site's L¹ and the hop duration t must share parity. Since the body diagonals have L¹ \= 3 (odd) while null, axial and face have L¹ \= 0, 2, 4 (even), **odd-duration hops are body-diagonal (or tail) and even-duration hops are null/axial/face (or tail). The two families never mix.**

And the duration parity split is exact. With T \= 2 \+ k and k \~ Geometric(1/3):

> **P(T odd) \= 2/5,  P(T even) \= 3/5.**

So the shells are not competing on one level field. They are sorted by tick parity, and the geometric waiting law weights the ticks. That is what the §5.4 ratios were obscuring.

**Check against tick-parity alternation.** The framework's bipartite alternation wants a 1/2 : 1/2 structure (f\_beat \= 0.5 − f\_zitt). This walk gives 2/5 : 3/5. Either the alternation is not this parity, or the step set has to be changed to balance it. Resolve that before the two parities are identified with one another.

### 5.6 Confined variants: a Markov chain on a finite cell

The tail of §5.4 (16–26% of hops beyond the 14-neighbourhood) resists any clean truncation rule. Confining the walk to a finite box removes it **by construction** — the hop can only land on a BCC site inside the box — while leaving the motion inside fully random.

**What the three constructions are.** All three use the same motion — unit axial steps, uniformly at random — and the same hop rule — the hop happens the moment the walker lands on a BCC site. The only difference is whether the walker is allowed to leave a box:

| construction | where the walker may go | which BCC sites are therefore reachable |
| :---- | :---- | :---- |
| **unconfined** | all of **Z**³ | infinitely many — hence the tail of long jumps |
| **3×3×3** | −1 ≤ x,y,z ≤ 1 (27 nodes) | 9: the centre and the 8 corners |
| **5×5×5** | −2 ≤ x,y,z ≤ 2 (125 nodes) | 35: centre, 8 corners, 6 axial, 12 face, 8 doubled-body |

So the box size is not a computational convenience — **it decides which hop types can exist at all.** `[computed]`

box L-inf \<= 1  ( 27 nodes)   9 BCC sites:  (0,0,0) x1   (1,1,1) x8

box L-inf \<= 2  (125 nodes)  35 BCC sites:  (0,0,0) x1   (1,1,1) x8   (2,0,0) x6

                                            (2,2,0) x12  (2,2,2) x8

box L-inf \<= 3  (343 nodes)  91 BCC sites:  the above plus (3,1,1) x24  (3,3,1) x24

                                            (3,3,3) x8

In the 27-node box the only BCC sites are the centre and the corners, so every hop is either a null or a body diagonal — nothing else is geometrically available. Widening to 125 nodes admits the axial and face shells and so restores the shell mixture, still with no tail. Widening again to 343 begins re-admitting the long jumps that confinement was meant to remove.

The structural fact that makes this work: inside the 3×3×3 cell (L∞ ≤ 1\) the BCC sites are *exactly* the centre and the 8 corners. The 6 axial and 12 face sites are not BCC. So confinement to 27 nodes yields "null \+ 8 axes" with no 6-type, no 12-type, and no tail — precisely the structure §1 set out to build.

**The boundary convention.** The walker at an interior site picks one of the six axial directions uniformly. Sometimes that step would leave the box. Three answers:

- **stay** — the walker does not move, and the tick is still spent. A bounce that costs a tick.  
- **resample** — the illegal direction is discarded and one of the legal directions is drawn instead. The walker always moves; no tick is wasted.  
- **reflect** — the step bounces straight back: take its negation instead. For unit steps in a box this replacement is always legal.

>   
> **Correction, 10 Sept.** An earlier draft of this section implemented "reflect" as a coordinate mirror c → c − 2d, which is a two-unit point reflection rather than a wall bounce. On that bug reflect produced ugly rationals and was recommended against. **With the correct convention reflect is the best of the three**, and the numbers below are the corrected ones.

**3×3×3 cell, 18 transient states** `[computed]`

| convention | E\[T\] | null | body diagonal | degree-4 rel. |
| :---- | :---- | :---- | :---- | :---- |
| stay | 5 | 1/3 | **2/3** | −44.44% |
| resample | 4 | 1/3 | **2/3** | −44.44% |
| reflect | **4** | **3/5** | **2/5** | −44.44% |

Degree-4 is the same under all three because every non-null hop is a body diagonal regardless — the convention shifts how *often* a hop is null, not which direction it takes. Note that reflect gives **3/5 null : 2/5 body**, which is exactly the §5.5 hop parity split with the *same* assignment (null has L¹ \= 0, even; body has L¹ \= 3, odd).

**5×5×5 cell, 90 transient states** `[computed]`

| landing | stay | resample | reflect |
| :---- | :---- | :---- | :---- |
| body diagonal (1,1,1) | 9/25 \= 0.36 | 9/25 \= 0.36 | **2/5 \= 0.40** |
| axial (2,0,0) | 3/10 \= 0.30 | 3/10 \= 0.30 | 61/210 \= 0.290476 |
| null | 11/50 \= 0.22 | 11/50 \= 0.22 | 47/210 \= 0.223810 |
| face (2,2,0) | 1/10 \= 0.10 | 1/10 \= 0.10 | 8/105 \= 0.076190 |
| body doubled (2,2,2) | 1/50 \= 0.02 | 1/50 \= 0.02 | 1/105 \= 0.009524 |
| **E\[steps/hop\]** | 103/25 \= 4.12 | 99/25 \= 3.96 | **4 exactly** |
| **degree-4 rel.** | \+1.85% | \+1.85% | **−0.14%** |

The reflecting 5×5×5 cell is the standout: E\[T\] \= 4 exactly, matching the unconfined Kac value; a body-diagonal share of exactly 2/5, matching the parity split; and a degree-4 anisotropy of −0.14%, thirty times better than stay or resample and with no tuning at all.

**Comparison of the three hop rules**

Column meanings: **tail** \= fraction of hops landing outside {null, axial, face, body}, i.e. long jumps the 14-neighbourhood design did not intend. **E\[T\]** \= mean internal steps per hop, the trembling-to-propagation ratio. **degree-4 anisotropy** \= relative departure of the hop *direction* distribution from a sphere at fourth order, signed (axial-heavy mixtures come out positive, diagonal-heavy negative, so they can cancel).

| construction | tail | exact rationals | E\[T\] | degree-4 rel. anisotropy |
| :---- | :---- | :---- | :---- | :---- |
| unconfined (§5.3) | 16% | waiting law only | 4 | \+4.34% |
| 3×3×3, best convention | **none** | yes | 4 | **−44.4%** |
| 5×5×5, stay or resample | **none** | yes, denom. 50 | 4.12 / 3.96 | \+1.85% |
| **5×5×5, reflecting** | **none** | yes, denom. 210 | **4 exactly** | **−0.14%** |

The −44.4% is (1/3 − 3/5)/(3/5) \= −4/9: with every non-null hop a body diagonal, the directional distribution is a single shell and there is no positively-deviating partner to cancel against.

**Recommendation: the 5×5×5 cell with reflecting boundaries.** It strictly dominates every other construction here — no tail, exact rational hop probabilities, E\[T\] \= 4 on the nose (so the Kac value survives confinement), a body-diagonal share of exactly 2/5 that reproduces the parity split, and a degree-4 anisotropy of −0.14% with no tuning.

The 3×3×3 cell is the right choice only if a pure eight-axis hop structure is wanted for its own sake, and the cost is steep: with no axial component in the mixture there is nothing to cancel the degree-4 term, so the anisotropy is the worst of any option (§9.5 explains why — the axial shell is the only one that deviates positively). **The tail was doing useful work**, and the confined 5×5×5 cell reproduces that work in bounded form.

The reflecting convention is also the most physically natural of the three: a walker that cannot leave a region bounces off its wall rather than freezing against it (stay) or having its choice silently overridden (resample). §5.8 shows why it is the *right* one and not merely the luckiest — reflection acts trivially on the quotient that carries the hop clock, so E\[T\] \= 4 survives confinement of any shape.

### 5.7 Is a reflection a trembling event?

**No, and it is not even a distinguishable event.** Two facts.

**A reflected step is invisible in the trajectory.** Every reflected target is also reachable by an ordinary legal step — verified for both cells. `[computed]` From (1,0,0) in the 27-cell, choosing \+x (illegal, reflects) and choosing −x (legal) both land on (0,0,0); nothing in the path distinguishes them. So the reflecting walk is *identical* to a walk with position-dependent step weights: at a boundary site the inward direction simply carries 2/6 instead of 1/6. **Reflection is bookkeeping for a confining bias, not an event.** It costs one tick and produces one unit of displacement, exactly like any other step — ordinary trembling, nothing extra.

**But the reflection rate is well defined, and it is a pressure.** A reflection reverses a step, so it transfers 2 units of momentum to whatever confines the cell: `[computed]`

|  | 3×3×3 | 5×5×5 |
| :---- | :---- | :---- |
| E\[ticks per hop\] | 4 | 4 |
| E\[bounces per hop\] | 7/10 \= 0.7 | 4/35 \= 0.114286 |
| fraction of ticks that are bounces | 7/40 \= 0.175 | 1/35 \= 0.028571 |
| E\[momentum to wall per hop\] | 7/5 \= 1.4 | 8/35 \= 0.228571 |

The rate falls with cell size, as a pressure should. **This is a conservation problem to face directly:** A=1 is a conservation law, and an elastic wall does not conserve momentum unless something absorbs the recoil. Either the cell is a physical object that takes 1.4 units of recoil per hop — in which case it is part of the dynamics and it moves — or it is a modelling device, in which case there is no momentum and "reflection" is only the bias above. The two readings cannot both be held.

### 5.8 Why reflection uniquely preserves E\[T\] \= 4 — a theorem

Reflection replaces the step s by −s. The quotient **Z**³/Λ\_BCC is the Klein four-group, in which every element is its own inverse, so −s ≡ s in the quotient. **The induced walk on the order-4 quotient is therefore completely unchanged by reflection**, and Kac's lemma (§7.1) still gives E\[T\] \= 4 exactly — for a confining region of *any* shape.

Verified across boxes and shapes: `[computed]`

box                        reflect      stay  resample

cube R=1                  4.000000  5.000000  4.000000

cube R=2                  4.000000  4.120000  3.960000

cube R=3                  4.000000  4.029224  3.993112

slab |x|\<=1,|y|,|z|\<=3    4.000000  4.433656  4.078532

L1 ball r\<=3              4.000000  4.545455  3.818182

Stay adds a self-loop to the quotient chain and resample renormalises it, so both perturb the hop clock in a box-dependent way. Reflection touches neither.

**Consequence: with reflecting boundaries, confinement is free with respect to the hop clock.** The cell can be any size or shape and E\[T\] \= 4 survives. That is what makes the reflecting cell the natural object rather than a tuned one, and it explains why three independent quantities came out right at once in §5.6 — the quotient structure carrying all of them is untouched by the boundary.

### 5.9 Deriving the transition rule

How much of the Markov rule is forced rather than chosen? Substantially all of it, given three inputs — and naming those three inputs is the useful part.

**Step 1: locality.** Steps reach nearest neighbours only. This is a framework axiom, not derived here.

**Step 2: lattice symmetry derives the bulk rule uniquely.** The octahedral group acts *transitively* on the six axial steps, so the only O\_h-invariant step distribution is p(s) \= 1/6. Zero remaining freedom. (Admit all 26 and O\_h has three orbits, leaving two free parameters — the §7.4 shell dial. Symmetry alone fixes the rule completely only for the six-step set, which is an argument for the six.)

**Step 3: the boundary rule is selected by the stationary measure.** All three conventions turn out to be reversible; what distinguishes them is the density profile they support: `[computed]`

| convention | π uniform? | reversible? | π(centre)/π(corner) |
| :---- | :---- | :---- | :---- |
| stay | **yes** | yes | 1.0000 |
| reflect | no | yes | **8.0000 \= 2³** |
| resample | no | yes | 2.0000 |

The reflecting measure is exact and interpretable: `[computed]`

walls touched   sites   pi / pi(centre)   2^-w

      0           27        1.000000      1.0000

      1           54        0.500000      0.5000

      2           36        0.250000      0.2500

      3            8        0.125000      0.1250

> **π(x) \= 2^(−walls touched) / Z.  Each wall halves the local density.**

So reflect is a *soft* wall — the conserved density is suppressed at the boundary, the way a confined wavefunction goes to zero — while stay keeps the density uniform right up to the wall. **The boundary rule is therefore derived once A=1 says what the conserved density does at a boundary.** That is not a hidden free choice; it is a physical statement the framework should be able to make.

**Step 4: maximum entropy derives the biased rule.** The odd-moment weights of §9.7, p(+x) \= (1/3 \+ m)/2, are exactly the max-entropy distribution subject to a fixed drift *and* fixed per-axis second moments — verified: they take the exponential-family form exp(β sₓ \+ Σᵢ λᵢ sᵢ²), with β \= ½ ln\[(1/3+m)/(1/3−m)\]. `[computed]`

The exponential tilt of §9.6 is the max-entropy solution when you constrain the drift *only*. **So the whole difference between the wrong rule and the right one is one extra constraint: isotropy of the second moment.** That is a satisfying place for the distinction to live — a variational principle plus one stated symmetry requirement, rather than a modelling preference.

**Where the derivation stops.** Three things remain imposed:

1. **The step support** (6, 12, 8, or 26). Nothing above selects it; §7.4 and §9.5 show the choice has consequences for the coupling, the trembling/propagation balance and the isotropy. Symmetry favours the six only in the weak sense that it leaves no free parameters there.  
2. **Isotropy of the second moment.** Adopted in §9.7 because the alternative distorts a moving charge's field the wrong way. It ought to follow from requiring the emergent field to be Lorentz-covariant — that implication is not yet shown, and showing it would convert an assumption into a theorem.  
3. **The density profile at a wall.** Needed to pick the boundary convention, per step 3 above.

Those three are precisely the points at which the framework has to make physical commitments. Everything else in the rule follows from symmetry, reversibility and maximum entropy.

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

### 8.3 The coupling constant is the reciprocal diffusion constant

(I − P)G \= δ₀ is, in the diffusion limit, −(⟨|s|²⟩/6) Δ G \= δ₀, hence Δ G \= −(6/⟨|s|²⟩) δ₀ and `[computed]` / `[standard]`

> **G(x) → \[6/⟨|s|²⟩\] / (4π|x|) \= 3 / (2π⟨|s|²⟩ |x|)**

| step set | ⟨|s|²⟩ | coefficient | as flux/(4π) |
| :---- | :---- | :---- | :---- |
| 6 axial | 1 | 0.477465 | 6/(4π) |
| 12 face | 2 | 0.238732 | 3/(4π) |
| 8 body | 3 | 0.159155 | 2/(4π) |

The 0.477465 measured in §8.2 is *exactly* 6/(4π) — the 6 is the enclosed flux and it appears because ⟨|s|²⟩ \= 1 for axial steps.

**So the Coulomb coupling is not a free parameter.** It is 1/D, the reciprocal diffusion constant of the step set, fixed entirely by the mean square step length. This is the first result in the construction that bites on the energy-to-coherence calibration gap rather than relocating it. It also means the §7.4 dial — which shells are admitted as steps — sets the coupling strength as well as the trembling/propagation balance. Those are not independent knobs.

### 8.4 An exact internal label

An excursion occupies the three non-identity cosets of **Z**³/Λ\_BCC ≅ **Z**₂ × **Z**₂, and Aut(**Z**₂ × **Z**₂) \= S₃. So excursions carry a 3-valued internal label with S₃ symmetry, forced by the lattice rather than postulated. `[computed]`

**Record the fact and stop there.** Writing "therefore colour" is exactly the move the language-landmines discipline exists to prevent; a referee will spend the entire review on that sentence instead of on the result.

### 8.5 Charge: a no-go theorem, and where the sign actually lives

A visit count is positive definite, so it yields a potential but not two signs of charge. The natural first attempt is to assign charge on the step vectors themselves — *plus to plus parity, minus to minus, none to a zero component* — i.e. the functional

> q(V) \= Σᵢ sign(Vᵢ)

**No-go.** q is **odd under inversion** V → −V, and every shell is closed under inversion. Therefore every shell carries exactly zero net charge, with no tuning available: `[computed]`

 6 axial   q values {-1: 3, \+1: 3}                  NET \= 0

12 face    q values {-2: 3,  0: 6, \+2: 3}           NET \= 0

 8 body    q values {-3: 1, \-1: 3, \+1: 3, \+3: 1}    NET \= 0

(The six q \= 0 entries in the twelve are the mixed-sign face diagonals — the "none to 0 parity" case.)

Restoring nonzero charge therefore requires an **inversion-breaking subset**, and every such subset carries a net drift: `[computed]`

| subset | vectors | vector sum | drift/step |
| :---- | :---- | :---- | :---- |
| 12-shell, q \> 0 | (0,1,1), (1,0,1), (1,1,0) | (2,2,2) | 2/√3 \= 1.154701 |
| 8-shell, q \> 0 | (1,1,1), (−1,1,1), (1,−1,1), (1,1,−1) | (2,2,2) | √3/2 \= 0.866025 |

A "charged" particle would self-propel along the body diagonal and its field would be anisotropic. Inversion-breaking is exactly what makes q nonzero, and inversion-breaking is exactly what destroys isotropy and rest. **With a charge functional linear on the step set you cannot have both.** Write this up as a no-go, not as a difficulty.

**Resolution: charge is a boundary condition on the current, not a property of a step.** A visit count is unsigned; a *current* is signed. Make the origin either an injector or an absorber of excursion current. Then Gauss's law supplies everything:

- net flux through any surface enclosing the origin \= the injection rate \= **the charge**;  
- flux spreads over 4πr², so the field goes as 1/r² **by conservation** rather than by asymptotic fit — a stronger derivation than §8.2;  
- the sign is free (injection versus absorption), so both charges exist;  
- the step set stays fully inversion-symmetric, so isotropy and rest are preserved.

A charge is a source or a sink of flux. That is the classical picture, realized exactly on the lattice by current conservation of the walk.

**Dead end, recorded so it isn't retried:** charge as *which BCC sublattice* the particle occupies (all-even versus all-odd). 8-type hops flip coordinate parity and they are 33.6% of hops, so charge would flip on a third of them. 6-type, null, and (2,2,0) hops all preserve it. And 0.336 ≠ 0.5, so it is not secretly the f\_beat \= 0.5 − f\_zitt alternation either. `[computed]`

### 8.6 Two remaining problems

**Reification.** Physicists will not accept excursions as virtual particles — virtual particles are terms in a perturbative expansion, not entities. This is avoidable and the honest version is stronger: the excursion measure *is* the propagator, and excursions are its path-sum decomposition. True, and unobjectionable.

**Calibration, what is left of it.** §8.3 fixes the Coulomb coefficient as 1/D from the mean square step length, so the field normalisation is no longer free. What remains open is the absolute conversion from lattice units to physical energy — the energy-to-coherence factor. Say explicitly in the paper which half is now derived and which half is still open, so nobody concludes the whole thing was overlooked.

## 9\. Lorentz anisotropy: a bound on the lattice spacing

> **Correction, 10 Sept.** An earlier draft of this section claimed the framework was falsified at 10⁻¹⁸ by existing Michelson–Morley-type data. **That was wrong**, and the error was comparing the single-tick reachable-set anisotropy against a bound derived from long-wavelength optics. Those are different quantities. The observable anisotropy is suppressed by (ka)², which turns the experiment into a *constraint on lattice spacing* (§9.4) rather than a refutation. The structural facts in §9.2–9.3 stand; the verdict in §9.4 is rewritten.

### 9.1 What the parity disparity is not

The 2/5 : 3/5 even/odd split of §5.5 is **not** a derivation of c. Nothing in this construction propagates ballistically: the walk is diffusive, mean displacement zero, spread \~√t. That describes a massive object *at rest* — which is what the simulations have been modelling. A massless object rides the light cone at fixed speed and has no rest frame. The parity split is a property of the excursion **waiting time**, living on the same side of the theory as the 0.219 null hop. It constrains mass, not c.

Nor is c derivable from a lattice in principle: it is the conversion between lattice spacing and tick, both free, so c \= a/τ \= 1 by construction. What a lattice *does* determine is the **shape** of the light cone.

### 9.2 The cone shape, and the anisotropy

`[computed]`

max speed by direction,  v(n) \= 1 / ||n||\_1

  axis       (1,0,0)    1.000000

  face diag  (1,1,0)    0.707107   \= 1/sqrt(2)

  body diag  (1,1,1)    0.577350   \= 1/sqrt(3)

  anisotropy fastest/slowest \= sqrt(3) \= 1.732051     (a 73% effect)

one-tick reachable set:

   6 axial \-\> OCTAHEDRON (axes fastest)

   8 body  \-\> CUBE       (diagonals fastest)

  26 all   \-\> CUBE \= the L-inf ball

Note the closure with §1: the causal cone of the full stencil **is** the original cubic sphere, and its eight corners are the maximal-speed directions at √3 per tick.

### 9.3 Why the field survives and the light cone does not

Every shell's step covariance is *exactly* isotropic — zero off-diagonal, diagonal (⟨|s|²⟩/3)·I: `[computed]`

 6 axial   cov \= \[0.333333 ...\] \* I    max off-diagonal \= 0.00e+00

12 face    cov \= \[0.666667 ...\] \* I    max off-diagonal \= 0.00e+00

 8 body    cov \= \[1.000000 ...\] \* I    max off-diagonal \= 0.00e+00

26 all     cov \= \[0.692308 ...\] \* I    max off-diagonal \= 0.00e+00

So the two limits diverge sharply:

| limit | physics | lattice anisotropy |
| :---- | :---- | :---- |
| diffusive | the field, G(x), §8.2 | **none** — the CLT erases it |
| ballistic | the light cone, massless propagation | **√3** — the lattice shape survives |

This is why G(x) came out spherically symmetric with a clean 3/(2π⟨|s|²⟩) coefficient while the cone stays cubic. A massless particle is the ballistic case, so it inherits the full 73% direction-dependence in c.

### 9.4 What is actually observable: the dispersion, not the cone

An experiment does not measure the single-tick reachable set. It measures the propagation of a wave whose wavelength is enormous compared to the lattice spacing, which is governed by the **dispersion relation**, not the cone's support. For the axial lattice quadratic form E(k) \= 2(3 − cos k₁ − cos k₂ − cos k₃): `[computed]`

relative anisotropy of E(k)/k^2 between axis and body diagonal

        k        axis          body        (ax-body)/ax      / k^2

   1.0000   0.919395388   0.972529034      \-5.779e-02     \-0.057792

   0.1000   0.999166944   0.999722253      \-5.558e-04     \-0.055577

   0.0100   0.999991667   0.999997222      \-5.556e-06     \-0.055556

   0.0010   0.999999917   0.999999972      \-5.507e-08     \-0.055067

> **Relative anisotropy → k²/18**, i.e. it vanishes as (a/λ)² for wavelength λ ≫ a.

So the √3 of §9.2 is a property of one tick, and it does not survive to observables. Turning the 10⁻¹⁸ resonator bound around gives a **constraint on the lattice spacing** rather than a refutation: `[computed]`

| spacing a | predicted optical anisotropy |
| :---- | :---- |
| Planck, 1.6×10⁻³⁵ m | 2.25×10⁻⁵⁷ |
| 1 fm | 8.77×10⁻¹⁸ |

| bound on anisotropy | implied limit on a (500 nm probe) |
| :---- | :---- |
| 10⁻¹⁷ | a \< 1.07 fm |
| 10⁻¹⁸ | a \< 0.34 fm |

**The framework is not falsified by these experiments.** It is required to have a lattice spacing below roughly a third of a femtometre — a constraint any Planck-scale or nuclear-scale lattice satisfies with enormous room. This should be stated in the paper *as a derived bound*, which reads as a strength rather than a liability.

Two genuine concerns remain, and they are research problems rather than refutations:

1. **Naturalness / radiative amplification.** In Lorentz-violating effective theories, Planck-suppressed violation can be amplified to O(1) at low energy by loop corrections unless a symmetry protects it (Collins, Perez, Sudarsky, Urrutia). This is the sharp version of the objection and it is unresolved in the field generally, not specific to this construction — but a referee may raise it and it deserves a paragraph.  
2. **Preferred frame.** A regular lattice has a rest frame; a Poisson sprinkling in Minkowski space does not, which is why causal set theory abandoned regularity. What the lattice frame is, and why it is unobservable at leading order, needs an answer.

### 9.5 Moment isotropy: how few axes are enough

Directional resolution is not limited by coordination number. The number of distinct primitive lattice directions within radius R grows as R³, so angular spacing falls as R^(−3/2): `[computed]`

| R | distinct directions | angular spacing |
| :---- | :---- | :---- |
| 1 | 6 | 82.92° |
| 2 | 26 | 39.83° |
| 3 | 98 | 20.52° |
| 5 | 410 | 10.03° |
| 10 | 3458 | 3.45° |
| 20 | 27818 | 1.22° |
| 40 | 222962 | 0.43° |

Coordination number limits directions available *per tick*, not directions available to the process. But the quantity that actually governs isotropy is not a count — it is which spherical-harmonic moments vanish: `[computed]`

| shell | off-diag ⟨nᵢnⱼ⟩ | ⟨n₁⁴+n₂⁴+n₃⁴⟩ | deviation from 3/5 |
| :---- | :---- | :---- | :---- |
| 6 axial | 0 (exact) | 1 | **\+0.400000** |
| 12 face | 0 (exact) | 1/2 | −0.100000 |
| 8 body | 0 (exact) | 1/3 | −0.266667 |

Degree 2 is exact for all three — this is why G(x) came out spherically symmetric. Degree 4 fails, **and the axial shell deviates with the opposite sign to the other two**, so mixtures cancel it exactly:

- axial : body \= **2/5 : 3/5**  
- axial : face \= **1/5 : 4/5**

And the hop distribution of §5.4 is already largely self-cancelling: weighting the actual landing sites (null excluded) gives ⟨n₁⁴+n₂⁴+n₃⁴⟩ \= 0.626046, a **\+4.34%** degree-4 anisotropy rather than the \+40% or −27% of a single shell. Degree 2 is numerically exact (off-diagonal 5×10⁻¹⁸).

**Route to §9.4 option 3\.** Tuning shell weights to kill the degree-4 moment pushes the observable anisotropy from O((a/λ)²) to O((a/λ)⁴), relaxing the spacing bound by many orders of magnitude. Not needed to survive current data, but it is a concrete mechanism rather than a hope, and it makes the weighting choice of §7.4 physically consequential for a third reason.

**Near-miss worth checking.** The exact cancelling mixture is 2/5 : 3/5 — the same pair of rationals as the §5.5 hop parity split — but with the shells **swapped** (there, 2/5 was the body-diagonal family). Either something is inverted in the identification, or it is a coincidence of small rationals. Worth ten minutes to find out which. `[conjecture]`

### 9.6 Momentum as bias, and the absence of time dilation

An unbiased walk has zero mean displacement — a particle **at rest**. Give the step distribution a drift and you have momentum. So **momentum is the bias of the walk**, and the natural implementation is an exponential tilt (maximum entropy at fixed mean displacement): p(s) ∝ exp(β·s), giving Z \= 2 cosh β \+ 4 for a tilt along x. `[computed]`

| β | E\[T\] | E\[disp\_x\] | v \= disp/T | P(null) | P(null)/P(null at rest) | 1/γ |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| 0.0 | 4.000000 | 0.000000 | 0.000000 | 0.218714 | 1.000000 | 1.000000 |
| 0.4 | 4.000000 | 0.533259 | 0.133315 | 0.203783 | 0.931734 | 0.991074 |
| 1.0 | 4.000000 | 1.326756 | 0.331689 | 0.143407 | 0.655682 | 0.943389 |
| 2.0 | 4.000000 | 2.517693 | 0.629423 | 0.048122 | 0.220020 | 0.777063 |
| 3.0 | 4.000000 | 3.320569 | 0.830142 | 0.010444 | 0.047752 | 0.557552 |
| 6.0 | 4.000000 | — | 0.990170 | 0.000036 | — | — |

**Two results survive the bias.**

1. **E\[T\] \= 4 exactly, at every finite bias.** On a finite group the uniform distribution is stationary for *any* step distribution — translation invariance makes the transition matrix doubly stochastic — so Kac's lemma needs only irreducibility, and every strictly positive bias still reaches all three non-identity cosets of **Z**³/Λ\_BCC. Only the singular limit β → ∞, where the walk moves in one direction alone, drops to E\[T\] \= 2\.  
2. **Drift velocity saturates at 1**, the axial light-cone speed of §9.2 — a consistency check between the ballistic bound and the biased-walk dynamics.

**And one thing breaks: there is no time dilation.**

The hop clock is *exactly* speed-independent. Internal cycles per coordinate tick stay at 1/4 no matter how fast the particle drifts; relativity requires 1/(4γ). The null-hop rate does fall with speed, but at the wrong rate: `[computed]`

        v     P0/P0(rest)   1/gamma   (1-ratio)/v^2   (1-1/gamma)/v^2

 0.016667      0.998885    0.999861       4.0153           0.5000

 0.033333      0.995548    0.999444       4.0066           0.5001

 0.066666      0.982346    0.997775       3.9723           0.5006

> The null-hop rate falls as **1 − 4v²**; relativity needs **1 − v²/2**. A constant factor of 8, so no reparametrisation of the clock repairs it.

**What this means — a reframing rather than a repair.** Counting ticks gives *absolute* time, and absolute time has no dilation. That is not a defect in the walk; it is what a lattice with a global tick count *is*. The consequences are structural and should be absorbed rather than argued with:

- The hop clock is a **coordinate-time** clock, not proper time.  
- The null hop is therefore a feature of the regulator, not directly a mass.  
- **The walk is the regulator; the physics is in the emergent excitation spectrum.** If the framework wants special relativity, dilation must come from a Lorentz-invariant dispersion relation for collective excitations — exactly the mechanism that suppressed the anisotropy in §9.4 — not from hop/tick bookkeeping.

Note the asymmetry with §9: an O(v²) discrepancy is not suppressed by any power of (a/λ), so it cannot be hidden at long wavelength. But it is also only a *prediction* of the framework if the tick count is claimed to be proper time. The fix is to stop claiming that, and to relocate the search for relativistic kinematics into the excitation spectrum.

### 9.7 Implementing the bias: three options, and why the tilt is the wrong one

The exponential tilt of §9.6 has a defect that only shows up when you ask where the bias should live. It couples the odd and even moments, so a moving particle's step covariance becomes anisotropic — **and with the wrong sign**: `[computed]`

| β | ⟨sₓ²⟩ | ⟨s\_y²⟩ | ratio | longitudinal spread |
| :---- | :---- | :---- | :---- | :---- |
| 0.0 | 0.333333 | 0.333333 | 1.0000 | — |
| 0.5 | 0.360537 | 0.319731 | 1.1276 | **stretched** along motion |
| 1.0 | 0.435519 | 0.282240 | 1.5431 | **stretched** along motion |
| 2.0 | 0.652910 | 0.173545 | 3.7622 | **stretched** along motion |

A moving charge's field is *compressed* longitudinally (E∥ \~ 1/γ², E⊥ \~ γ). The tilt stretches it. So the tilt is not merely inelegant; it predicts the wrong field shape for a moving charge.

**Option A — wall bias.** Leave the bulk perfectly uniform and isotropic; make the reflection probability direction-dependent at the cell boundary, so momentum lives entirely in the boundary condition. This is conceptually attractive — it also closes the §5.7 conservation puzzle, since asymmetric reflection *is* an asymmetric wall pressure, and the momentum is stored in the pressure imbalance rather than lost to an unaccounted recoil. It works, but the momentum capacity is negligible and collapses with cell size: `[computed]`

| cell | model | E\[T\] | v\_max (one wall fully transparent) |
| :---- | :---- | :---- | :---- |
| 3³ | reflect-or-transmit | 3.810651 | 0.058747 |
| 5³ | reflect-or-transmit | 3.959316 | 0.009596 |
| 7³ | reflect-or-transmit | 3.990862 | 0.002144 |
| 3³ | reflect-or-stay | 4.214489 | 0.014549 |
| 5³ | reflect-or-stay | 4.022767 | 0.002851 |

v\_max falls roughly as L⁻⁴ — not the L⁻¹ a de Broglie relation would want. The wall only sees \~1/35 of ticks in a 5³ cell, so there is almost nothing for the asymmetry to act on. **Relativistic momenta are unreachable this way.** Also note E\[T\] is no longer exactly 4: transmission adds an absorption channel and "stay" adds a quotient self-loop, so the §5.8 theorem (which covers *pure* reflection) does not extend to either.

**Option B — pure odd-moment bias in the bulk. Recommended.** Put the asymmetry entirely in the first moment and hold the second moment fixed:

> p(+x) \= (1/3 \+ m)/2,  p(−x) \= (1/3 − m)/2,  p(±y) \= p(±z) \= 1/6

Then ⟨sₓ²⟩ \= ⟨s\_y²⟩ \= ⟨s\_z²⟩ \= 1/3 for every m, with |m| ≤ 1/3. `[computed]`

| m | ⟨sₓ²⟩ | ⟨s\_y²⟩ | E\[T\] | E\[disp\_x\] | v | P(null) |
| :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| 0.0000 | 0.333333 | 0.333333 | 4.000000 | 0.000000 | 0.000000 | 0.218714 |
| 0.1000 | 0.333333 | 0.333333 | 4.000000 | 0.400000 | 0.100000 | 0.209971 |
| 0.2000 | 0.333333 | 0.333333 | 4.000000 | 0.800000 | 0.200000 | 0.184253 |
| 0.3333 | 0.333333 | 0.333333 | 4.000000 | 1.333333 | 0.333333 | 0.125958 |

Three exact results: the covariance stays perfectly isotropic at every speed; **E\[T\] \= 4 exactly** even at m \= 1/3 where one direction has zero weight (the remaining five steps still reach all three non-identity cosets, so Kac applies); and **v \= m exactly**, since E\[disp\] \= 4m and E\[T\] \= 4\.

**A candidate for c.** The isotropy constraint caps the axial drift at 1/3. That is a more natural candidate for the speed of light than the light-cone maximum of 1: it is the fastest drift compatible with isotropic diffusion, and v/c \= 3m runs cleanly over \[0,1\].

**But the √3 does not go away.** Each component can independently reach 1/3, so the attainable drift set is the cube \[−1/3, 1/3\]³ — magnitude 1/3 axially, 1/√3 \= 0.577 diagonally. Same √3 anisotropy as §9.2, and for the same reason: none of these options changes the *support* of the step set, and the support is what fixes the cone. Option B relocates the anisotropy from the covariance (where it was wrong and observable) to the speed bound (where §9.4's (a/λ)² suppression applies). That is progress, not escape.

## 10\. Open items, ranked

1. **Build the current, not the occupation** (§8.5). Compute the walk's net probability current with the origin as injector, verify that the discrete flux through nested closed surfaces is constant and equal to the injection rate, and read the field off as flux density. This replaces the visit-count field, supplies both signs of charge, and turns 1/r² into a conservation theorem. Highest-value *constructive* item.  
2. **π/3 from C₃ᵥ plus tick parity** (§4). If 2π/3 halves to π/3 over a two-tick cycle, the hydrogen result becomes a derivation. 2b. **Reconcile the two parities** (§5.5). The walk gives P(odd) : P(even) \= 2/5 : 3/5; the framework's tick alternation wants 1/2 : 1/2. One of them has to move.  
3. **Fix the hop rule** to first-return (§5.3) and propagate E\[T\] \= 4 through anything that currently uses a different ratio.  
4. **The tail — resolved, pending a decision** (§5.6). Box confinement removes it by construction. Adopt the **5×5×5 cell with reflecting boundaries** unless there is a reason not to: no tail, E\[T\] \= 4 exactly, body share exactly 2/5, degree-4 anisotropy −0.14%. Then propagate the reflecting-cell rationals (denominator 210\) through §8, and work out *why* one convention delivers all three of those at once.  
5. **Weight sensitivity** (§5.1). Corner dominance fails under some weightings. Characterise the admissible weight region and publish it as a constraint.  
6. **Four or three?** (§6). The permutohedron's index set has four elements and T³\_diamond has four tetrahedral directions. Is that the same 4? 6b. **Close the three gaps in the rule derivation** (§5.9): choose the step support on a stated principle; derive second-moment isotropy from Lorentz covariance of the emergent field rather than assuming it; and let A=1 fix the conserved density's behaviour at a wall, which then picks the boundary convention. The second of these is the most valuable — it would turn §9.7's central assumption into a theorem.  
7. **Direction-space vs position-space parity** (§3). Independent or locked?  
8. **Degree-4 moment cancellation** (§9.5). Optional rather than required, but it buys many orders of magnitude on the spacing bound and makes §7.4's weighting choice consequential. Also: resolve the 2/5 : 3/5 shell-swap near-miss.  
9. **Lorentz naturalness and the preferred frame** (§9.4). Not a falsification, but a referee will ask. Needs a paragraph, not a derivation.  
10. **Relocate relativistic kinematics into the excitation spectrum** (§9.6). The tick count is coordinate time and does not dilate; the null-hop rate falls as 1 − 4v² against the required 1 − v²/2. Stop treating the hop clock as proper time, and look for dilation in the dispersion relation of collective excitations instead. This is a change of what the walk is *for*, so it affects how §8's field results should be presented.

## 11\. Experimental program

These are computational experiments in core3d, ordered by kill-power per unit effort and respecting dependencies. **Write each kill condition down before running the experiment.** The framework has a live falsification list, and pre-registering the failure criterion is what separates a test from a rationalisation.

### 11.1 What needs no experiment

Already closed by exact computation in this document; do not re-derive: the ‖V‖₁ \= ‖V‖₂² identity (§2), the multinomial first-passage rule (§5.1), E\[T\] \= 4 by Kac's lemma and its invariance under bias and reflecting confinement (§5.8, §7.1, §9.6), the three Voronoi cells and the permutohedron identification (§6, §7.3), the sublattice-index chain (§7), G(x) → 3/(2π⟨|s|²⟩|x|) with coupling \= 1/D (§8.2, §8.3), the step-linear charge no-go (§8.5), the confined-cell hop rationals (§5.6), the boundary stationary measures (§5.9), the per-shell moment table (§9.5), and the (ka)²/18 dispersion anisotropy (§9.4).

### 11.2 The program

| ID | Tests | Build | Kill condition | Effort | Depends on |
| :---- | :---- | :---- | :---- | :---- | :---- |
| **E0.1** | Parity bookkeeping | No code. Compare §5.5's P(odd) : P(even) \= 2/5 : 3/5 against the existing f\_beat \= 0.5 − f\_zitt definition | The two parities are the same object with different values → one published claim is wrong | hours | — |
| **E0.2** | Baseline capture | Re-run the existing hydrogen spectrum on current code; freeze outputs and environment | — (this is instrumentation, not a test) | hours | — |
| **E0.3** | Proper-time audit | Inventory every claim that treats the tick count as proper time (§9.6) | Any load-bearing result depends on it → rewrite before publishing | hours | — |
| **E1** | Discrete Gauss law and signed charge | Net probability current with the origin as injector; sum discrete flux over nested closed surfaces; read field as flux density; repeat with the origin as absorber | Flux not constant across surfaces, or no construction yields two signs → §8.5's resolution fails and the field has no charge | days | — |
| **E2** | Does the confined reflecting cell survive contact with the one real result? | Swap the hop rule in core3d to the 5×5×5 reflecting cell (§5.6); re-run hydrogen against the E0.2 baseline | Spectrum degrades → either the cell is wrong, or the earlier agreement was riding on the unconfined tail | days–weeks | E0.2 |
| **E3** | Whether relativity is recoverable at all | A local wave dynamics (two-component / second order in time) on the lattice; measure group velocity vs direction and vs k; look for γ-dilation of an internal frequency | No local dynamics gives dilation → the framework is Galilean, and SR must be abandoned or imported | weeks–months | E1, E2 |
| **E4** | Emergent Lorentz suppression, for the real model | Group-velocity anisotropy of E3's dynamics vs (ka)²; compare to the k²/18 toy law of §9.4 | Anisotropy not suppressed by (a/λ)² or better → the §9.4 escape does not apply to the actual dynamics | weeks | E3 |
| **E5** | π/3 as a consequence | Attempt 2π/3 from the C₃ᵥ stabiliser halved by tick parity (§4); check against E2's spectrum | Derivation does not close → the hydrogen agreement stays a fitted coincidence, and must be presented as one | weeks | E2 |
| **E6** | Isotropy refinement (optional) | Solve shell weights for zero degree-4 moment (§9.5); check the solution against §5.1's corner-dominance constraint | No admissible weights satisfy both → the isotropy improvement is unavailable, though not required by data | days | E2 |
| **E7** | Parity independence | Whether direction-space and position-space parities are locked (§3) | — (structural, informs E3) | days | — |

### 11.3 Sequencing notes

**Do all of E0 first.** They cost hours, need no new code, and each can invalidate a claim you would otherwise carry into everything downstream. E0.1 in particular: if 2/5 : 3/5 and f\_beat's 1/2 : 1/2 are the same object, something already in print is wrong, and you want to know that before building on it.

**E0.2 gates E2.** Without a frozen baseline, a post-swap hydrogen run is uninterpretable — you will not be able to separate "the confined cell changed the answer" from "the code changed since the last run." This is the cheapest possible sequencing mistake to avoid and the most common one.

**E2 must precede E3.** If hydrogen breaks under the confined cell, the hop rule changes, and any dynamics built on the old rule is wasted. E3 is weeks-to-months of work; do not start it on a geometry that E2 might invalidate.

**E1 is independent and should run in parallel with E0/E2.** It touches only the field formalism, has no dependency on the hop rule, and its failure mode is contained.

**E3 is the decision point for the whole framework.** Everything before it establishes geometry; E3 asks whether that geometry can carry relativistic kinematics. A negative result there is not a setback to be worked around — it is the answer, and it would mean the construction describes something other than spacetime. Budget for that outcome honestly before starting.

E5 and E6 are refinements. They make the story better if E1–E4 pass and are worthless if they do not, so they go last regardless of how interesting they are.

## Appendix A — scripts

| file | what it computes |
| :---- | :---- |
| `hop_fpd.py` | Rule A: exact first-passage distribution on the cubic-radius-3 shell; step sets and weights configurable |
| `both68.py` | BCC Voronoi facets by neighbour shell; permutohedron comparison |
| `branch68.py` | Rule B: first-return branching and waiting-time law for the axial walk |
| `shells_6_12_8.py` | Kac's-lemma hop times, first-return branching for all step sets, all three Voronoi cells |
| `greens.py` | Lattice Green's function; the 3/(2π) inverse-square check |
| `charge.py` | The step-linear charge no-go, subset drift, coupling constant from ⟨|s|²⟩, sublattice-charge dead end |
| `lightcone.py` | Ballistic cone shape and √3 anisotropy versus the exactly isotropic diffusive covariance |
| `isotropy.py` | Direction counting vs radius, per-shell degree-2/degree-4 moments, cancelling mixtures, hop-distribution anisotropy |
| `confined.py` | Box-confined Markov chains (3×3×3, 5×5×5) under three boundary conventions; exact hop rationals and degree-4 moments |
| `biased.py` | Exponentially tilted (momentum-carrying) walk: E\[T\] invariance, drift saturation at v \= 1, and the failed time-dilation check |
| `reflbias.py` | Tilt covariance anisotropy and its sign; wall-biased walks (reflect-or-transmit, reflect-or-stay) and their momentum capacity vs cell size |

## Appendix B — the 38 points of the taxicab sphere L¹ \= 3

`[computed]` Sum over classes: 6 \+ 24 \+ 8 \= 38 \= 4r² \+ 2 at r \= 3\. Per-site first-passage probabilities are the multinomial rule of §5.1 and sum to exactly 1\.

**|coords| \= (3,0,0)** — n \= 6, |v| \= 3, paths/site \= 1, p/site \= 1/126 \= 0.00793651, not on BCC

(-3, 0, 0\)  ( 0,-3, 0\)  ( 0, 0,-3)  ( 0, 0, 3\)  ( 0, 3, 0\)  ( 3, 0, 0\)

**|coords| \= (2,1,0)** — n \= 24, |v| \= √5 \= 2.236068, paths/site \= 3, p/site \= 3/126 \= 0.02380952, not on BCC

(-2,-1, 0\)  (-2, 0,-1)  (-2, 0, 1\)  (-2, 1, 0\)  (-1,-2, 0\)  (-1, 0,-2)

(-1, 0, 2\)  (-1, 2, 0\)  ( 0,-2,-1)  ( 0,-2, 1\)  ( 0,-1,-2)  ( 0,-1, 2\)

( 0, 1,-2)  ( 0, 1, 2\)  ( 0, 2,-1)  ( 0, 2, 1\)  ( 1,-2, 0\)  ( 1, 0,-2)

( 1, 0, 2\)  ( 1, 2, 0\)  ( 2,-1, 0\)  ( 2, 0,-1)  ( 2, 0, 1\)  ( 2, 1, 0\)

**|coords| \= (1,1,1)** — n \= 8, |v| \= √3 \= 1.732051, paths/site \= 6, p/site \= 6/126 \= 0.04761905, **on BCC**

(-1,-1,-1)  (-1,-1, 1\)  (-1, 1,-1)  (-1, 1, 1\)  ( 1,-1,-1)  ( 1,-1, 1\)

( 1, 1,-1)  ( 1, 1, 1\)

**Three independent criteria select the same eight points.** On this shell the corners are simultaneously (i) the Euclidean-*nearest* points, (ii) the only BCC lattice points, and (iii) the maximum first-passage weight. The shell spans Euclidean radii 1.732051 to 3 — a factor of √3, the same L¹/L² anisotropy that reappears as the light-cone anisotropy in §9.2. A taxicab sphere is an octahedron surface, not a sphere, and its octahedral vertices (3,0,0) are the *farthest* Euclidean points on it, not the nearest.

## Appendix C — literature to cite

**Digital geometry (the object is theirs).** Digital distance functions and neighbourhood-sequence / weighted distances on the BCC and FCC grids — Strand, Nagy, Borgefors and collaborators. The 14-neighbourhood is studied there because it approximates Euclidean distance markedly better than the cubic 6/18/26 neighbourhoods, which supplies a non-anthropic, externally-citable reason for the stencil choice. Emergent isotropy is normally what kills discrete spacetime models, so this citation is worth more to a sceptical reader than any elegance argument.

- *Digital distance functions on three-dimensional grids* — Strand, Nagy, Borgefors, Theoretical Computer Science  
- *Approximating Euclidean distance using distances based on neighbourhood sequences in non-standard three-dimensional grids*  
- *Weighted distances based on neighbourhood sequences*  
- *Body Centered Cubic Grid — Coordinate System and Discrete Analytical Plane Definition*

**Graph products.** Weichsel's theorem on connectivity of tensor products of bipartite graphs.

**Subordination.** Montroll–Weiss continuous-time random walk, for the step-time / hop-time decoupling.

**Trembling from lattice walks (precedent to position against).** Feynman's checkerboard model; the Dirac quantum-walk literature. Two-timescale lattice walks producing zitterbewegung is not new. What appears unclaimed is first passage to a taxicab shell with the multinomial selection rule, and the categorical treatment of the 14-neighbourhood with A=1 as a functorial rather than imposed balance.

**Standard machinery.** Kac's lemma (mean return time \= 1/stationary measure); random-walk Green's function asymptotics G(x) \~ d Γ(d/2−1) / (2 π^{d/2} |x|^{d−2}), which is 3/(2π|x|) at d \= 3\.

**Lorentz-invariance bounds (§9) — cite these, do not paraphrase them.**

- *Direct Terrestrial Test of Lorentz Symmetry in Electrodynamics to 10⁻¹⁸* — [https://arxiv.org/html/1412.6954](https://arxiv.org/html/1412.6954)  
- *Improved constraints on isotropic shift and anisotropies of the speed of light using rotating cryogenic sapphire oscillators*, Phys. Rev. D 82, 076001 — [https://journals.aps.org/prd/abstract/10.1103/PhysRevD.82.076001](https://journals.aps.org/prd/abstract/10.1103/PhysRevD.82.076001)  
- *Modern Michelson–Morley experiment using cryogenic optical resonators* — [https://arxiv.org/abs/physics/0305117v1](https://arxiv.org/abs/physics/0305117v1)  
- Causal set theory's argument for abandoning lattice regularity — Bombelli, Henson, Sorkin on discreteness and Lorentz invariance. The relevant claim is that a Poisson sprinkling in Minkowski space is boost-invariant while a regular lattice is not; get the exact statement from the source before citing it.

