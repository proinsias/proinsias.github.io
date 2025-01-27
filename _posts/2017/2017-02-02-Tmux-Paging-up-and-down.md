---
layout: single
title: "Tmux: Paging Up And Down"
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
excerpt: Using control-u and control-d
categories:
    - til
tags:
    - til
    - tmux
---

When in _copy mode_ (`<prefix>[`), you can move the cursor around like you
would in vim with the directional keys (`hjkl`). This works fine until you
want to move up or down through pages and pages of text, such as when
navigating to the top of a long stack trace. One way to get where you need
to be more quickly is by paging up and down.

Hit `CTRL-u` to page up and `CTRL-d` to page down.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
