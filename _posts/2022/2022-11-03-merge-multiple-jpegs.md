---
modified: '2022-11-03 15:52 -0400'
date: '2022-11-03 15:52 -0400'
layout: single
published: true
title: Merge multiple JPEGs
excerpt: Stack JPEGs vertically
categories: til
tags:
  - til
  - nix
---
Use the following to combine multiple JPEG files into a JPEG file that stacks them vertically:

```shell
convert picture-1.jpg picture-2.jpg picture-3.jpg -append merged\_picture.jpg
```

Via [commandlinefu.com](https://www.commandlinefu.com/commands/view/27838/merge-multiple-jpgs-to-one-picture-vertikal).
