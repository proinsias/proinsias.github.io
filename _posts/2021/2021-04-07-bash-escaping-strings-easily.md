---
layout: single
title: "Bash: Escaping strings easily"
date: 2021-04-07 11:47
modified: 2021-04-07 11:47
categories: til
tags:
  - bash
  - nix
  - til
---

> Enter a line of Bash starting with a `#` comment,
> then run `!:q` on the next line to see what that would be with proper Bash escaping applied.

```bash
bash-3.2$ # This string 'has single' "and double" quotes and a $
bash-3.2$ !:q
'# This string '\''has single'\'' "and double" quotes and a $'
bash: # This string 'has single' "and double" quotes and a $: command not found
```

> The `!` character begins a history expansion; `!string` produces the last command beginning with `string`,
> and `:q` is a modifier that quotes the result;
> so I'm guessing this is equivalent to `!string` where `string` is `""`, so it produces the most recent command,
> just like `!!` does.

Via [til.simonwillison.net](https://github.com/simonw/til/blob/main/bash/escaping-a-string.md).
