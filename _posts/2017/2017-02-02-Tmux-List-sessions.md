---
layout: single
title: "Tmux: List Sessions"
excerpt: Using the ls or list-sessions command
date: 2017-02-02
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - til
    - tmux
---

Not sure if `tmux` is running or, if it is, which sessions are available?
You can list all the currently running sessions right from the command-line.

```bash
tmux ls
```

This command is shorthand for:

```bash
tmux list-sessions
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
