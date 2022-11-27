---
layout: single
title: 'Nix: SSH Escape Sequences'
excerpt: Power user commands
date: 2017-03-03
modified: 2022-11-26
categories: til
tags:
    - nix
    - til
---

To see the SSH Escape Sequences, hit `<Enter>~?`.

```ssh
> ~?
Supported escape sequences:
 ~.   - terminate connection (and any multiplexed sessions)
 ~B   - send a BREAK to the remote system
 ~C   - open a command line
 ~R   - request rekey
 ~V/v - decrease/increase verbosity (LogLevel)
 ~^Z  - suspend ssh
 ~#   - list forwarded connections
 ~&   - background ssh (when waiting for connections to terminate)
 ~?   - this message
 ~~   - send the escape character by typing it twice
(Note that escapes are only recognized immediately after newline.)
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
