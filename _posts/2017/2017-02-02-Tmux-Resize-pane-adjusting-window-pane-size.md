---
layout: single
title: "Tmux: Adjusting Window Pane Size"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
tags:
  - til
  - tmux
---

In tmux, the size of window panes can be adjusted incrementally with the
`resize-pane` command. For instance, to resize a pane in any direction
(left, down, up, and right), use one of the following commands

```tmux
resize-pane -L 10
resize-pane -D 10
resize-pane -U 10
resize-pane -R 10
```

This will adjust the pane by *10* units in the corresponding direction. Of
course, other values can be used for more significant size adjustments.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
