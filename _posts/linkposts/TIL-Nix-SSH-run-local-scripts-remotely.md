---
layout: single
title: "(TIL) Nix: Run local scripts remotely with SSH"
date:
modified:
---

To run a local script `enki.sh` on a remote machine, use:

```bash
ssh user@enki 'bash -s' < enki.sh
```

The output of `enki.sh` will be displayed locally.

Via [enkipro.com](https://enkipro.com/insight/56f53541b513b106007135f2).
