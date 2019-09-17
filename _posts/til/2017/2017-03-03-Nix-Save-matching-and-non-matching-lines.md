---
layout: single
title: "(TIL) Nix: Save matching and non matching lines with awk"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
categories: til
tags:
  - nix
  - til
---

```bash
awk '/pattern/ {print $0 >"yes.csv"; next}{print $0 >"no.csv"}' input.csv
```
