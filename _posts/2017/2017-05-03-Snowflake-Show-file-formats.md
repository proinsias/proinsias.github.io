---
layout: single
title: "Snowflake: Show file formats"
date: 2017-05-03 21:17
modified: 2017-05-03 21:17
categories: til
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
