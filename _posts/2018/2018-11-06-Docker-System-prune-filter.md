---
layout: single
title: "Docker: Filtered system prune"
excerpt: The filter option
date: 2018-11-06 10:20
last_modified_at: 2026-08-16 02:17:31
categories:
    - til
tags:
    - docker
    - til
---

Every now and then I run:

```bash
docker system prune --all --volumes
```

to remove all unused containers, networks, images (both dangling and
unreferenced), and volumes.

If you want to do this cleanup, but preserve images created within the last 24
hours, you can use the `--filter` option:

```bash
docker system prune --all --volumes --filter "until=24h"
```

Via
[SO](https://stackoverflow.com/questions/45142528/what-is-a-dangling-image-and-what-is-an-unused-image/45143234)
and
[docker.com](https://docs.docker.com/engine/reference/commandline/system_prune/).
