---
layout: single
title: 'Nix: Convert reStructuredText to Markdown'
excerpt: Another use for pandoc
date: 2021-04-07
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

I've used [`pandoc`](https://pandoc.org) a lot before to convert
[Markdown](https://www.markdownguide.org) files to PDFs.
I just found out it can also convert [reStructuredText](https://docutils.sourceforge.io/rst.html)
text files to Markdown format:

```bash
brew install pandoc

pandoc filename.rst --to markdown --output filename.md
```

Pretty cool!

Via [Alan Dong](https://gist.github.com/ldong/afeb267a772d3a466628).
