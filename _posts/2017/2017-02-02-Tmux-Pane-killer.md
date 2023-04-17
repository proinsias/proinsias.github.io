---
layout: single
title: 'Tmux: Pane Killer'
date: 2017-02-02
last_modified_at: 2022-12-23
excerpt: Using <prefix>x
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
