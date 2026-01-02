# PhD Thesis *Diversification Models and Neural Inference*

[![Downloads](https://img.shields.io/github/downloads/EvoLandEco/Thesis/total)](https://github.com/EvoLandEco/Thesis/releases)
[![Last commit](https://img.shields.io/github/last-commit/EvoLandEco/Thesis)](https://github.com/EvoLandEco/Thesis/commits/main)
[![License](https://img.shields.io/github/license/EvoLandEco/Thesis)](LICENSE)

<p align="center">
  <kbd>
    <img src="cover.png" alt="Thesis front cover" width="420">
  </kbd>
</p>

This repository contains the complete LaTeX source, figures, and supporting files for my PhD thesis.

---

## Download the compiled PDF

### Official PDF (stable, versioned)

<a href="https://github.com/EvoLandEco/Thesis/releases/latest">
  <img alt="Latest release" src="https://img.shields.io/badge/PDF-latest%20release-brightgreen">
</a>
<a href="https://github.com/EvoLandEco/Thesis/releases/latest">
  <img alt="Release version" src="https://img.shields.io/github/v/release/EvoLandEco/Thesis?display_name=tag&sort=semver&label=version">
</a>

- Release page: https://github.com/EvoLandEco/Thesis/releases/latest

### Most recent build (not an official release)

<a href="https://raw.githubusercontent.com/EvoLandEco/Thesis/compiled-pdf/Thesis.pdf">
  <img alt="Auto-compiled PDF" src="https://img.shields.io/badge/PDF-auto--compiled-blue">
</a>
<a href="https://github.com/EvoLandEco/Thesis/commits/compiled-pdf">
  <img alt="Compiled PDF commit" src="https://img.shields.io/github/last-commit/EvoLandEco/Thesis/compiled-pdf?label=branch%20commit">
</a>

- Direct link (compiled-pdf branch): https://raw.githubusercontent.com/EvoLandEco/Thesis/compiled-pdf/Thesis.pdf
- Branch history: https://github.com/EvoLandEco/Thesis/commits/compiled-pdf

---

## Automated PDF compilation

A GitHub Actions workflow compiles the thesis on each push and publishes the newest PDF to the `compiled-pdf` branch (see links above). Use releases for stable, citable PDFs.

---

## Supplementary materials

Additional files that are too large or too numerous for the main thesis repository (e.g., supplementary figures, animations, and supporting materials) are maintained in the companion repository:

- **EvoLandEco/Thesis-Appendix:** https://github.com/EvoLandEco/Thesis-Appendix/

---

## Publications

- **Qin, T.**, Valente, L.†, & Etienne, R.† (2025). *Impact of evolutionary relatedness on species diversification and tree shape.* **Journal of Theoretical Biology**.  
  🏆 Awarded the inaugural *Denise Kirschner Best Student Paper Prize* (2025).  
  † Joint senior authors.

- **Qin, T.**, van Benthem, K., Valente, L.†, & Etienne, R.† (2025). *Parameter estimation from phylogenetic trees using neural networks and ensemble learning.* **Systematic Biology**.  
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