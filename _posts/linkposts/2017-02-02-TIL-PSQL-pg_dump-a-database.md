---
layout: single
title: "(TIL) PSQL: Dump a database"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
---

Using the `pg_dump` with the `-Fc` flag will create a dump of the given
database in a custom format. The output of this command can be redirected
into a file (the `.dump` extension is a standard convention):

```bash
pg_dump -Fc my_database > my_database.dump
```

Using the custom format option provides a couple benefits. The output is
significantly compressed in comparison to a generic SQL dump. The dump and
restoration is more flexible. Lastly, the dump can be performed in parallel
if your machine has multiple cores to work with. Likewise, the restoration
can be done in parallel with multiple jobs.

See the
[`pg_dump` docs](http://www.postgresql.org/docs/current/static/app-pgdump.html)
for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
