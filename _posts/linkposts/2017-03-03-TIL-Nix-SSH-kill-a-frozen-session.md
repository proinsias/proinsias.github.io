---
layout: single
title: "(TIL) Nix: Killing A Frozen SSH Session"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
---

Whenever an SSH session freezes, I usually mash the keyboard in desperation
and then kill the terminal session. This can be avoided though. SSH will
listen for the following kill command:

```ssh
~.<cr>
```

This will kill the frozen SSH session and leave you in the terminal where
you were before you SSH'd.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
