---
layout: single
title: "Bash: Run entire shell script as root"
date: 2021-04-27 20:44
modified: 2021-04-27 20:44
categories: til
tags:
  - root
  - shell
  - til
---

> Placing sudo in the shebang line of a shell script runs the entire thing as root.
> Useful for scripts designed to, e.g. automate system upgrades or package manager wrappers
> — makes prepending everything with sudo no longer necessary.

```bash
#!/usr/bin/sudo /usr/bin/env bash
```
