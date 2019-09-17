---
layout: single
title: "(TIL) Tmux: Pane Killer"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
tags:
  - til
  - tmux
---

The current pane can be _killed_ (closed) using the following key binding:

```tmux
<prefix>x
```

You will be prompted to confirm with either `y` or `n`.

If there is only one pane in the current window, then the window will be
_killed_ along with the pane.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
