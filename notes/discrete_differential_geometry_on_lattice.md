# Discrete Differential Geometry on the Lattice

**Status:** DRAFT
**Purpose:** Working space for the discrete exterior calculus on
$\Lambda_n$ -- forms, $d$, codifferential, integration by parts,
connections, curvature.
**Cited by:** `paper/sections/discrete_diff_geometry.tex`.

---

## Setup

The lattice $\Lambda_n$ has a natural cell complex (vertices, edges,
plaquettes, $k$-cells).  Discrete exterior calculus assigns
$k$-forms to $k$-cells; the discrete $d$ is a signed boundary sum.

## Argument

Standard discrete-exterior-calculus moves, specialised to $\Lambda_n$:

1. **Forms.**  $\Omega^k(\Lambda_n)$ = functions on oriented $k$-cells.
2. **Exterior derivative.**  $d \colon \Omega^k \to \Omega^{k+1}$ via
   signed boundary.  $d^2 = 0$.
3. **Inner product.**  Bilinear form on $\Omega^k$ via the
   counting / Haar measure of [[discrete_measure_theory_on_lattice]].
4. **Codifferential.**  $d^\ast$ as formal adjoint.
5. **Stokes.**  $\langle d\alpha, \beta\rangle = \langle\alpha, d^\ast\beta\rangle$
   + boundary terms (vanishing for compactly-supported forms).
6. **Connections.**  Discrete connection 1-forms on edges; parallel
   transport along paths; plaquette holonomy.
7. **Curvature.**  Curvature 2-form on plaquettes; failure of
   holonomy to commute.

## Open questions

1. How does the bipartite colour structure interact with the
   $k$-cell orientation?  Specifically, plaquettes connecting four
   vertices may have two of each colour -- does this force any
   orientation convention?
2. Is there a natural Hodge star on $\Lambda_n$, or do we need to
   choose extra structure (a metric on edges)?  The continuum Hodge
   star uses an orientation + metric; the lattice analogue needs the
   same data.
3. What is the right discrete-Bianchi-identity statement?  $dF = 0$
   for $F = d A$ is automatic; nontrivial Bianchi statements may
   require curvature 2-forms in nonabelian connections.
4. Paper II's gauge programme already uses lattice connections; does
   their setup match the $n$-D discrete exterior calculus here, or
   should this section cite and re-derive?

## Pointers

- Related notes: [[function_spaces_on_lattice]] (the
  $\ell^p$ structure on which $d^\ast$ depends);
  [[discrete_measure_theory_on_lattice]] (the inner product);
  [[discrete_to_continuum_limits]] (the $\epsilon \to 0$ limit of
  $d$).
- Related paper sections: \S\ref{sec:discrete_diff_geometry}.
- External references: Bossavit, Hirani / Desbrun (discrete exterior
  calculus); add to `paper-bib/references.bib` when sections start
  citing.
