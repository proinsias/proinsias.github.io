---
layout: single
title: 'Bash: Append to variable without creating leading colon if unset'
excerpt: Using an expansion operator
date: 2017-07-07 14:55
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - bash
    - nix
    - til
---

Say you need to append a directory to `PATH`, but only add a leading `:` if `PATH` is
already set. The standard

```bash
export PATH=${PATH}:/home/user/bin
```

won't work correctly if `PATH` is not set – you'll get `:/home/user/bin` instead of
`/home/user/bin`.

Instead you the `${:+}` expansion operator:

export PATH=${PATH:+${PATH}:}/home/user/bin

The first braces expand to $PATH and the colon iff PATH is set already, otherwise to
nothing.

Via [unix.stackexchange.com](https://unix.stackexchange.com/a/162893/198328).
