# Minimalist LaTeX Homework

## Overview
A minimalist LaTeX class for homework assignments, providing capabilities for basic theorem environments and alphabetical question parts.

## Usage

**Note:** This template is extremely minimalist and the formatting doesn't look amazing or anything. There exist better LaTeX homework templates out there.

This LaTeX document class assumes a problem-part hierarchy in the homework assignment.

To denote a problem, use the command `\problem{}{}`. Entering the first argument is mandatory and entering the second argument is optional. For example, the command `\problem{7}{2}` will be rendered as **Problem 7.2.** whereas the command `\problem{7}{}` will be rendered as **Problem 7.**

To denote an alphabetical question part, simply use the command `\alphnum`. The counter for (a), (b), (c), etc. is automatically updated, and is reset whenever a `\problem` command is used. If a custom letter subsection is necessary, use the `\lt` command, which will not affect the alphabetic counter.

For more information about how these commands are displayed, reference [example.tex](example.tex) and [example.pdf](example.pdf).

## Installation
Simply copy the [homework.cls](homework.cls) file to a desired directory, and import it as shown in the example.

    
