---
layout: single
title: "Nix: Save matching and non matching lines with awk"
excerpt: Advanced awk usage
date: 2017-03-03
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - nix
    - til
---

```bash
awk '/pattern/ {print $0 >"yes.csv"; next}{print $0 >"no.csv"}' input.csv
```
