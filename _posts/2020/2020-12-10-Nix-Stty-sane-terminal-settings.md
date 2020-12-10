---
layout: single
title: "(TIL) Nix: Stty - sane terminal settings
date: 2020-12-10 17:02
modified: 2020-12-10 17:02
categories: til
tags:
  - nix
  - til
---

Restore sane shell settings, in case your shell session went insane
because some script or application turned it into a garbled mess:

```bash
stty sane
```

Via
[herrbischoff/awesome-macos-command-line](https://github.com/herrbischoff/awesome-macos-command-line#restore-sane-shell).
