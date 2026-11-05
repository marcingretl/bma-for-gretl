# BMA for gretl

**Bayesian Model Averaging and Jointness Measures for Linear Regression Models**

BMA is a function package for [gretl](https://gretl.sourceforge.net/), written in **hansl** (gretl's scripting language). It performs Bayesian Model Averaging (BMA) for linear regression models, accounting for uncertainty about the choice of explanatory variables instead of relying on a single selected specification.

The package was developed by **Marcin Błażejowski** and **Jacek Kwiatkowski**. It provides both a graphical interface and a scriptable API.

## Features

- **Bayesian Model Averaging** using MC³ (Markov chain Monte Carlo model composition) to explore the model space.
- **Posterior inclusion probabilities (PIPs)** and unconditional and conditional posterior moments of regression coefficients.
- **Model comparison and ranking** based on posterior model probabilities.
- **Model priors:** binomial, beta-binomial, and custom prior inclusion probabilities.
- **Five choices of g-prior:** benchmark, unit information (UIP), risk inflation criterion (RIC), Hannan–Quinn criterion (HQC), and root-UIP.
- **Seven jointness measures** for studying the tendency of explanatory variables to appear together in models: two Doppelhofer–Weeks measures, two Ley–Steel measures, the Strachan measure, Yule's Q, and modified Yule's Q.
- **Model-averaged out-of-sample forecasting**, graphical summaries, and results returned in gretl bundles.
- **Graphical and script-based interfaces**, with examples and replication materials.

## Requirements and installation

- **gretl 2022c or later** (as declared in `BMA.spec`).
- Windows, Linux, or macOS with a working gretl installation.

The easiest way to install BMA is through **gretl's function package manager**, using the packages available *on server*. Search for **BMA** and install it.

Alternatively, download a packaged release from the [BMA SourceForge files page](https://sourceforge.net/projects/bma-for-gretl/files/) and install it in gretl.

The source tree also contains `BMA.gfn`, the compiled gretl function package, and files used to build it.

## Getting started

You can use BMA through gretl's graphical interface or in a hansl script. The central function is:

```text
BMA(Y, X_list, Options)
```

Here, `Y` is the dependent series, `X_list` is the list of candidate explanatory variables (without `const`), and `Options` is an optional gretl bundle. The function returns a bundle containing the BMA results.

The public functions include:

| Function | Purpose |
| --- | --- |
| `BMA()` | Run Bayesian Model Averaging and return results |
| `BMA_GUI()` | Graphical interface |
| `BMA_Print()` | Print estimation results |
| `BMA_Plot()` | Produce graphical summaries |
| `BMA_OldStyle()` | Backward-compatible interface for older scripts |

For executable examples, see the [`examples/`](https://sourceforge.net/p/bma-for-gretl/code/HEAD/tree/trunk/examples/) directory. In particular:

- `BMA_sample.inp` — basic analysis with default settings.
- `priorIP.inp` — user-specified prior inclusion probabilities.
- `FLS_41t72.inp` — replication based on Fernández, Ley and Steel's cross-country growth study.
- `UKM1.inp` — a UK money-demand application, including forecasts.

The examples include datasets (`.gdt`) and reference output (`.txt`) where appropriate.

## Documentation

The full manual is available as [`doc/BMA.pdf`](https://sourceforge.net/p/bma-for-gretl/code/HEAD/tree/trunk/doc/BMA.pdf). It describes the statistical methodology, model and coefficient priors, jointness measures, options, examples, and outputs.

Source code and supporting materials are organized as follows:

| Path | Contents |
| --- | --- |
| `src/` | Hansl source files |
| `doc/` | Manual, LaTeX sources, and bibliography |
| `examples/` | Example scripts, datasets, and reference results |
| `tests/` | Package tests |
| `BMA.gfn` | Compiled gretl function package |
| `BMA.spec` | Package metadata and public API |
| `Makefile`, `pkg.inp` | Package build scripts |

## How to cite

If you use BMA in research, please cite:

> Błażejowski, M., & Kwiatkowski, J. (2015). Bayesian Model Averaging and Jointness Measures for gretl. *Journal of Statistical Software, 68*(5), 1–24. https://doi.org/10.18637/jss.v068.i05

[Read the article and access supplementary materials](https://www.jstatsoft.org/article/view/v068i05).

## Source repository and GitHub mirror

**SourceForge SVN is the authoritative source repository** for BMA:

- [SourceForge project](https://sourceforge.net/projects/bma-for-gretl/)
- [SVN source browser](https://sourceforge.net/p/bma-for-gretl/code/HEAD/tree/trunk/)
- [Downloads and releases](https://sourceforge.net/projects/bma-for-gretl/files/)

Any GitHub copy is a **read-only mirror** maintained for discoverability and convenient access to the source code. Development and releases are managed on SourceForge.

## License

BMA for gretl is distributed under the **GNU General Public License, version 3 (GPLv3)**. See the [SourceForge project page](https://sourceforge.net/projects/bma-for-gretl/) for licensing information.
