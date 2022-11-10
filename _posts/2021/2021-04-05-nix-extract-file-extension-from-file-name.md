---
layout: single
title: 'Nix: Extract file extension from file name'
excerpt: Using variable manipulation
date: 2021-04-05 14:59
modified: 2022-11-08 14:59
categories: til
tags:
    - nix
    - til
---

If you need to know in a \*nix script the extension of a file, try the following:

```bash
$ filename="abc.txt"
$ file_ext="${filename##*\.}"
$ echo "${file_ext}"
txt
```

Via [SO](https://web.archive.org/web/*/https://stackoverflow.com/questions/407184/how-to-check-the-extension-of-a-filename-in-a-bash-script/41879583#41879583).
