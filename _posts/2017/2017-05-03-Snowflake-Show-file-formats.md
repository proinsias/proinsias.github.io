---
layout: single
title: "Snowflake: Show file formats"
excerpt: List the file formats for which you have access privileges
date: 2017-05-03 21:17
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - snowflake
    - til
---

To list the file formats for which you have access privileges, use:

```sql
SHOW FILE FORMATS [ LIKE '<pattern>' ] [ IN <scope> ]
```

where:

```sql
<scope> ::=  { ACCOUNT | [ DATABASE ] <db_name> | [ SCHEMA ] <schema_name> }
```

Via [snowflake.net](https://docs.snowflake.net/manuals/sql-reference/sql/show-file-formats.html).
