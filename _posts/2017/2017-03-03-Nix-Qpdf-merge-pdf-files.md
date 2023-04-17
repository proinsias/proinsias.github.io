---
layout: single
title: 'Nix: Merge pdf files'
excerpt: Using the qpdf command
date: 2017-03-03
last_modified_at: 2022-11-26
categories: til
tags:
    - nix
    - til
---

You can use qpdf to merge pdf files into a single file as follow:

```bash
brew install qpdf  # Install qpdf if necessary.
qpdf --empty --pages *.pdf -- out.pdf
```

Via [SO](https://stackoverflow.com/a/53754681/1257318).
