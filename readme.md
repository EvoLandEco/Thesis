# PhD Thesis *Diversification Models and Neural Inference*

[![Downloads](https://img.shields.io/github/downloads/EvoLandEco/Thesis/total)](https://github.com/EvoLandEco/Thesis/releases)
[![Last commit](https://img.shields.io/github/last-commit/EvoLandEco/Thesis)](https://github.com/EvoLandEco/Thesis/commits/main)
[![License](https://img.shields.io/github/license/EvoLandEco/Thesis)](LICENSE)

This repository contains the complete LaTeX source, figures, and supporting files for my PhD thesis.

<p align="center">
  <kbd>
    <img src="cover.png" alt="Thesis front cover" width="420">
  </kbd>
</p>

---

## Download the compiled PDF

### Online version
<a href="https://github.com/EvoLandEco/Thesis/releases/latest"> 
  <img alt="Latest release" src="https://img.shields.io/badge/PDF-latest%20release-brightgreen"> 
</a> 

<a href="https://github.com/EvoLandEco/Thesis/releases/latest"> 
  <img alt="Release version" src="https://img.shields.io/github/v/release/EvoLandEco/Thesis?display_name=tag&sort=semver&label=version"> 
</a>

- Latest release page: [Click Here](https://github.com/EvoLandEco/Thesis/releases/latest)

### Printed version
<a href="https://github.com/EvoLandEco/Thesis/releases/latest">
  <img alt="Printed version PDF" src="https://img.shields.io/badge/PDF-printed%20version-6f42c1">
</a>

<a href=#>
  <img alt="Printed version status" src="https://img.shields.io/badge/version-not%20available-lightgrey">
</a>

- PDF-for-print release: Not available yet

### Most recent build

<a href="https://raw.githubusercontent.com/EvoLandEco/Thesis/compiled-pdf/Thesis.pdf">
  <img alt="Auto-compiled PDF" src="https://img.shields.io/badge/PDF-auto--compiled-blue">
</a>
<a href="https://github.com/EvoLandEco/Thesis/commits/compiled-pdf">
  <img alt="Compiled PDF commit" src="https://img.shields.io/github/last-commit/EvoLandEco/Thesis/compiled-pdf?label=branch%20commit">
</a>
<a href="https://github.com/EvoLandEco/Thesis/actions/workflows/latex.yml">
  <img alt="Build status" src="https://img.shields.io/github/actions/workflow/status/EvoLandEco/Thesis/latex.yml?branch=main&label=build">
</a>

- Direct download link: [Click Here](https://raw.githubusercontent.com/EvoLandEco/Thesis/compiled-pdf/Thesis.pdf)
- Branch history: [Click Here](https://github.com/EvoLandEco/Thesis/commits/compiled-pdf)
- Build workflow: [Click Here](https://github.com/EvoLandEco/Thesis/actions/workflows/compilation.yml)

*The auto-compilation workfow is built on top of [latex-action](https://github.com/xu-cheng/latex-action/).*

---

## Supplementary materials

Additional files that are too large or too numerous for the main thesis repository (e.g., supplementary figures, animations, and supporting materials) are maintained in the companion repository:

- [**EvoLandEco/Thesis-Appendix**](https://github.com/EvoLandEco/Thesis-Appendix/)

---

## Publications

- **Qin, T.**, Valente, L.†, & Etienne, R.† (2025). *Impact of evolutionary relatedness on species diversification and tree shape.* **Journal of Theoretical Biology**. https://doi.org/10.1016/j.jtbi.2024.111992  
  🏆 Awarded the inaugural *Denise Kirschner Best Student Paper Prize* (2025).  
  † Joint senior authors.

- **Qin, T.**, van Benthem, K., Valente, L.†, & Etienne, R.† (2025). *Parameter estimation from phylogenetic trees using neural networks and ensemble learning.* **Systematic Biology**.  https://doi.org/10.1093/sysbio/syaf060  
  † Joint senior authors.

- **Qin, T.**, van Benthem, K., Valente, L.†, & Etienne, R.†. *Identifying evolutionary relatedness effects on diversification from phylogenies using neural networks.* Manuscript in preparation.  
  † Joint senior authors.

---

## Citation

```bibtex
@phdthesis{qin_diversification_2026,
  title  = {Diversification Models and Neural Inference},
  author = {Qin, Tianjian},
  school = {University of Groningen},
  year   = {2026},
}
```

---
## Use on Overleaf
> **Setup note:** This project is intended to be compiled on **Overleaf** (the source works as-is there).
### Option A: Upload a ZIP
1. Click **Code → Download ZIP** on GitHub.
2. In Overleaf, create a new project and **Upload Project** (ZIP).
3. Set the **Main file** to `dissertation.tex`.

### Option B: GitHub–Overleaf sync
If you use Overleaf’s GitHub integration, link this repository to your Overleaf project and keep the repo as the single source of truth.

---

## Repository structure

- `dissertation.tex` — main entry file  
- `acks/` — acknowledgements sources  
- `conclusion/` — conclusion sources  
- `summary/` — summary sources  
- `title/` — title page sources (and cover preview image)  
- `cv/` — CV sources  
- `publications/` — publication sources  
- `introduction/` — introduction sources  
- `chapter*/` — chapter sources  
- `dissertation.cls` — custom class/style  
- `dissertation.bib` — references  

---

## License

- Code and build/config files: see [LICENSE](LICENSE)

---

## Acknowledgements

This thesis repository started from the LaTeX template by [**Moritz Beller**](https://github.com/Inventitech/phd-thesis-template)

I am grateful for this solid foundation. Since adopting it, I have modified and extended the codebase (structure, styling, build/CI workflow, and compatibility fixes). Any remaining issues are my own.

