---
layout: single
title: "(TIL) Docker: Set Timezone"
date: 2018-10-25 12:38
modified: 2018-10-25 12:38
categories: til
tags:
  - docker
  - til
---

To set which timezone your docker container should use,
add the following to your `Dockerfile`:

```
ENV TZ=America/Los_Angeles
RUN ln --force --no-dereference --symbolic /usr/share/zoneinfo/"${TZ}" /etc/localtime \
 && echo "${TZ}" > /etc/timezone

```

Via [serverfault.com](https://serverfault.com/a/683651).
