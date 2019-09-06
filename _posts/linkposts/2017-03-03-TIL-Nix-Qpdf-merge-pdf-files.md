---
layout: single
title: "(TIL) Nix: Merge pdf files"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
---

You can use qpdf to merge pdf files into a single file as follow:

```bash
brew install qpdf  # Install qpdf if necessary.
qpdf --empty --pages *.pdf -- out.pdf
```

Via [SO](https://stackoverflow.com/a/53754681/1257318).
