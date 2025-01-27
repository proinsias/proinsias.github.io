---
layout: single
title: "Nix: Run local scripts remotely with SSH"
excerpt: Via the bash command
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

To run a local script `enki.sh` on a remote machine, use:

```bash
ssh user@enki 'bash -s' < enki.sh
```

The output of `enki.sh` will be displayed locally.

Via [enkipro.com](https://app.enkipro.com/#/insight/56f53541b513b106007135f2).
