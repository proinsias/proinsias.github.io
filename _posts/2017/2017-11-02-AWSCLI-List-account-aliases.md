---
layout: single
title: 'AWS CLI: List account aliases'
date: 2017-11-02 15:48
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - awscli
    - til
---

> If you want the URL for your sign-in page to contain your company name
> (or other friendly identifier) instead of your AWS account ID,
> you can create an alias for your AWS account ID.
> Your sign-in page URL has the following format, by default.
> 'Your_AWS_Account_ID.signin.aws.amazon.com/console/'
> If you create an AWS account alias for your AWS account ID,
> your sign-in page URL will look like the following example.
> 'Your_Alias.signin.aws.amazon.com/console/'
> Note: The original URL containing your AWS account ID remains active
> and can be used after you create your AWS account alias.
> To create an alias for your AWS Management Console sign-in page URL:

```bash
aws iam create-account-alias
```

> To delete an AWS account ID alias:

```bash
aws iam delete-account-alias
```

> To display your AWS account ID alias:

```bash
aws iam list-account-aliases
```

Via [aws.amazon.com](https://docs.aws.amazon.com/IAM/latest/UserGuide/console_account-alias.html)
.
