---
layout: single
title: 'Nix: SSH With Port Forwarding'
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
categories: til
tags:
    - nix
    - til
---

Use the `-L` flag with `ssh` to forward a connection to a remote server

```bash
ssh some.server -L3000:localhost:3000
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
