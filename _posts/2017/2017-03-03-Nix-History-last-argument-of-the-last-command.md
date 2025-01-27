---
layout: single
title: "Nix: Last Argument Of The Last Command"
excerpt: Quick shortcut
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

You can use `!$` as a way to reference the last argument in the last
command. This makes for an easy shortcut when you want to switch out
commands for the same long file name. For instance, if you just ran `cat` on
a file to see its contents

```bash
cat /Users/jbranchaud/.ssh/config
```

and now you want to edit that file. You can just pass `!$` to the `vim`
command:

```bash
vim !$
```

Hit enter or tab to get the full command:

```bash
vim /Users/jbranchaud/.ssh/config
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
