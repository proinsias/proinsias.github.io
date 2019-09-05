---
layout: single
title: "(TIL) Git: Git Log With Authors"
date:
modified:
---

In my [never-ending quest](https://til.hashrocket.com/posts/32d01c979e-git-log-since)
to better summarize my work at the end of the day using computers,
I discovered today the Git `--author` flag. It works like this:

```bash
$ glg --since=midnight --author=dev+jwworth+mikechau@hashrocket.com
* 4ba91a8 (HEAD, origin/checkout, checkout) Add guard for manual entry
* 3a4e4c9 Seed a coupon and code and auto-apply in preview
* cb1adee Add discount
...
```

The alias `glg` is discussed
[here](https://til.hashrocket.com/posts/32d01c979e-git-log-since).

I use this when multiple developers or teams are committing throughout the day
to the same repository, to disambiguate our work from others.
Ready to paste into your billing software of choice.

Via [jwworth/til](https://github.com/jwworth/til).
