---

layout: single
title: "Snowflake: Increment date and time values with dateadd"
date: 2017-07-04 22:57
modified: 2017-07-04 22:57
categories: til
tags:

- snowflake
- til

---

```sql
// Add two years to the current date:
select dateadd(year, 2, current_date());

// Subtract two seconds to the current date and time:
select dateadd(second, -2, current_timestamp());

```

Via [Snowflake Docs](https://docs.snowflake.net/manuals/user-guide/date-time-examples.html#incrementing-date-and-time-values).
