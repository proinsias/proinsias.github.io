---
layout: single
title: "(TIL) Travis: Skip unnecessary builds"
date: 2017-11-17 10:18
modified: 2017-11-17 10:18
---

> Especially when you’re working with a large team with multiple Travis-enabled repositories,
you’ll want to avoid running any unnecessary builds.
The most common reason a build might be unnecessary is that it’s just a documentation or comment change.
For simple changes like these, add "[ci skip]" to your commit message,
and Travis will automatically skip that build.

Via [localytics.com](http://eng.localytics.com/best-practices-and-common-mistakes-with-travis-ci/).
