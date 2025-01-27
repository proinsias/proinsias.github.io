---
layout: single
title: "PSQL: Who Is The Current User"
excerpt: The current_user variable
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

You can determine the current user of a psql session by selecting on the `current_user`

```sql
> select current_user;

  current_user
----------------
   test_user
```

You can also select on the `user` which is an alias of `current_user`

```sql
> select user;

     user
----------------
   test_user
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
