---
layout: single
title: "SQL: Calculate percentage of column"
date: 2021-06-14 18:59
modified: 2021-06-14 18:59
categories: til
tags:
  - sql
  - til
---

```sql
# Starting with a table.
> select * from sales;
+-------+------+
|  rep  | sale |
+-------+------+
|  Bob  |  15  |
| Sally |  30  |
| Peter |  15  |
+-------+------+
# Use a cross join.
>  SELECT Rep, Sale, Sale * 100 / t.s AS `percent of total`
.. FROM sales
.. CROSS JOIN (SELECT SUM(sale) AS s FROM sales) t;
+-------+------+------------------+
|  rep  | sale | percent of total |
+-------+------+------------------+
|  Bob  |  15  |        25        |
| Sally |  30  |        50        |
| Peter |  15  |        25        |
+-------+------+------------------+
# Or use a subselect/subsquery.
>  SELECT Rep, Sale,
.. Sale * 100 / (SELECT SUM(sale) AS s FROM sales) AS `percent of total`
.. FROM sales;

```

Via [ubiq.co](https://ubiq.co/database-blog/calculate-percentage-column-mysql/).
