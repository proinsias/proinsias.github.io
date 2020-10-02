---
layout: single
title: "(TIL) Docker: Attach/Detach"
date: 2018-03-02 19:40
modified: 2018-03-02 19:40
categories: til
tags:
  - docker
  - til
---

To detach from a container, you hold `Ctrl` and press `P`, then `Q`.
This only works if the container was started with both `-t` and `-i`.

If this doesn't work for some reason, try:

```bash
docker stop <containerid>
```

To attach to a running container you use:

```bash
docker container attach "container_name"
```

Via [SO](https://stackoverflow.com/q/19688314/1257318).
