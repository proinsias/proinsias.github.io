---
last_modified_at: 2023-04-26 13:22:37
date: 2022-10-30
layout: single
published: true
title: How to display bash history without line numbers
excerpt: Useful for direct copy & pasting of commands
categories:
    - til
tags:
    - til
    - nix
redirect_from:
    - /pages/proinsias/til/how-to-display-bash-history-without-line-numbers
---

A standard use of the `history` command will output line numbers as well as the commands in your history:

```shell
> history
  1  ls
  2  du -ks my_file.txt
  3  rm my_file.txt
```

The line numbers are useful for when you want to repeat a command – you can refer to it by the line number as follows:

```shell
> !1
my_file.txt
```

But if you want to save a lot of commands from your history and not have to edit out the line numbers, you can simply use:

```shell
> history -w /dev/stdout
ls
du -ks my_file.txt
rm my_file.txt
history
ls
```

The `-w` option tells `history` to write the current history to a file. In the above version we redirect to the standard output instead of a file.

Via [commandlinefu.com](https://www.commandlinefu.com/commands/view/27907/how-to-display-bash-history-without-line-numbers).
