---
layout: single
title: "Nix/Macos: See what a process is doing"
date: 2021-04-07 11:31
modified: 2021-04-07 11:31
categories: til
tags:
  - macos
  - nix
  - til
---

To check what a long-rerunning process is doing on linux, use `strace`:

```bash
brew install strace

sudo strace -p <PID>
# Ctrl+C to stop dump.

sudo strace -c -p <PID>
# Ctrl+C to stop to get summary of count of syscalls.

sudo strace -k -p <PID>
# Add stack traces to each syscall to give a better idea of where in the code the syscalls are being made from.
```

On a Mac, use `dtruss`:

```bash

sudo dtruss -p <PID>
sudo dtruss -c -p <PID>
sudo dtruss -s -p <PID>

sudo dtruss df -h  # Run and examine the `df -h` command.
```

Via [til.simonwillison.net](https://github.com/simonw/til/blob/main/linux/basic-strace.md),
[SO](https://stackoverflow.com/a/1926131/1257318), and
[opensource.apple.com](https://opensource.apple.com/source/dtrace/dtrace-147/DTTk/dtruss.auto.html).
