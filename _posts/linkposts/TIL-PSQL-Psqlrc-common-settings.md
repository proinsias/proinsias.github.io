---
layout: single
title: "(TIL) PSQL: Use a psqlrc File For Common Settings"
date:
modified:
---

There are a handful of settings that I inevitably turn on or configure each
time I open up a `psql` session. I can save myself a little time and sanity
by configuring these things in a `.psqlrc` dotfile that is located in my
home directory. This will ensure my `psql` session is configured just how I
like it each time I launch it. Here is what my `~/.psqlrc` file currently
looks like:

```psqlrc
\x auto
timing
\pset null 'Ø'
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
