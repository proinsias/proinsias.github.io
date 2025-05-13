---
layout: single
title: "HTTP: Simulate unexpected network conditions with deelay.me"
excerpt: Another webpage to add to your toolkit
date: 2021-10-25
last_modified_at: 2025-05-13 00:33:19
categories:
    - tips
tags:
    - http
    - tips
    - utility
---

> Slow loading resources (images, scripts, etc) can break your application.
> With [this proxy](http://deelay.me) you can simulate unexpected network conditions when loading a specific resource.

To use `deelay.me`, change your link to: deelay.me/<delay in milliseconds>/<original url>. For example:

<https://deelay.me/5000/https://picsum.photos/200/300>
