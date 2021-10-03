\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[10/02/2021 Homework Template for Latex]
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
    {\fontfamily{qpl}}
    {0pt}
    {\normalsize\fontfamily{qpl}\bfseries}
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

% Set Abbreviations (add whatever is convenient)
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}

% More useful things
\newcommand{\re}{\text{Re}}
\newcommand{\im}{\text{Im}}
\newcommand{\angled}[1]{\langle #1 \rangle}
\newcommand{\pd}[2]{\dfrac{\partial #1}{\partial #2}}
\newcommand{\pdd}[2]{\dfrac{\partial^2 #1}{\partial #2^2}}
\newcommand{\cp}[1]{\overline{#1}}
\newcommand{\lt}[1] {
  \fontsize{9}{10}
  \fontfamily{qpl}
  \noindent\textbf{(#1)}
}


% Question Part Counters
\newcounter{alphCount}
\setcounter{alphCount}{1}

\newcounter{romanCount}
\setcounter{romanCount}{1}

\newcounter{RomanCount}
\setcounter{RomanCount}{1}

% Title Format
\def\class#1{\gdef\@class{#1}}
\renewcommand{\maketitle}{%
  \newpage
  \null
  \let \footnote \thanks
    {\center \huge \fontfamily{qpl}\bfseries{\@title} \par}%
    \vskip 2.5em%
    {\large \fontfamily{qpl} \textbf{\@class}}%
    {\center\large\fontfamily{qpl}\textup{\@author}}
    \hfill
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%hi
        \large\fontfamily{qpl}\textsl{\@date}
      \end{tabular}\par}%
  \par
  \vskip 1.5em}

% Problem Format
\renewcommand{\section}{
    \@startsection
    {section}{1}{0pt}{-1.5ex plus -1ex minus -.2ex}{1.0ex plus .2ex}
    {\fontsize{10}{10}\fontfamily{qpl}\bfseries}
}


\newcommand{\problem}[2]{
    \setcounter{alphCount}{1}
    \setcounter{romanCount}{1}
    \setcounter{RomanCount}{1}
    \begin{center}
        \noindent\makebox[\linewidth]{\rule{15.5cm}{0.8pt}}
    \end{center}
    \ifthenelse{\equal{#2}{}}
    {\section{P#1.}}
    {\section{P#1.#2.}} 
}
 
% Question Part Formats
\newcommand{\alphnum}[0]{
    \fontsize{9}{10}
    \fontfamily{qpl}
    \ifthenelse{\NOT \value{alphCount}=1}
    {\textbf{\\*(\alph{alphCount}) }}
    {
      \textbf{(\alph{alphCount})}
    }
    \stepcounter{alphCount}
}

\newcommand{\romnum}[0]{
    \fontsize{9}{10}
    \fontfamily{qpl}
    \ifthenelse{\NOT \value{romanCount}=1}
    {\textbf{\\*(\roman{romanCount}) }}
    {
      \textbf{(\roman{romanCount})}
    }
    \stepcounter{romanCount}
}

\newcommand{\Romnum}[0]{
    \fontsize{9}{10}
    \fontfamily{qpl}
    \ifthenelse{\NOT \value{RomanCount}=1}
    {\textbf{\\*(\Roman{RomanCount}) }}
    {
      \textbf{(\Roman{RomanCount})}
    }
    \stepcounter{RomanCount}
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
