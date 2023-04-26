---
layout: single
title: 'Nix: Only Show The Matches'
excerpt: Using the o flag
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

Tools like `grep`, `ack`, and `ag` make it easy to search for lines in a
file that contain certain text and patterns. They all come with the `-o`
flag which tells them to only show the part that matches.

This is particularly powerful when used with regex and piped into other
programs.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
