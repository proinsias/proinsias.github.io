---
layout: single
title: "AWS CLI: Assuming a role"
date: 2017-04-03
last_modified_at: 2023-04-26 13:22:37
excerpt: Using the aws config files
categories:
    - til
tags:
    - awscli
    - til
---

You can configure the AWS Command Line Interface to use a role by creating a profile for
the role in the `~/.aws/config` file. The following example shows a role profile named
`marketingadmin` that is assumed by the `default` profile.

```awscli
[profile marketingadmin]
role_arn = arn:aws:iam::123456789012:role/marketingadmin
source_profile = default
```

In this case, the `default` profile is an IAM user with credentials and permission to
assume a role named `marketingadmin`. To access the role, you create a named profile.
Instead of configuring this profile with credentials, you specify the `ARN` of the role
and the name of the profile that has access to it.

Via [aws.amazon.com](https://docs.aws.amazon.com/cli/latest/userguide/cli-roles.html)
.
