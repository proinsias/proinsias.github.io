---
layout: single
title: 'Nix: Watch That Program'
excerpt: For example, watch ls
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

Have you ever been working in the terminal and found yourself repeating the
same command many times? Delegate that work to the computer.

`watch` comes with Linux and can be installed on OSX via `homebrew`.
It executes a program periodically, defaulting to every two seconds.
The period can be changed with the `-n` flag though:

```bash
watch -n 2 rspec spec/some/test.rb
```

We used it today while writing a database backup script. Instead of checking
our dump directory every time a cron job executed,
we ran `watch ls`, and watched the script succeed or fail with live updates.

The `-d` flag instructs `watch` to highlight the parts of the output that are
_different_ from the previous run of the command.

So if I run:

```bash
watch -d curl -LIs localhost:3000
```

I can easily see if the http status of the request changes.

`man watch` for more information.

Via [jwworth/til](https://github.com/jwworth/til) and
[jbranchaud/til](https://github.com/jbranchaud/til).
