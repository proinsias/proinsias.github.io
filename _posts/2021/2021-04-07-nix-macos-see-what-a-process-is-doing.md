---
layout: single
title: 'Nix/Macos: See what a process is doing'
excerpt: Understand why that process is taking so long
date: 2021-04-07
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - mac
    - nix
    - til
---

To check what a long-running process is doing on linux, use `strace`:

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
[SO](https://web.archive.org/web/20220818174407/https://stackoverflow.com/questions/1925978/equivalent-of-strace-feopen-command-on-mac-os-x/1926131),
and
[opensource.apple.com](https://opensource.apple.com/source/dtrace/dtrace-147/DTTk/dtruss.auto.html).
