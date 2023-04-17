---
layout: single
title: 'Nix: Force cpus to run at max'
excerpt: Using the stress command
date: 2017-03-03
last_modified_at: 2022-12-02
categories: til
tags:
    - nix
    - til
---

To make your 4 CPUs run flat out for 60 seconds:

```bash
stress --cpu 4 --timeout 60s
```

Via [unix.stackexchange.com](https://unix.stackexchange.com/q/432261/198328).
