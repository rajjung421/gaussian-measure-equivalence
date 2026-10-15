# Learning notes: Gaussian measures, equivalence, and an aquifer prior

Slow, computational notes on the mathematics behind a groundwater-prior experiment: when can a
stationary Gaussian (SPDE) prior be *corrected* to account for wells, leakage, or a conductivity
lens, and when must the operator itself change? The guiding tool is the Feldman–Hájek theorem.

**Website:** see the GitHub Pages link in the repository sidebar (built from `docs/`).

## Contents

| Chapter | Notebook | Topic |
|---|---|---|
| 1 | [`01_feldman_hajek.ipynb`](01_feldman_hajek.ipynb) | Equivalent vs singular Gaussian measures; Kakutani's $\sum t_j^2$ condition; mean shifts and the Cameron–Martin space; range $\kappa$ vs amplitude $\tau$ (microergodicity); a 1D leaky-aquifer test with well, leakage and lens |

The written notes are in [`notes.tex`](notes.tex) / [`notes.pdf`](notes.pdf); every figure in them is
produced by the notebooks (saved to `figs/`).

**Core intuition:** two Gaussian measures are equivalent iff a single, infinitely resolved sample
cannot tell them apart. Changes that persist to the finest scales (amplitude, the conductivity in
$-\nabla\cdot(K\nabla u)$) are singular; changes confined to coarse scales or lower-order terms
(range, wells, leakage) are equivalent.

## Run it

```bash
python -m venv .venv && .venv/Scripts/pip install -r requirements.txt   # (bin/ on Linux/macOS)
jupyter notebook 01_feldman_hajek.ipynb
bash build.sh      # compile notes.pdf (needs pdflatex)
bash publish.sh    # refresh the website in docs/
```

## Key references

- J. Feldman (1958); J. Hájek (1958); S. Kakutani (1948).
- G. Da Prato & J. Zabczyk, *Stochastic Equations in Infinite Dimensions*, 2nd ed. (2014), Thm 2.25.
- H. Zhang (2004), JASA 99:250–261 — microergodic parameters.
- D. Bolin & K. Kirchner (2023), Bernoulli 29(2):1476–1504 — equivalence for variable-coefficient SPDE fields.
- S. Agapiou, J. Bardsley, O. Papaspiliopoulos & A. Stuart (2014), SIAM/ASA JUQ 2:511–544 — centred vs non-centred samplers.

Author: Raj Mahat (Georgia Tech).
