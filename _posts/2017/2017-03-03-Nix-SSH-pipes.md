---
layout: single
title: 'Nix: SSH pipes'
excerpt: Execute half your command locally and half remotely
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

One of the benefits of piping is that you can use it over networks and it does wonders for
data transfer. Note that half of the command is executed locally, while the other half is
executed remotely.

## Compressed file transfer

You can copy files over the network in an instant. This archives the files into a
`tar` file, compresses it, copies it to the server, and decompresses it there:

```bash
tar cfz - folder | ssh user@enki 'tar xfz destdir'
```

## Backing up data with dd

You can also create an image of your local data with:

```bash
dd if=/folder/data | ssh user@enki 'dd of=data.iso'
```

Via [enkipro.com](https://app.enkipro.com/#/insight/56f52b879d23a008008ae28f).
