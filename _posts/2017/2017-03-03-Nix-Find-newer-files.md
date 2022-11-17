---
layout: single
title: 'Nix: Find Newer Files'
excerpt: Using the newer argument
date: 2017-03-03 05:34
modified: 2022-11-17 05:34
categories: til
tags:
    - nix
    - til
---

Use the `-newer` flag with the name of a file to find files that have a
newer modification date than the named file.

For instance,

```bash
find blog -name '*.md' -newer blog/first-post.md
```

will find all markdown files in the `blog` directory that have a
modification date more recent than `blog/first-post.md`.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
