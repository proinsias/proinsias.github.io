---
layout: single
title: 'Git: Specify the ssh key to use'
excerpt: Via various configuration options
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 18:08:18
categories:
    - til
tags:
    - git
    - til
---

The following methods will tell git which private key to use.

## Environment variable `GIT_SSH_COMMAND`

For Git version 2.3.0+, you can use the environment variable `GIT_SSH_COMMAND`:

```bash
GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa_example" git clone example
```

Note that `-i` can sometimes be overridden by your config file,
in which case you should give SSH an empty config file:

```bash
GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa_example -F /dev/null" git clone example
```

## Configuration parameter `core.sshCommand`

For Git version 2.10.0+, you can configure this per repo or globally,
so you don't have to set the environment variable:

```bash
git config core.sshCommand "ssh -i ~/.ssh/id_rsa_example -F /dev/null"
```

## `~/.ssh/config`

You can also specify the private key using the `~/.ssh/config` file:

```bash
Host github.com
  User git
  Hostname github.com
  IdentityFile ~/.ssh/id_rsa
```

Via [SuperUser](https://superuser.com/q/232373).
