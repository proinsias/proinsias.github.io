---
last_modified_at: 2023-04-26 13:22:37
date: 2022-11-03
layout: single
published: true
title: Merge multiple JPEGs
excerpt: Stack JPEGs vertically
categories:
    - til
tags:
    - til
    - nix
---

Use the following to combine multiple JPEG files into a JPEG file that stacks them vertically:

```shell
convert picture-1.jpg picture-2.jpg picture-3.jpg -append merged_picture.jpg
```

Via [commandlinefu.com](https://www.commandlinefu.com/commands/view/27838/merge-multiple-jpgs-to-one-picture-vertikal).
