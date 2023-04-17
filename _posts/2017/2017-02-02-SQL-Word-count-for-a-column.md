---
layout: single
title: 'SQL: Word Count for a Column'
excerpt: Using array_length and regexp_split_to_array
date: 2017-02-02
last_modified_at: 2022-12-16
categories: til
tags:
    - sql
    - til
---

Assuming I have a database with a posts table:

```sql
> select * from posts where id = 1;
 id |  title   |              content
----+----------+------------------------------------
  1 | My Title | This is the content of my article.
```

I can compute the word count of the content of a given post like so:

```sql
> select sum(array_length(regexp_split_to_array(content, '\s+'), 1)) from posts \
  where id = 1;
 sum
-----
   7
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
