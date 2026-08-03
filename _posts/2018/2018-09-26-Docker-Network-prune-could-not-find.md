---
layout: single
title: "Docker: 'Could not find' with network prune"
excerpt: Free up the address pool
date: 2018-09-26 16:00
last_modified_at: 2026-08-03 14:04:37
categories:
    - til
tags:
    - docker
    - til
---

If you encounter the following error when starting a docker container:

```docker
ERROR: could not find an available, non-overlapping IPv4 address pool among the defaults to assign to the network
```

try using `docker network prune` to remove all unused networks and free up the
address pool.

Via
[GitHub](http://web.archive.org/web/20220626231815/https://github.com/lando/docs/issues/139).
