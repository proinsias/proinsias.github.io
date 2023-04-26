---
layout: single
title: 'TSQL: Basic T-SQL'
date: 2019-08-06 10:11
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - sql
    - til
    - tsql
---

```sql
-- Show all databases.
select name from master.sys.databases;

-- Show all tables.
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'

-- Show all tables from a particular database.

SELECT TABLE_NAME FROM <DATABASE_NAME>.INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE'

```
