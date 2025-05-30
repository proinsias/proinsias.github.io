---
layout: single
title: "Snowflake: Create table with comment"
excerpt: Be kind to future you, ... and other developers
date: 2017-11-13 15:30
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - snowflake
    - til
---

You can specify comments for a table, and even the columns in the table:

<!-- markdownlint-disable line-length -->

```sql
>>> create table example
(col1 number comment 'a column comment')
comment='a table comment'
;

+-------------------------------------+
| status                              |
|-------------------------------------|
| Table EXAMPLE successfully created. |
+-------------------------------------+

>>> show tables like 'example';

+---------------------------------+---------+---------------+-------------+-------+-----------------+------------+------+-------+--------------+----------------+
| created_on                      | name    | database_name | schema_name | kind  | comment         | cluster_by | rows | bytes | owner        | retention_time |
|---------------------------------+---------+---------------+-------------+-------+-----------------+------------+------+-------+--------------+----------------|
| Mon, 11 Sep 2017 16:35:59 -0700 | EXAMPLE | TESTDB        | PUBLIC      | TABLE | a table comment |            |    0 |     0 | ACCOUNTADMIN | 1              |
+---------------------------------+---------+---------------+-------------+-------+-----------------+------------+------+-------+--------------+----------------+

>>> desc table example;

+------+--------------+--------+-------+---------+-------------+------------+-------+------------+------------------+
| name | type         | kind   | null? | default | primary key | unique key | check | expression | comment          |
|------+--------------+--------+-------+---------+-------------+------------+-------+------------+------------------|
| COL1 | NUMBER(38,0) | COLUMN | Y     | NULL    | N           | N          | NULL  | NULL       | a column comment |
+------+--------------+--------+-------+---------+-------------+------------+-------+------------+------------------+
```

Via [snowflake.net](https://docs.snowflake.net/manuals/sql-reference/sql/create-table.html).
