---
layout: single
title: "Website: How to create drafts in Jekyll"
date: 2021-06-03 12:55
modified: 2021-06-03 12:55
categories: til
tags:
  - jekyll
  - til
  - website
---

In case you haven't noticed, I use [Jekyll](https://jekyllrb.com) to create my blog from markdown files. And I typically write short posts, mostly TILs like this one. But I am trying to write longer, more thoughtful posts, which means that I will likely need to write drafts of these posts.

Well Jekyll has a nice [feature](https://uhded.com/jekyll-drafts) where you can save these drafts in a folder (`_drafts`) separate from the one used to contain your completed posts (`_posts`). That way the draft won't be made available at your website until you are ready to move it to the `_posts` folder.

But wait! There's more!!!

> You can view the posts (most likely locally) in the `_drafts` folder using the `--drafts`flag:

```shell
bundle exec jekyll serve --drafts
```

> Also, the posts in the `_drafts` folder typically don't have the date in the file name. i.e instead of `2020-01-01-post-1.md`, it would be `post-1.md`. You add the date after you move it to the `_posts` folder.
>
> If you want to keep the dates in the filename of the drafts, then run:

```shell
bundle exec jekyll serve --drafts --future
```
