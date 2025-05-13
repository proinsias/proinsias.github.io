---
layout: single
title: "Snowflake: Get_ddl statements"
excerpt: Generate a DDL statement that can be used to recreate the specified object
date: 2017-07-12 13:52
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - snowflake
    - til
---

> `get_ddl` returns a DDL statement that can be used to recreate the specified object.
> For databases and schemas, `get_ddl` is recursive, i.e. it returns the DDL statements for
> recreating all supported objects within the specified database/schema.

For example:

Return the DDL used to create a schema named `seq_schema`, which contains table `t1` and
sequence `seq`:

```sql
select get_ddl('schema', 'seq_schema');

-------------------------------------------------------------+
              GET_DDL('SCHEMA', 'SEQ_SCHEMA')                 |
-------------------------------------------------------------+
 create or replace schema SEQ_SCHEMA;                         |
 create or replace table T1(                                 |
 N NUMBER(38,0) NOT NULL                                     |
 );                                                          |
 create or replace sequence SEQ start with 2 increment by 2; |
-------------------------------------------------------------+
```

Via [Snowflake](https://docs.snowflake.net/manuals/sql-reference/functions/get_ddl.html).
