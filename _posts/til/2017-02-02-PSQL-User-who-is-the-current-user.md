---
layout: single
title: "(TIL) PSQL: Who Is The Current User"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
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
