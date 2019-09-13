---
layout: single
title: "(TIL) Nix: Convert file contents to lower case with tr"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
categories: til
tags:
  - nix
  - til
---

To convert the contents of a file to all lower case, you can use:

```bash
>>> tr A-Z a-z < input  # convert ASCII characters
>>> tr '[:upper:]' '[:lower:]' < input  # convert all alphabetic characters
```

Via [unix.stackexchange.com](https://unix.stackexchange.com/a/171604).
