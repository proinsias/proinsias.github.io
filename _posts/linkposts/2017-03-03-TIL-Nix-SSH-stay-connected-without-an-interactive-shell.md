---
layout: single
title: "(TIL) Nix: Stay connected without an interactive SSH shell"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
---

> You may need to connect to a remote location via SSH, but if the remote location doesn't provide an interactive shell, the connection is most likely to drop.

> For example, you may need to port forward from the remote connection's port 9001 to localhost's port 6000, but the remote server does not offer an interactive shell.

> To prevent a disconnection, use the -N flag:

```bash
$ ssh -N -L 9001:localhost:6000 user@remotehost
```

The `-N` option prevents remote commands from executing, and therefore allows local port forwarding.

Via [Enki](https://app.enkipro.com/#/insight/565f4430e823b7070068d4db).
