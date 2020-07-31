\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[7/31/2020 Homework Template for Latex]
\LoadClass{article}

% Essential Math Packages
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{amssymb}

% Formatting Packages
\RequirePackage[margin=1in,top=0.5in,bottom=0.75in]{geometry}
\RequirePackage{setspace}

% Condition Package
\RequirePackage{ifthen}

% Cleaner Theorem Style
\newtheoremstyle{clean}
    {\topsep}
    {\topsep}
    {\fontfamily{lmr}}
    {0pt}
    {\normalsize\fontfamily{lmr}\bfseries}
    {.}
    {5pt plus 1pt minus 1pt}
    {}

% Theorem Environments
\theoremstyle{clean}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{definition}[theorem]{Definition}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem*{example}{Example}

% Question Part Counter
\newcounter{alphCount}
\setcounter{alphCount}{1}

% Title Format
\def\class#1{\gdef\@class{#1}}
\renewcommand{\maketitle}{%
  \newpage
  \null
  \let \footnote \thanks
    {\center \huge \fontfamily{lmr}\bfseries{\@title} \par}%
    \vskip 2.5em%
    {\large \fontfamily{lmr} \textbf{\@class}}%
    {\center\large\fontfamily{lmr}\textup{\@author}}
    \hfill
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%hi
        \large\fontfamily{lmr}\textsl{\@date}
      \end{tabular}\par}%
  \par
  \vskip 1.5em}

% Problem Format
\renewcommand{\section}{
    \@startsection
    {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}{1.0ex plus .2ex}
    {\fontsize{10}{10}\fontfamily{lmr}\bfseries}
}


\newcommand{\problem}[2]{
    \setcounter{alphCount}{1}
    \begin{center}
        \noindent\makebox[\linewidth]{\rule{15.5cm}{0.8pt}}
    \end{center}
    \ifthenelse{\equal{#2}{}}
    {\section{Problem #1.}}
    {\section{Problem #1.#2.}} 
}
 
% Question Part Format
\newcommand{\alphnum}[0]{
    \fontsize{9}{10}
    \fontfamily{lmr}
    \ifthenelse{\NOT \value{alphCount}=1}
    {\textbf{\\*(\alph{alphCount})}}
    {
      \begin{center}
        \noindent\makebox[\linewidth]{\rule{14cm}{0.5pt}}
      \end{center}
      \textbf{(\alph{alphCount})}
    }
    \stepcounter{alphCount}
}

% Better QED Symbol
\renewcommand*{\qedsymbol}{$\blacksquare$}

% No Section Numbering
\setcounter{secnumdepth}{0}

% Set Default Size and Spacing
\renewcommand{\normalsize}{\fontsize{9}{10}\selectfont}
\setstretch{1.2}

% No Indent
\setlength\parindent{0pt}