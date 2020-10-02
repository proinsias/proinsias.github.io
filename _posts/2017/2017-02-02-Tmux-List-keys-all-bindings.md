---
layout: single
title: "(TIL) Tmux: List All Key Bindings"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
tags:
  - til
  - tmux
---

There are a couple ways to list all the tmux key bindings. If you are not
currently in a tmux session, you can still access the list from the terminal
with

```bash
tmux list-keys
```

If you are currently in a tmux session, then you can take advantage of the
tmux environment by either using

```tmux
<prefix>:list-keys
```

or

```tmux
<prefix>?
```

Any of these will bring up a list of all key bindings available to you
within a tmux session on your machine.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
