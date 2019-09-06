---
layout: single
title: "(TIL) Nix: Duplicate pipe content"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
---

> To duplicate the content while piping you can use the tee utility.
One straightforward and useful example is that tee can be used to write to multiple files
at the same time.
The command to achieve this is:

```bash
ps | tee fileone filetwo filethree
```

> The output of the `ps` command is now inside three different files.
To append data to files, the `-a` flag must be used:

```bash
ps | tee -a fileone filetwo filethree
```

Via [enkipro.com](https://enkipro.com/insight/56f437459d23a008008ad6b1).
