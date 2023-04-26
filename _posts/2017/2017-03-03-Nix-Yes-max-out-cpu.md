---
layout: single
title: 'Nix: Max out CPU with Yes'
excerpt: Using the yes command
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

If you want a quick and easy method to max out the usage of a CPU core, just use `yes`:

```bash
yes > /dev/null
```

If you want to max out multiple cores, just add another instances of `yes` for each core.
