---
modified: '2022-10-22 15:13 -0400'
date: '2022-10-22 15:13 -0400'
layout: single
published: true
title: Preserve environment when using sudo
excerpt: Preserve environment when using sudo
categories: til
tags:
  - nix
  - ssh
---

When using the `sudo` command:

> you may depend on environment-variables ... being set, and these might not survive the switch to root with sudo, which resets environment by default.
>
> To get around this, you can run sudo with the `-E` switch, `sudo -E` ..., which retains environment variables.

The long name for this option is `--preserve-env` – I prefer to use long names in scripts to make these easier to understand next week, next month, and especially next year...!

Via [github.com/git-lfs](https://github.com/git-lfs/git-lfs/blob/main/INSTALLING.md).
