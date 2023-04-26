---
layout: single
title: 'Nix: Remove backspaces and tabs with col'
excerpt: Tidy up text output of various commands
date: 2021-06-14
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

Say you want to save the contents of the `cp` `man` page to a file.

> In the case of man page output there are backspaces and tabs that can throw off the ASCII text
> so you'll probably want to clean that up.
>
> Luckily there is a command, `col` and a couple of flags `-b` an `-x` that will remove backspaces
> and convert tabs to spaces.
>
> So in the end the command you wind up with is something like:
>
> `man cp | col -bx > ~/Desktop/man_cp.txt`

Via the [maccast](https://www.maccast.com/podcast/shownotes_20210613/).
