---
layout: single
title: "Tmux: Create A New Session In A New Server"
excerpt: Using the -L flag
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - til
    - tmux
---

Any tmux command will, by default, be invoked against the `default`
server. You can instruct tmux to perform commands against a different server
with the `-L` flag and the name of the server.

If you name a server that doesn't already exist, tmux will create and start
that server for you. So, if you want to start a new session in a new server,
just run a command like the following:

```bash
tmux -L pokemon_server new-session -s pokedex
```

If you are to detach from this session, you will need to specify the name of
the server in order to attach again:

```bash
tmux -L pokemon_server attach -t pokedex
```

See `man tmux` for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
