---
layout: single
title: "Shell: Identify process using a given port number"
date: 2022-06-28 10:53
modified: 2022-06-28 10:53
categories: til
tags:
  - lsof
  - port
  - til
---

Say you want to run an command that uses a given port number (e.g., TCP 3032), and it complains that that port number is already in use. In order to identify what command is using that port number, run the following command:

```shell
> lsof -iTCP:3032
COMMAND    PID USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
com.docke 5545 ftod    3u  IPv6 0x238ae01b5cc3b65b      0t0  TCP *:redwood-chat (LISTEN)
com.docke 5545 ftod  225u  IPv6 0x238ae01b5f23595b      0t0  TCP localhost:redwood-chat->localhost:50157 (FIN_WAIT_2)
...
```

If there are multiple results, you may want to filter to find the commands listening to that port:

```shell
> lsof -iTCP:3032 | grep LISTEN
com.docke 5545 ftod    3u  IPv6 0x238ae01b5cc3b65b      0t0  TCP *:redwood-chat (LISTEN)
```

If necessary, you can then use `kill` with the process identification number (PID) associated with that command.

Via [Jupyter GitHub issues](https://github.com/jupyter/notebook/issues/2844#issuecomment-385882596).
