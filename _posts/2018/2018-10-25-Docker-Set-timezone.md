---
layout: single
title: 'Docker: Set Timezone'
date: 2018-10-25 12:38
last_modified_at: 2018-10-25 12:38
categories: til
tags:
    - docker
    - til
---

To set which timezone your docker container should use,
add the following to your `Dockerfile`:

```dockerfile
ENV TZ=America/Los_Angeles
RUN ln --force --no-dereference --symbolic /usr/share/zoneinfo/"${TZ}" /etc/localtime \
 && echo "${TZ}" > /etc/timezone
```

Via [serverfault.com](https://serverfault.com/a/683651).
