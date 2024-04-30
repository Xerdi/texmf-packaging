\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{xdpdoc}[0.0.1 Xerdi's Documentation Class]

% XDP packages always use gitinfo-lua for setting versions in manuals
\RequirePackage[titlepage,authors]{gitinfo-lua}

% Using Komma Scripts' article class, without sans-serif titlings
\LoadClass[sfdefaults=false]{scrartcl}

% Load XDP branding and symbols
\RequirePackage{xdp-pkg}

% Setup page headings and footings
\RequirePackage[headsepline,autooneside=false,automark]{scrlayer-scrpage}
\cohead{}
\ihead[\normalfont\gitauthor]{\normalfont XDP \@title}
\ohead[\normalfont\today]{\rightmark}

\ifoot[Rev.\ \texttt{\gitversion}]{Rev.\ \texttt{\gitversion}}
\ofoot[\normalfont\copyright\Xerdi]{\normalfont\copyright\Xerdi}

% Polyfill typical ltxdoc macros
\newcommand\cmdfont[1]{{\primarycolor\bfseries\ttfamily #1}}
\newcommand\cmd[1]{\cmdfont{\textbackslash#1}}
\def\meta#1{{\normalfont\textlangle\textit{#1}\textrangle}}
\def\marg#1{\{\meta{#1}\}}
\def\oarg#1{[\meta{#1}]}

\renewcommand\title[1]{\global\def\@title{#1}}
\def\xdp@thanksto{\\[\headsep]}
\renewcommand\thanks[1]{\global\def\xdp@thanksto{\\\begin{center}\itshape #1\end{center}\noindent}}

% Override the title format
\def\@maketitle{%
    \thispagestyle{plain}%
    \noindent{\Huge\Xerdi's Documentation Project\\\@title~\hrulefill}\xdp@thanksto}
