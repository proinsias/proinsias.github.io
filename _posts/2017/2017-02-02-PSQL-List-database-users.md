---
layout: single
title: 'PSQL: List Database Users'
excerpt: Using the du command
date: 2017-02-02 20:57
modified: 2022-11-11 20:57
categories: til
tags:
    - psql
    - sql
    - til
---

Within `psql`, type `\du` to list all the users for a database and their
respective permissions.

```bash
> \du
List of roles
Role name  |                   Attributes                   | Member of
------------+------------------------------------------------+-----------
jbranchaud | Superuser, Create role, Create DB, Replication | {}
sampleuser | Create DB                                      | {}
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
