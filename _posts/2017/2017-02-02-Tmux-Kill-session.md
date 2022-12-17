---
layout: single
title: 'Tmux: Kill The Current Session'
excerpt: Using kill-session
date: 2017-02-02
modified: 2022-12-16
categories: til
tags:
    - til
    - tmux
---

When you are done with the current tmux session and you no longer need it,
you can simply kill it. You can do so within the session with the following
command:

```tmux
:kill-session
```

Hit `<prefix>:` in order to enter the command.

See `man tmux` for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
