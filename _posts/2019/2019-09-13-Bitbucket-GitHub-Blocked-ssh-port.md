---
layout: single
title: "Git: Blocked ssh port"
date: 2019-09-13 16.28
modified: 2019-09-13 16.28
categories: til
tags:
  - bitbucket
  - git
  - github
  - til
---

I mostly clone GitHub and Bitbucket repositories using SSH URLs,
so that I can protect this access with an SSH private/public keypair.
Unfortunately, some firewalls refuse to allow SSH connections.
Thankfully both [GitHub](https://help.github.com/en/articles/using-ssh-over-the-https-port)
and
[Bitbucket](https://confluence.atlassian.com/bitbucket/troubleshoot-ssh-issues-271943403.html#TroubleshootSSHissues-Ifport22isblocked)
support using an SSH connection made over the HTTPS port.
Most firewall rules should allow this – though proxy servers may still interfere.

To enable this, edit `~/.ssh/config`, and add the following section:

```
Host github.com
  Hostname ssh.github.com
  Port 443
Host bitbucket.org
  Hostname altssh.bitbucket.org
  Port 443
```
