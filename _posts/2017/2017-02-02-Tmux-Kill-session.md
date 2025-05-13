---
layout: single
title: "Tmux: Kill The Current Session"
excerpt: Using kill-session
date: 2017-02-02
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
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
