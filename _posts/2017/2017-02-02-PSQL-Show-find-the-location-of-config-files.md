---
layout: single
title: 'PSQL: Find The Location Of Postgres Config Files'
excerpt: Via show config_file
date: 2017-02-02
modified: 2022-11-11
categories: til
tags:
    - psql
    - sql
    - til
---

If you can connect to your database with `psql`, then you can easily find
the location of your Postgres config files. After connecting, I can ask
Postgres to show me where the main config file is:

```sql
> show config_file;
                                  config_file
--------------------------------------------------------------------------------
 /Users/jbranchaud/Library/Application Support/Postgres/var-9.5/postgresql.conf
```

In the same directory as that `postgresql.conf` file are a number of other
configuration files such as the `pg_hba.conf` file.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
