---
layout: single
title: "Nix: List Of Sessions To A Machine"
excerpt: Using the last command
date: 2017-03-03
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - nix
    - til
---

The `last` command is a handy way to find out who has been connecting to a
machine and when.

> Last will list the sessions of specified users, ttys, and hosts, in
> reverse time order. Each line of output contains the user name, the tty
> from which the session was conducted, any hostname, the start and stop
> times for the session, and the duration of the session. If the session is
> still continuing or was cut short by a crash or shutdown, last will so
> indicate.

In particular, this can be useful for finding an IP address that you want to
connect to.

See `man last` for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
