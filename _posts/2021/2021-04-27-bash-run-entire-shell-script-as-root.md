---
layout: single
title: "Bash: Run entire shell script as root"
excerpt: Avoid prepending commands with sudo
date: 2021-04-27
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - bash
    - nix
    - root
    - shell
    - til
---

> Placing sudo in the shebang line of a shell script runs the entire thing as root.
> Useful for scripts designed to, e.g., automate system upgrades or package manager wrappers -
> makes prepending everything with sudo no longer necessary.

```bash
#!/usr/bin/sudo /usr/bin/env bash
```

Via [commandlinefu.com](https://www.commandlinefu.com/commands/view/25273/run-entire-shell-script-as-root).
