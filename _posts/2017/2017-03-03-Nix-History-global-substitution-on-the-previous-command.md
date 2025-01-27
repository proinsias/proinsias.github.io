---
layout: single
title: "Nix: Global Substitution On The Previous Command"
excerpt: Different substitution options
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

Let's say we just executed the following command:

```bash
grep 'foo' foo.md
```

It gave us the information we were looking for and now we want to execute
a similar command to find the occurrences of `bar` in `bar.md`. The `^`
trick won't quite work here.

```bash
$ ^foo^bar<tab>
grep 'bar' foo.md
```

What we need is a global replace of `foo` in our previous command. The `!!`
command can help when we sprinkle in some `sed`-like syntax.

```bash
$ !!gs/foo/bar<tab>
grep 'bar' bar.md
```

For a short command like this, we haven't gained much. However, for large
commands that span the length of the terminal, this can definitely save us
a little trouble.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
