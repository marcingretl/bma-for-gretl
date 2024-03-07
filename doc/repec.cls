\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{repec}
\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[a4paper,11pt,twoside]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[pdftex]{color}
\RequirePackage{graphicx,a4wide,array,url,fancyhdr,listings,color,ae,fancyvrb,amsmath,amssymb,rotating,multirow,thumbpdf,float,xspace}

\usepackage[pagebackref=true,unicode]{hyperref}
%   \hypersetup{colorlinks=true}
\usepackage[authoryear,round,longnamesfirst]{natbib}

\DeclareGraphicsExtensions{.jpg,.png,.tif}

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}

\newcommand{\Plainauthor}[1]{\def\@Plainauthor{#1}}
\newcommand{\Plaintitle}[1]{\def\@Plaintitle{#1}}
\newcommand{\Shorttitle}[1]{\def\@Shorttitle{#1}}
\newcommand{\Abstract}[1]{\def\@Abstract{#1}}
\newcommand{\Keywords}[1]{\def\@Keywords{#1}}
\newcommand{\Plainkeywords}[1]{\def\@Plainkeywords{#1}}
\newcommand{\Address}[1]{\def\@Address{#1}}
\newcommand{\code}{\bgroup\@makeother\_\@makeother\~\@makeother\$\@codex}
\newcommand{\pkg}[1]{{\fontseries{b}\selectfont #1}}
\newcommand{\email}[1]{\href{mailto:#1}{\normalfont\texttt{#1}}}
\newcommand{\E}{\mathsf{E}}
\newcommand{\VAR}{\mathsf{VAR}}
\newcommand{\COV}{\mathsf{COV}}
\newcommand{\Prob}{\mathsf{P}}
\newcommand{\BMA}{\pkg{BMA}\xspace}
\newcommand{\gretl}{\pkg{gretl}\xspace}

\newenvironment{CodeChunk}{}{}

\DefineVerbatimEnvironment{Code}{Verbatim}{}
\DefineVerbatimEnvironment{CodeInput}{Verbatim}{fontshape=sl}
\DefineVerbatimEnvironment{CodeOutput}{Verbatim}{}

\def\@codex#1{{\normalfont\ttfamily\hyphenchar\font=-1 #1}\egroup}
\let\proglang=\textsf
\def\@maketitle{\vbox{\hsize\textwidth \linewidth\hsize  
  {\centering
  {\LARGE\bf \@title\par}
  \vskip 0.2in plus 1fil minus 0.1in
  {
      \def\and{\unskip\enspace{\rm and}\enspace}%
      \def\And{\\Department of Quantitative Methods\\87-100 Toru\'{n}, Poland\\\email{marcin@gretlconference.org}
      \end{tabular}\hss \egroup \hskip 1in plus 2fil
	\hbox to 0pt\bgroup\hss \begin{tabular}[t]{c}\large\bf\rule{\z@}{24pt}\ignorespaces}%
      \def\AND{\end{tabular}\hss\egroup \hfil\hfil\egroup
	\vskip 0.1in plus 1fil minus 0.05in
	\hbox to \linewidth\bgroup\rule{\z@}{10pt} \hfil\hfil
	\hbox to 0pt\bgroup\hss \begin{tabular}[t]{c}\large\bf\rule{\z@}{24pt}\ignorespaces}
      \hbox to \linewidth\bgroup\rule{\z@}{10pt} \hfil\hfil
      \hbox to 0pt\bgroup\hss \begin{tabular}[t]{c}\large\bf\rule{\z@}{24pt}\@author
      \\Faculty of Economics and Management\\87-100 Toru\'{n}, Poland\\\email{jkwiat@umk.pl}
      \end{tabular}\hss\egroup
  \hfil\hfil\egroup}
  \vskip 0.3in minus 0.1in
%    \hrule
  \today
  \begin{abstract}
  \@Abstract
  \end{abstract}}
  \textbf{Keywords}:~\@Keywords.\\
  
  \textbf{JEL}: C11, C51, C87, O47.
  \vskip 0.1in minus 0.05in
%    \hrule
  \vskip 0.2in minus 0.1in}}

\AtBeginDocument{
  \hypersetup{%
    pdfauthor = {\@Plainauthor},
    pdftitle = {\@Plaintitle},
    pdfkeywords = {\@Plainkeywords},
    pdfsubject = {Working Paper}
  }
}
\AtBeginDocument{\maketitle}

% Style
\bibliographystyle{jss}
\pagestyle{fancy}
\rhead[]{}
\lhead[]{}
\chead[\textsc{\@Plainauthor}]{\textsc{\@Plaintitle}}

% Hansl syntax highlight
\lstdefinelanguage{Hansl}{
	morekeywords={add, adf, anova, append, ar, ar1, arbond, arch, arima, biprobit, boxplot, break,
		catch, chow, clear, coeffsum, coint, coint2, corr, corrgm, cusum, data, dataset, debug,
		delete, diff, difftest, discrete, dpanel, dummify, duration,  elif, else, end, endif, endloop,
		eqnprint, equation, estimate, fcast, foreign, fractint, freq, function, garch, genr, gmm, gnuplot,
		graphpg, hausman, heckit, help, hsk, hurst, if, include, info, intreg, join, kalman, kpss, labels,
		lad, lags, ldiff, leverage, levinlin, logistic, logit, logs, loop, mahal, makepkg, markers,
		meantest, mle, modeltab, modprint, modtest, mpols, negbin, nls, normtest, nulldata, ols,
		omit, open, orthdev, outfile, panel, pca, pergm, poisson, print, printf, probit, pvalue,
		qlrtest, qqplot, quantreg, quit, rename, reset, restrict, rmplot, run, runs, scatters,
		sdiff, set, setinfo, setobs, setmiss, shell, smpl, spearman, sprintf, square, sscanf, store,
		summary, system, tabprint, textplot, tobit, tsls, var, varlist, vartest, vecm, vif,
		wls, xcorrgm, xtab, mpi, gibbs, return, params, pkg, eval},
	morekeywords=[2]{abs, acos, acosh, aggregate, argname, asin, asinh, atan, atanh, bessel,
		BFGSmax, bkfilt, boxcox, bwfilt, cdemean, cdf, cdiv, ceil, cholesky, chowlin,
		cmult, cnorm, colname, colnames, cols, cos, cosh, cov,
		critical, cum, deseas, det, diag, diagcat, digamma, dnorm, dsort,
		eigengen, eigensym, eigsolve, epochday, errmsg, exp, fcstats, fdjac, fft,
		ffti, filter, firstobs, floor, fracdiff, gammafun, getenv, ghk, gini, ginv,
		halton, hdprod, hpfilt, I, imaxc, imaxr, imhof, iminc, iminr, inbundle,
		infnorm, inlist, int(, inv, invcdf, invmills, invpd, irf, irr, isconst,
		isnan, isnull, kdensity, kfilter, ksimul, ksmooth, kurtosis, lastobs, ldet,
		lincomb, ljungbox, lngamma, log, log10, log2, loess, lower,
		lrvar, max, maxc, maxr, mcorr, mcov, mcovg, mean, meanc, meanr,
		median, mexp, min, minc, minr, missing, misszero, mlag, mnormal, mols,
		monthlen, movavg, mrandgen, mread, mreverse, mrls, mshape, msortby, muniform,
		mwrite, mxtab, nadarwat, nelem, ngetenv, nobs, normal, npv, NRmax, nullspace,
		obs, obslabel, obsnum, ok, onenorm, ones, pdf, pmax,
		pmean, pmin, pnobs, polroots, polyfit, princomp, psd, psdroot, pshrink,
		pxsum, qform, qnorm, qrdecomp, quadtable, quantile, randgen, randgen1, randint, rank,
		ranking, rcond, readfile, remove, replace, resample, round, rownames, rows, sd,
		sdc, selifc, selifr, seq, simann, sin, sinh, skewness, sort,
		sortby, sqrt, sst, strlen, strncmp, strsplit, strstr, strstrip, strsub,
		sum, sumall, sumc, sumr, svd, tan, tanh, toepsolv, tolower, tr,
		transp, trimr, typestr, uniform, uniq, unvech, upper, urcpval, values,
		varname, varnum, varsimul, vec, vech, weekday, wmean, wsd, wvar, xmax,
		xmin, xpx, zeromiss, zeros, bwrite, bread, mpibcast, mpireduce, array, defbundle,
		mat2list, strftime, fzero, sleep, eigen, cnameset, rnameset, _},
	morekeywords=[3]{bool, int, list, matrix, scalar, series, string, bundle,
		void, bundles, null, const},
	morekeywords=[4]{\$nobs, \$stopwatch, \$sysinfo, \$now, \$workdir, \$aic,
		\$model, \$pvalue, \$xlist, \$uhat},
	%   alsoletter={-},
	sensitive=false,
	morecomment=[l]{\#},
	morecomment=[l][\color{hanslgreen}]{--},
	morecomment=[s]{/*}{*/},
	morestring=[b]"
}
\lstdefinestyle{hansl}{
	belowcaptionskip=1\baselineskip,
	breaklines=true,
	frame=L,
	xleftmargin=\parindent,
	language=Hansl,
	showstringspaces=false,
	basicstyle={\normalsize\ttfamily},
	keywordstyle={\bfseries\color{hanslred}},
	keywordstyle=[2]{\color{hanslteal}},
	keywordstyle=[3]{\bfseries\color{hanslgreen}},
	keywordstyle=[4]{\bfseries\color{hanslgreen}},
	commentstyle={\color{hanslblue}},
	stringstyle={\color{hanslmagenta}}
}
\lstset{escapechar=@,style=hansl}
\def\inline{\lstinline[basicstyle={\footnotesize\ttfamily}]}
% Definicja kolorów
% \definecolor{hanslgreen}{cmyk}{.67,0,.37,.45}
\definecolor{hanslgreen}{cmyk}{.87,0,.91,.45}
\definecolor{hanslred}{cmyk}{0,.75,.75,.35}
\definecolor{hanslblue}{cmyk}{1,1,0,0} % {rgb}{0,0,1}
\definecolor{hanslteal}{cmyk}{1,0,.45,0} %{.01,0,.45,1}
\definecolor{hanslmagenta}{cmyk}{0,.96,0,0}
\definecolor{hanslblack}{cmyk}{0,0,0,1}

\newcommand{\gretlword}[1]{\lstinline!#1!}
\newcommand{\gretlcmdf}[1]{\inline{#1}\xspace}
\newcommand{\gretlcmd}[1]{\lstinline!#1!\xspace}
\newcommand{\baceopts}[1]{\vspace*{10pt}\noindent\gretlcmd{#1}}
