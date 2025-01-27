---
layout: single
title: "PSQL: Truncate Tables With Dependents"
excerpt: Truncate in pairs or via a cascade
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

If you have tables `A`
and `B` where `B` has a foreign key referencing `A`, then trying to truncate
`A` will result in something like this:

```sql
> truncate A;
ERROR:  cannot truncate a table referenced in a foreign key constraint
```

Fortunately, `truncate` has some tricks up its sleeve.

If you know two tables are tied together via a foreign key constraint, you
can just truncate both of them at once:

```sql
> truncate A, B;
TRUNCATE TABLE;
```

If many tables are tied together in this way and you are looking to throw
all of it out, then a simpler approach is to cascade the truncation:

```sql
> truncate A cascade;
NOTICE:  truncate cascades to table "B"
TRUNCATE TABLE
```

Use these with care and potentially within transactions because your data
will go bye bye.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
