---
layout: single
title: 'PSQL: Restore a database'
excerpt: Using the pg_restore function
date: 2017-02-02
last_modified_at: 2022-12-14
categories: til
tags:
    - psql
    - sql
    - til
---

To restore the dump, create a fresh database and then use `pg_restore`:

```bash
createdb my_new_database
pg_restore -d my_new_database my_database.dump
```

Note: the dumped tables will depend on some user role. You will need to
ensure that this role exists on the database cluster where the restore is
happening. You can use the `createuser` command if necessary.

See the
[`pg_restore`
docs](http://www.postgresql.org/docs/current/static/app-pgrestore.html)
for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
