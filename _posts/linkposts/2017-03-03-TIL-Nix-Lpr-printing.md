---
layout: single
title: "(TIL) Nix: Printing with lpr"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
---

Recently while trying to fix a printer I used `lpr` a bunch of times.
It's not exactly new to me, but never fails to surprise people when I use it.

`lpr` submits files for printing to your default printer in OSX.

Print a file:

```bash
lpr README.md
```

Print two copies to a specific printer:

```bash
lpr -# 2 -P specific_printer README.md
```

This is an invaluable command-line trick.

Via [jwworth/til](https://github.com/jwworth/til).
