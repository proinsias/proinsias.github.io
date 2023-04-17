---
layout: single
title: 'GitHub Actions: Skipping a step without failing'
excerpt: The continue-on-error option
date: 2021-04-04
last_modified_at: 2022-11-08
categories: til
tags:
    - github
    - github-actions
    - til
---

> I wanted to have a GitHub Action step run that might fail,
> but if it failed the rest of the steps should still execute and the overall run should be treated as a success.
>
> `continue-on-error: true` does exactly that:

```yaml
- name: Download previous database
  run: curl --fail -o tils.db https://til.simonwillison.net/tils.db
  continue-on-error: true
- name: Build database
  run: python build_database.py
```

> [From this workflow](https://github.com/simonw/til/blob/7d799a24921f66e585b8a6b8756b7f8040c899df/.github/workflows/build.yml#L32-L36)
>
> I'm using `curl --fail` here which returns an error code if the file download files
> (without `--fail` it was writing out a two line error message to a file called `tils.db` which is not what I wanted).
> Then `continue-on-error: true` to keep on going even if the download failed.

Via [til.simonwillison.net](https://github.com/simonw/til/blob/main/github-actions/continue-on-error.md).
