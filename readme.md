# PhD Thesis *Diversification Models and Neural Inference*

<p align="center">
  <a href="https://github.com/EvoLandEco/Thesis/releases/latest">
    <img alt="Latest release" src="https://img.shields.io/github/v/release/EvoLandEco/Thesis?display_name=tag&sort=semver">
  </a>
  <a href="https://github.com/EvoLandEco/Thesis/releases">
    <img alt="Pre-release" src="https://img.shields.io/github/v/release/EvoLandEco/Thesis?include_prereleases&label=pre-release">
  </a>
  <a href="https://github.com/EvoLandEco/Thesis/releases">
    <img alt="Downloads" src="https://img.shields.io/github/downloads/EvoLandEco/Thesis/total">
  </a>
  <a href="https://github.com/EvoLandEco/Thesis/commits/main">
    <img alt="Last commit (main)" src="https://img.shields.io/github/last-commit/EvoLandEco/Thesis/main?label=last%20commit%20(main)">
  </a>
  <a href="https://github.com/EvoLandEco/Thesis/commits/compiled-pdf">
    <img alt="Last commit (compiled PDF)" src="https://img.shields.io/github/last-commit/EvoLandEco/Thesis/compiled-pdf?label=compiled%20pdf%20commit">
  </a>
  <a href="LICENSE">
    <img alt="License" src="https://img.shields.io/github/license/EvoLandEco/Thesis">
  </a>
</p>

<p align="center">
  <kbd><img src="cover.png" alt="Thesis front cover" width="420"></kbd>
</p>

This repository contains the complete LaTeX source, figures, and supporting files for my PhD thesis.

---

## Download the compiled PDF

- **Official (recommended): Latest release**  
  https://github.com/EvoLandEco/Thesis/releases/latest

- **Most recent build (not an official release): auto-compiled PDF**  
  Direct link: https://raw.githubusercontent.com/EvoLandEco/Thesis/compiled-pdf/Thesis.pdf  
  Build commit: https://github.com/EvoLandEco/Thesis/commits/compiled-pdf

---

## Automated PDF compilation

A GitHub Actions workflow compiles the thesis on each push and publishes the newest PDF to the `compiled-pdf` branch (link above). Use releases for stable, versioned PDFs.

---

## Supplementary materials

Large or numerous supplementary files (e.g., extra figures, animations, and supporting materials) are maintained here:

- EvoLandEco/Thesis-Appendix: https://github.com/EvoLandEco/Thesis-Appendix/

---

## Publications

- **Qin, T.**, Valente, L.â , & Etienne, R.â  (2025). *Impact of evolutionary relatedness on species diversification and tree shape.* **Journal of Theoretical Biology**.  
  ð Awarded the inaugural *Denise Kirschner Best Student Paper Prize* (2025).  
  â  Joint senior authors.

- **Qin, T.**, van Benthem, K., Valente, L.â , & Etienne, R.â  (2025). *Parameter estimation from phylogenetic trees using neural networks and ensemble learning.* **Systematic Biology**.  
  â  Joint senior authors.

- **Qin, T.**, van Benthem, K., Valente, L.â , & Etienne, R.â . *Identifying evolutionary relatedness effects on diversification from phylogenies using neural networks.* Manuscript in preparation.  
  â  Joint senior authors.

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

This project is intended to be compiled on Overleaf (the source works as-is there).

### Option A: Upload a ZIP
1. Click **Code â Download ZIP** on GitHub.
2. In Overleaf, create a new project and **Upload Project** (ZIP).
3. Set the **Main file** to `dissertation.tex`.

### Option B: GitHubâOverleaf sync
If you use Overleafâs GitHub integration, link this repository to your Overleaf project and keep the repo as the single source of truth.

---

## Repository structure

- `dissertation.tex` â main entry file  
- `dissertation.cls` â custom class/style  
- `dissertation.bib` â references  
- `title/` â title page sources (and cover preview image)  
- `introduction/` â introduction sources  
- `chapter*/` â chapter sources  
- `acks/` â acknowledgements sources  
- `conclusion/` â conclusion sources  
- `summary/` â summary sources  
- `cv/` â CV sources  
- `publications/` â publication sources  

---

## License

- Code and build/config files: see [LICENSE](LICENSE)