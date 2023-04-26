---
layout: single
title: 'Tmux: tmux in your tmux'
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
excerpt: Use your prefix twice to access inner tmux instance
categories:
    - til
tags:
    - til
    - tmux
---

If you are running tmux locally and you shell into another machine to
access tmux remotely, you will suddenly find yourself in tmux inception.
You will have a tmux instance running within your local tmux instance. If
you have the same prefix key set for both, then you may be wondering how
you can send a tmux command to the _inner_ tmux instance.

If you press your prefix twice (e.g. `<C-a> <C-a>`), then the second prefix
will be sent to the inner tmux instance which will then be listening for
the rest of your command. So, to open a new window within the inner tmux
instance, you can hit `<C-a> <C-a> c`.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
