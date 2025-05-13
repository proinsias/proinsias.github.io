---
layout: single
title: "How to Tag Docker Images with Git Commit Information"
excerpt: Link versions of a Docker image back to Git commits
date: 2023-05-03 09:26
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - docker
    - git
    - til
---

> I wanted to be able to track versions of the Docker image (and the Dockerfile used to create those images), and link those versions back to specific Git commits in the source repository.
>
> This variation of the git log command will print only the full hash of the last commit to the repository: `git log -1 --format=%H`
>
> If you prefer the shortened commit hash ..., then just change the `%H` to `%h`, like this: `git log -1 --format=%h`.
>
> You'll need to add lines like this to your Dockerfile:

```dockerfile
ARG GIT_COMMIT=unspecified
LABEL org.opencontainers.image.revision=$GIT_COMMIT
```

Note that I've updated the label name in the original post to reflect an update later in the post.

> The first line defines a build-time argument, and \[setting this to \] `=unspecified` means that if the built-time argument is omitted or not supplied,
> it will default to the value of "unspecified". The second line takes the information from the argument and adds it as a label on the image.
>
> \[Now\] build the image with the `--build-arg` flag:

```shell
docker build -t flask-local-build --build-arg GIT_COMMIT=$(git log -1 --format=%h) .
```

Note that the `--build-arg` flag applies to `docker-compose` commands too.

> When you build the image this way, you can then see the Git commit attached to the image as a label using this command:

```shell
docker inspect flask-local-build | jq '.[].ContainerConfig.Labels'
```

Via [Scott Lowe](https://blog.scottlowe.org/2017/11/08/how-tag-docker-images-git-commit-information/).
