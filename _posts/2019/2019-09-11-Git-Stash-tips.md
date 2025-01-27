---
layout: single
title: "Git: Stash tips"
excerpt: Annotate or summarize your stashes, and more
date: 2019-09-09 16.31
last_modified_at: 2023-04-26 13:35:52
categories:
    - til
tags:
    - git
    - til
---

I'm a big fan of using `git stash` to shelve some changes in my repository so that I can move on to some other task.
Here are some advanced `git stash` commands to optimize your use of this tool:

> To provide a bit more context, it's good practice to annotate your stashes with a description, using:

```bash
git stash save "message"
```

> You can view a summary of a stash with git stash show:

```bash
$ git stash show
index.html | 1 +
style.css | 3 +++
2 files changed, 4 insertions(+)
```

> Or pass the `-p` option (or `--patch`) to view the full diff of a stash:

```bash
$ git stash show -p
diff --git a/style.css b/style.css
new file mode 100644
index 0000000..d92368b
--- /dev/null
+++ b/style.css
@@ -0,0 +1,3 @@
+* {
    + text-decoration: blink;
+}
diff --git a/index.html b/index.html
index 9daeafb..ebdcbd2 100644
--- a/index.html
+++ b/index.html
@@ -1 +1,2 @@
+<link rel="stylesheet" href="style.css"/>
```

> You can choose which stash to re-apply by passing its identifier as the last argument:

```bash
git stash pop stash@{2}
```

> If the changes on your branch diverge from the changes in your stash,
> you may run into conflicts when popping or applying your stash.
> Instead, you can use the following to create a new branch to apply your stashed changes to:

```bash
git stash branch
```

> You can delete all of your stashes with:

```bash
git stash clear
```

Via [Atlassian Git Tutorials](https://www.atlassian.com/git/tutorials/saving-changes/git-stash).
