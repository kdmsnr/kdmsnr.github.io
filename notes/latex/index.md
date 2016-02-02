---
layout: page
title: LaTeX
---

MarkdownからLaTeXに変換するとよい。

* doc.md

```markdown
# 何か書く
```

* Makefile

```sh
pdf:
	pandoc doc.md -o doc.tex
	platex layout.tex
	dvipdfmx layout.dvi
```

* layout.tex

```tex
\documentclass[10pt, a4paper]{jsarticle}
%
\usepackage{amsmath,amssymb}
\usepackage{bm}
\usepackage{graphicx}
\usepackage{ascmac}
\usepackage[dvipdfm]{hyperref}
%
\setlength{\textwidth}{\fullwidth}
\setlength{\textheight}{40\baselineskip}
\addtolength{\textheight}{\topskip}
\setlength{\voffset}{-0.2in}
\setlength{\topmargin}{0pt}
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
%
\title {タイトル}
\author {角 征典}
\date {...}
\begin {document}
\maketitle
\begin{abstract}
%% 概要
\end{abstract}
\tableofcontents
\input {doc}
\end{document}
```
