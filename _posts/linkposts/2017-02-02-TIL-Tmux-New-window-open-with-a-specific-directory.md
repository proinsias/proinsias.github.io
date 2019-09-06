---
layout: single
title: "(TIL) Tmux: Open New Window With A Specific Directory"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
---

When you initially start a tmux session, the default directory is based off
of whatever the current working directory was. Any subsequent windows opened
within that tmux session will be opened with that as the base directory.

To open a window with a different default directory, use the `-c` flag with
the `new-window` command. For example, hit `<prefix>:` and then

```tmux
:new-window -c ~/
```

to open a new window with your home directory.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
