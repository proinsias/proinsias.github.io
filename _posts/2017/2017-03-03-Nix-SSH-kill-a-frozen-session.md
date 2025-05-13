---
layout: single
title: "Nix: Killing A Frozen SSH Session"
excerpt: Something else to do rather than mashing the keyboard
date: 2017-03-03
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - nix
    - til
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
