---
layout: single
title: "Docker: Attach/Detach"
excerpt: Interacting with containers
date: 2018-03-02 19:40
last_modified_at: 2023-05-01 17:51:14
categories:
    - til
tags:
    - docker
    - til
---

To detach from a container, you hold `Ctrl` and press `P`, then `Q`.
This only works if the container was started with both `-t` and `-i`.

If this doesn't work for some reason, try:

```bash
docker stop <container-id>
```

To attach to a running container you use:

```bash
docker container attach "container_name"
```

Via [SO](https://stackoverflow.com/q/19688314/1257318).
