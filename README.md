# Minimalist LaTeX Homework

## Overview
A minimalist LaTeX class for homework assignments, providing capabilities for basic theorem environments and alphabetical question parts.

## Usage
This LaTeX document class assumes a problem-part hierarchy in the homework assignment.

To denote a problem, use the command `\problem{}{}`. Entering the first argument is mandatory and entering the second argument is optional. For example, the command `\problem{7}{2}` will be rendered as **Problem 7.2.** whereas the command `\problem{7}{}` will be rendered as **Problem 7.**

To denote an alphabetical question part, simply use the command `\alphpart`. The counter for (a), (b), (c), etc. is automatically updated, and is reset whenever a `\problem` command is used.

For more information about these commands are displayed, reference [example.tex](example.tex) and [example.pdf](example.pdf).

    