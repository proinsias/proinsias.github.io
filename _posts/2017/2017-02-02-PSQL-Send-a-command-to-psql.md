---
layout: single
title: 'PSQL: Send A Command To psql'
excerpt: Execute SQL from the command line
date: 2017-02-02
modified: 2022-11-11
categories: til
tags:
    - psql
    - sql
    - til
---

You can send a command to `psql` to be executed by using the `-c` flag:

```bash
$ psql -c "select 'Hello, World!';"
   ?column?
---------------
 Hello, World!
(1 row)
```

Specify a particular database as needed:

```bash
$ psql blog_prod -c 'select count(*) from posts;'
 count
-------
     8
(1 row)
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
