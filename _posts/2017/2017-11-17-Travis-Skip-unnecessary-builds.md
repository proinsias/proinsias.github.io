---
layout: single
title: "Travis: Skip unnecessary builds"
excerpt: Via the "ci skip" suffix
date: 2017-11-17 10:18
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - til
    - travis
---

> Especially when you're working with a large team with multiple Travis-enabled repositories,
> you'll want to avoid running any unnecessary builds.
> The most common reason a build might be unnecessary is that it's just a documentation or comment change.
> For simple changes like these, add "\[ci skip\]" to your commit message,
> and Travis will automatically skip that build.

Via [localytics.com](https://web.archive.org/web/20180329110316/http://eng.localytics.com/best-practices-and-common-mistakes-with-travis-ci/).
