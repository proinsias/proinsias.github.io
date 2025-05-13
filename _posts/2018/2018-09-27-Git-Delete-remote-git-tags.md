---
layout: single
title: "Git: Delete Remote Git Tags"
excerpt: Via git push
date: 2018-09-27 10:14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - git
    - til
---

Tagging releases with Git is a good idea.
In case your tags get off track,
here is how you delete a Git tag locally and on a remote:

```bash
$ git tag -d abc
$ git push origin :refs/tags/abc
To git@github.com:hashrocket/hr-til
 - [deleted]         abc
```

It gets trickier if you're using Semantic Versioning,
which includes dots in the tag name.
The above won't work for `v16.0.0`. This will:

```bash
$ git tag -d v16.0.0
$ git push origin :v16.0.0
To git@github.com:hashrocket/hr-til
 - [deleted]         v16.0.0
```

Via [jwworth/til](https://github.com/jwworth/til).
