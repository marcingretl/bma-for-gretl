\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{repec}
\DeclareOption*{
	\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass[a4paper,11pt,twoside]{article}
\RequirePackage[]{graphicx}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{a4wide}
\RequirePackage{array}
\RequirePackage{url}
\RequirePackage[pdftex]{color}
\RequirePackage{fancyhdr}
\RequirePackage{listings}
\RequirePackage{color,ae,fancyvrb}


\usepackage[pagebackref=true,unicode]{hyperref}
%   \hypersetup{colorlinks=true}
\usepackage[authoryear,round,longnamesfirst]{natbib}

\DeclareGraphicsExtensions{.jpg,.png,.tif}

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
      \def\And{\\Department of Quantitative Methods\\87-100 Toru\'{n}, Poland\\\email{marcin.blazejowski@wsb.torun.pl}
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
