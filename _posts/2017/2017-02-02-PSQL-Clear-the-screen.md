---
layout: single
title: "PSQL: Clear The Screen In psql"
excerpt: Via the clear shell command
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

The `psql` interactive terminal does not have a built-in way of clearing the
screen. What I usually do if I really need the screen cleared is quit, run
`clear` from the shell, and then open a new `psql` session. This is
unnecessary though. Instead, we can use the `\!` command to execute a shell
command, in this case, the `clear` command.

```psql
> \! clear
```

This clears the screen in one step and keeps our current session running.

And there is an even simpler way. Just hit `CTRL-l`.

See the [psql
docs](http://www.postgresql.org/docs/current/static/app-psql.html) for more
details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
