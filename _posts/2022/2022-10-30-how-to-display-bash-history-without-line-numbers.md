---
modified: '2022-10-30 16:09 -0400'
date: '2022-10-30 16:09 -0400'
layout: single
published: true
title: How to display bash history without line numbers
excerpt: Useful for direct copy & pasting of commands
categories: til
tags:
  - til
  - nix
---
A standard use of the `history` command will output line numbers as well as the commands in your history:

```shell
> history
  1  ls
  2  du -ks myfile.txt
  3  rm myfile.txt
```

The line numbers are useful for when you want to repeat a command – you can refer to it by the line number as follows:

```shell
> !1
myfile.txt
```

But if you want to save a lot of commands from your history and not have to edit out the line numbers, you can simply use:

```shell
> history -w /dev/stdout
ls
du -ks myfile.txt
rm myfile.txt
history
ls
```

The `-w` option tells `history` to write the current history to a file. In the above version we redirect to the standard output instead of a file.

Via [commandlinefu.com](https://www.commandlinefu.com/commands/view/27907/how-to-display-bash-history-without-line-numbers).
