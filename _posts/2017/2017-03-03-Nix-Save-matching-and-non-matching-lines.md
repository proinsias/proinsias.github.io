---
layout: single
title: 'Nix: Save matching and non matching lines with awk'
excerpt: Advanced awk usage
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

```bash
awk '/pattern/ {print $0 >"yes.csv"; next}{print $0 >"no.csv"}' input.csv
```
