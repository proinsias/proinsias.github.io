---
layout: single
title: "Docker: Start Container as Root User"
excerpt: Using the -u option
date: 2018-09-27 10:25
last_modified_at: 2025-05-13 00:33:19
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
