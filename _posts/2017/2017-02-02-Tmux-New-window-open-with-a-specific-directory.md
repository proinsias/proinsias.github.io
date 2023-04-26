---
layout: single
title: 'Tmux: Open New Window With A Specific Directory'
excerpt: Using new-window
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - til
    - tmux
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
