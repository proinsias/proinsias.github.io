---
layout: single
title: "PSQL: Storing Emails With citext"
excerpt: Ignore case in email addresses
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - psql
    - sql
    - til
---

Email addresses should be treated as case-insensitive because they are. If a
user is trying to sign in with their email address, we shouldn't care if
they type `user@example.com` or `User@example.com`. Both of those email
addresses should be treated as equal and ultimately lead us to the same
`User` record.

With the
[`citext`](http://www.postgresql.org/docs/current/static/citext.html)
extension, we can create a column that acts as a case-insensitive text type.
Any comparisons on a column of that type will internally have the `lower`
function executed on the arguments.

The following example shows this in action:

```sql
create extension if not exists citext;

create table citext_emails (
  id serial primary key,
  email citext not null unique
);

insert into citext_emails (email) values ('LizLemon@nbc.com');

select * from citext_emails where email = 'lizlemon@nbc.com';
--  id |      email
-- ----+------------------
--   1 | LizLemon@nbc.com
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
