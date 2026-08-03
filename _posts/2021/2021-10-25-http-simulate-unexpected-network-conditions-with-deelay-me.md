---
layout: single
title: "HTTP: Simulate unexpected network conditions with deelay.me"
excerpt: Another webpage to add to your toolkit
date: 2021-10-25
last_modified_at: 2026-08-03 14:04:37
categories:
    - tips
tags:
    - http
    - tips
    - utility
---

> Slow loading resources (images, scripts, etc) can break your application. With
> [this proxy](http://web.archive.org/web/20201111150100/http://deelay.me/) you
> can simulate unexpected network conditions when loading a specific resource.

The `deelay.me` domain has since expired and now redirects to unrelated sites,
so the link above points to an archive.org snapshot instead. To use it, change
your link to: `deelay.me/<delay in milliseconds>/<original url>`. For example:

```text
https://deelay.me/5000/https://picsum.photos/200/300
```
