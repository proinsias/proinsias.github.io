---

layout: single
title: "Nix: Extract file extension from file name"
date: 2021-04-05 14:59
modified: 2021-04-05 14:59
categories: til
tags:

- nix
- til

---

If you need to know in a \*nix script the extension of a file, try the following:

```bash
$ filename="abc.txt"
$ fileext="${filename##*\.}"
$ echo "${fileext}"
txt
```

Via [SO](https://stackoverflow.com/a/41879583/1257318).
