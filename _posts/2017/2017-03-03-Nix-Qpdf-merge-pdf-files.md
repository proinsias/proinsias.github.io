---
layout: single
title: "Nix: Merge pdf files"
excerpt: Using the qpdf command
date: 2017-03-03
last_modified_at: 2026-08-16 02:17:31
categories:
    - til
tags:
    - nix
    - til
---

You can use qpdf to merge pdf files into a single file as follow:

```bash
brew install qpdf  # Install qpdf if necessary.
qpdf --empty --pages *.pdf -- out.pdf
```

Via
[SO](https://stackoverflow.com/questions/2507766/merge-convert-multiple-pdf-files-into-one-pdf/53754681).
