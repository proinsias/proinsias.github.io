---
layout: single
title: "(TIL) Mac: Copy files intelligently with ditto"
date: 2017-07-12 14:07
modified: 2017-07-12 14:07
---

> `ditto` is slightly more advanced but can be advantageous to ‘cp’ for several reasons,
as it not only preserves ownership attributes and permissions but also file resource forks
and file and folder metadata, essentially insuring that the file and/or folders are copied
exactly.
Additionally, `ditto` can be used to copy a file or folder to a source directory, but if
that source doesn’t yet exist, `ditto` will automatically create it.
Also, if the destination folder does exist, the copied contents will be merged together in
that destination directory.
Finally, `ditto` also follows symbolic links, making it particularly handy if you’re a
heavy user of the `ln` command.

```bash
ditto source destination
```

> `ditto` will check to see if the destination already exists, and if it does, it will
merge the directories of the source to the destination:

```bash
ditto ~/Pictures/Fall2015/ /Volumes/PhotoBackup/2015/
```

> If for some reason you don’t want to copy metadata and resource forks, use the `–norsrc`
> flag.

Via [osxdaily.com](http://osxdaily.com/2014/06/11/use-ditto-copy-files-directories-mac-command-line/).
