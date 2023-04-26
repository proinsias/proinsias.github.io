---
layout: single
title: "Docker: 'Could not find' with network prune"
date: 2018-09-26 16:00
last_modified_at: 2023-04-26 13:22:37
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

try using `docker network prune` to remove all unused networks and free up the address pool.

Via [GitHub](https://github.com/lando/docs/issues/139).
