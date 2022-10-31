---
layout: single
title: 'Shell: Create a file backup with modification date as suffix'
date: 2022-06-28 10:38
modified: 2022-10-31 10:38
excerpt: Useful prior to changing a configuration file
categories: til
tags:
    - backup
    - shell
    - til
---

> When I go to change a configuration file I always like to make a backup first.
> You can use `cp -p` to preserve the modification time, but it gets confusing to have `file.prev`, `file.prev2`, etc.
> So I like to add a `YYMMDD` suffix that shows when the file was last changed.
>
> `stat -c %Y` gives you the modification time in epoch seconds, then `date -d @` converts that
> to whatever format you specify in your `+format` string.

For example:

```shell
> ls -l
-rw-r--r-- 1 root root 0 Dec 31  2018 file
> cp file file.$(date -d @$(stat -c '%Y' file) "+%Y%m%d")
> ls -l
-rw-r--r-- 1 root root 0 Dec 31  2018 file
-rw-r--r-- 1 root root 0 Dec 31  2018 file.20181231
```

You can simplify the copy command using:

```shell
cp file{,.$(date -d @$(stat -c '%Y' file) "+%Y%m%d")}
```

Via [commandlinefu.com](https://www.commandlinefu.com/commands/view/24686/create-backup-copy-of-file-adding-suffix-of-the-date-of-the-file-modification-not-todays-date?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+Command-line-fu+%28Command-Line-Fu%29).
