---
layout: single
title: "Git: Dynamic identity"
excerpt: A great example of when to use the gitconfig includeif directive
date: 2021-04-27
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - git
    - til
---

> Sometimes I use my terminal for personal work, like this article.
> In those cases, I like my git commits to use my personal email address and not my work email.
>
> Luckily, all the repos that I use for work have the company name in their path,
> so I set up a dynamic include in my `.gitconfig` that overrides my configured email address for those directories.
> It looks like this:

```git
[user]
  name = Adam Hollett
  email = adamh@example.com

[includeIf "gitdir/i:**/work.company/**"]
  email = adamh@work.company.com
```

> The includeIf directive in `.gitconfig` only activates the configuration in that category if its pattern is matched.
> In this case, it looks for the name work.company in the current path and sets a work email address if it finds it.

Via [Adam Hollett](https://dev.to/admhlt/terminal-tricks-from-my-dotfiles-2moe).
