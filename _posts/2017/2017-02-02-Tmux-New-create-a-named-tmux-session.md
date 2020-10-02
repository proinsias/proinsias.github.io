---
layout: single
title: "(TIL) Tmux: Create A Named tmux Session"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
tags:
  - til
  - tmux
---

When creating a new tmux session

```bash
tmux new
```

a default name of `0` will be given to the session.

If you'd like to give your session a name with a bit more meaning, use the
`-s` flag

```bash
tmux new -s burrito
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
