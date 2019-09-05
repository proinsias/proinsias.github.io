---
layout: single
title: "(TIL) Nix: Max out CPU with Yes"
date:
modified:
---

If you want a quick and easy method to max out the usage of a CPU core, just use `yes`:

```bash
yes > /dev/null
```

If you want to max out multiple cores, just add another instances of `yes` for each core.
