---
layout: single
title: "Docker: Verify docker-compose configuration"
excerpt: Validate your docker-compose.yml files
date: 2021-10-25
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - docker
    - docker-compose
    - til
---

Once you've edited your `docker-compose.yml` file, you can validate this file
using the `docker compose config` command that prints your resolved application
config to the terminal.

Note: the standalone `docker-compose` (hyphenated) binary is Docker Compose V1,
which reached end-of-life in June 2023 and has been removed from current Docker
Desktop/Engine installs. Use the `docker compose` CLI plugin (no hyphen)
instead.

Via
[docs.docker.com](https://docs.docker.com/compose/environment-variables/#the-env-file).
