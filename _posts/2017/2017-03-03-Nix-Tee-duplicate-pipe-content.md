---
layout: single
title: 'Nix: Duplicate pipe content'
excerpt: Write to multiple files at the same time
date: 2017-03-03
modified: 2022-12-02
categories: til
tags:
    - nix
    - til
---

> To duplicate the content while piping you can use the tee utility.
> One straightforward and useful example is that tee can be used to write to multiple files
> at the same time.
> The command to achieve this is:

```bash
ps | tee file_one file_two file_three
```

> The output of the `ps` command is now inside three different files.
> To append data to files, the `-a` flag must be used:

```bash
ps | tee -a file_one file_two file_three
```

Via [enki.com](https://app.enkipro.com/#/insight/56f437459d23a008008ad6b1).
