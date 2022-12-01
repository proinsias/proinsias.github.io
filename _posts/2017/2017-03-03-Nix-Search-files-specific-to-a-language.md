---
layout: single
title: 'Nix: Search Files Specific To A Language'
excerpt: Using the ack command
date: 2017-03-03
modified: 2022-11-30
categories: til
tags:
    - nix
    - til
---

The `ack` command makes it easy to narrow the set of searched files to those
of a specific programming language. For instance, if you have a rails
project and only want to search the ruby files, use the `--ruby` flag with
your `ack` command.

```bash
ack --ruby Active
```

With the `--ruby` flag, I get a manageable number of results. Without it,
not so much.

```bash
$ ack --ruby Active | wc -l
      26
$ ack Active | wc -l
    5253
```

See `man ack` for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
