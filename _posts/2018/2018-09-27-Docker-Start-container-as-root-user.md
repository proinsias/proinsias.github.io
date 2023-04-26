---
layout: single
title: 'Docker: Start Container as Root User'
date: 2018-09-27 10:25
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - docker
    - til
---

When `sudo` is not available in container,
you can jump into a running container as `root` user using one of these commands:

```bash
docker exec -u root -t -i container_id /bin/bash

docker-compose run -u root --service-ports service_name exec bash
```
