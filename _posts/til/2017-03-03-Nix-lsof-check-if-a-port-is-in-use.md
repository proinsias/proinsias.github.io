---
layout: single
title: "(TIL) Nix: Check If A Port Is In Use"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
categories: til
tags:
  - nix
  - til
---

The `lsof` command is used to *list open files*. This includes listing
network connections. This means I can check if a particular port is in use
and what process is using that port. For instance, I can check if my rails
application is currently running on port 3000.

```bash
$ lsof -i TCP:3000
COMMAND   PID USER  FD   TYPE DEVICE SIZE/OFF NODE NAME
ruby    13821 jb   12u  IPv6 0xdf...      0t0  TCP localhost:hbci (LISTEN)
ruby    13821 jb   13u  IPv4 0xdf...      0t0  TCP localhost:hbci (LISTEN)
```

I can see that a ruby process (my rails app) is using port 3000. The PID
and a number of other details are included.

See more details with `man lsof`.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
