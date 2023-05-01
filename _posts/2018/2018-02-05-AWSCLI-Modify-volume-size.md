---
layout: single
title: 'AWS CLI: Modify volume size'
excerpt: Using awscli
date: 2018-02-05 11:27
last_modified_at: 2023-05-01 17:51:14
categories:
    - til
tags:
    - awscli
    - til
---

Here's how to modify the size of the volume attached to an EC2 instance "my_ec2":

-   First identify the instance ID from the instance name:

```bash
$ jq -r '.Reservations[0].Instances[0].InstanceId' \
    <(aws ec2 describe-instances --filters Name="tag:Name",Values="bfg-devbox")
i-02f8f997c05932f66
```

-   Then identify the ID of the attached volume:

```bash
$ jq -r '.Volumes[0].VolumeId' \
    <(aws ec2 describe-volumes --filter Name="attachment.instance-id",Values="i-02f8f997c05932f66")
vol-0abf653a810ee073b
```

-   And now you can modify the volume size:

```bash
aws ec2 modify-volume --volume-id vol-0abf653a810ee073b --size 256 --dry-run
```

Via AWS
[describe-instances](https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html),
[describe-volumes](https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-volumes.html),
and [modify-volume](https://docs.aws.amazon.com/cli/latest/reference/ec2/modify-volume.html)
docs.
