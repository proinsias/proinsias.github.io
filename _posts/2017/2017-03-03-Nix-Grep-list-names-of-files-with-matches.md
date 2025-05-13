---
layout: single
title: "Nix: List Names Of Files With Matches"
excerpt: Using the l flag
date: 2017-03-03
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - nix
    - til
---

I often use `grep` and `ag` to search for patterns in a group or directory
of files. Generally I am interested in looking at the matching lines
themselves. However, sometimes I just want to know the set of files that
have matches. Both `grep` and `ag` can be told to output nothing more than
the names of the files with matches when given the `-l` flag.

This can come in particularly handy if you just want a list of files that
can be piped (or copied) for use with another command. This eliminates all
the extra noise.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
