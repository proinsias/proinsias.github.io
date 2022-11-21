---
modified: 2022-10-24
date: 2022-10-24
layout: single
published: true
title: Cherry Picking a Range of Commits with Git
excerpt: Git's cherry-picking syntax is easy to mess up
categories: til
tags:
    - git
    - til
    - nix
---

> Cherry picking a range of commits is not too difficult, but it does come with a strange syntax
> that I often forget. The basic form of cherry picking a range of commits is:
>
> ```bash
> git cherry-pick ebe6942..905e279
> ```
>
> The first hash in the range is the oldest commit and the last hash in the range is the newest
> commit. The confusion with this form of the cherry pick merge is that the first hash listed in
> the range is not included in the commit. The last hash is included. I find it difficult to keep
> track of which hash is included and which is not.
>
> As a result, my preferred syntax for including a range of commits in a cherry pick that is
> inclusive of both range endpoints is:
>
> ```bash
> git cherry-pick ebe6942^..905e279
> ```
>
> This syntax will include the first commit object. This inclusion is what I assume the range
> commit will do by default and I often get tripped up and confused by it.

Via [tollmanz.com](https://www.tollmanz.com/git-cherry-pick-range/).

Thanks to [Russ Gunther](https://www.linkedin.com/in/russell-gunther-a22a7a83/) for the tip!
