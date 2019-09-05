---
layout: single
title: "(TIL) SQL: UNION v UNION ALL"
date:
modified:
---

`UNION` removes duplicate records, whereas `UNION ALL` does not.

```sql
> SELECT 'foo' AS bar UNION SELECT 'foo' AS bar
+-----+
| bar |
+-----+
| foo |
+-----+
1 row in set (0.00 sec)

> SELECT 'foo' AS bar UNION ALL SELECT 'foo' AS bar
+-----+
| bar |
+-----+
| foo |
| foo |
+-----+
2 rows in set (0.00 sec)
```

Via [SO](https://stackoverflow.com/a/49928/1257318).
