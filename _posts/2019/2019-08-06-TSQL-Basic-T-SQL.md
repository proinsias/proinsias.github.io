---
layout: single
title: "TSQL: Basic T-SQL"
excerpt: Some quick one liners
date: 2019-08-06 10:11
last_modified_at: 2023-05-01 18:10:56
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
