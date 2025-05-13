---
layout: single
title: "Nix: Stty - sane terminal settings"
excerpt: Fix garbled shell session
date: 2020-12-10
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
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
