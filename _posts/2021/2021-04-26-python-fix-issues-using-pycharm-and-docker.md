---
layout: single
title: 'Python: Fix issues using PyCharm and Docker'
excerpt: Two troubleshooting tips
date: 2021-04-26 11:56
modified: 2022-11-02 11:56
categories: til
tags:
    - docker
    - pycharm
    - python
    - til
---

If you try to run a Docker container from within PyCharm, and you get something like:

```bash
Couldn't refresh skeletons for remote interpreter
...
```

or:

```bash
can't open file '/opt/.pycharm_helpers/pycharm/django_test_manage.py'
...
```

Then you should clear all pycharm helpers from your docker containers and images:

```bash
docker ps -a | grep -i pycharm | awk '{print $1}' | xargs docker rm
docker images | grep -i pycharm | awk '{print $3}' | xargs docker rmi
```

Via [Christian Kreuzberger](https://chkr.at/wordpress/?p=227).

Another useful troubleshooting tip for Docker-related errors is
to select `File > Invalidate Caches...` within PyCharm, and then restart the app.
