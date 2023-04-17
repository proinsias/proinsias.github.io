---
layout: single
title: 'Nix: Stay connected without an interactive SSH shell'
excerpt: Using the -N flag
date: 2017-03-03
last_modified_at: 2022-11-28
categories: til
tags:
    - nix
    - til
---

> You may need to connect to a remote location via SSH,
> but if the remote location doesn't provide an interactive shell, the connection is most likely to drop.
>
> For example, you may need to port forward from the remote connection's port 9001 to localhost's port 6000,
> but the remote server does not offer an interactive shell.
>
> To prevent a disconnection, use the -N flag:

```bash
ssh -N -L 9001:localhost:6000 user@remote.host
```

The `-N` option prevents remote commands from executing, and therefore allows local port forwarding.

Via [enki.com](https://app.enkipro.com/#/insight/565f4430e823b7070068d4db).
