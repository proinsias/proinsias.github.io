---
layout: single
title: "Using a single sudo to run multiple && arguments"
excerpt: There's more than one way to skin a cat
date: 2023-05-02 21:00
last_modified_at: 2023-05-03 01:03:14
categories:
    - til
tags:
    - sudo
    - til
    - unix
---

Here are a couple of ways to run multiple commands using a single sudo:

```shell
# 1.
sudo -s <<< 'apt update -y && apt upgrade -y'

# 2.
sudo sh -c 'apt update -y && apt upgrade -y'
```

Via [commandlinefu.com](https://www.commandlinefu.com/commands/view/24653/using-a-single-sudo-to-run-multiple-arguments).
