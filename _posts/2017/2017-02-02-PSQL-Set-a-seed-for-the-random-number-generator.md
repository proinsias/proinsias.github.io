---
layout: single
title: "PSQL: Set A Seed For The Random Number Generator"
excerpt: Allow for reproducibility
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

In PostgreSQL, the internal seed for the random number generator is a
run-time configuration parameter. This `seed` parameter can be set to a
particular seed in order to get some determinism from functions that utilize
the random number generator. The seed needs to be something between `0` and
`1`.

We can see this in action by setting the seed and then invoking `random()` a
couple times. Doing this twice, we will see the reproducibility we can
achieve with a seed.

```sql
> set seed to 0.1234;
SET

> select random();
      random
-------------------
 0.397731185890734

> select random();
      random
------------------
 0.39575699577108
(1 row)

> set seed to 0.1234;
SET

> select random();
      random
-------------------
 0.397731185890734

> select random();
      random
------------------
 0.39575699577108
```

The seed can also be configured with the `setseed()` function.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
