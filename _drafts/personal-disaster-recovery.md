---
layout: single
title: 'Pets v Cattle: Making a personal disaster recovery plan'
date: 2022-06-21 12:36
modified: 2022-06-21 12:36
categories: posts
header:
    image: /assets/images/disaster_recovery_plan.jpg
    image_description: 'Disaster Recovery Plan'
    caption: 'Disaster Recovery Plan (Photo credit: Jernej Furman on flickr)'
    teaser: /assets/images/disaster_recovery_plan_thumbnail.gif
tags:
    - ansible
    - backup
    - disaster
    - dotfiles
    - recovery
    - stow
---

One lesson from a former DevOps colleague that really resonated with me –
when dealing with computers, you should rely on cattle, not on pets.
the difference between pets and cattle when in came to machines in DevOps.

You never want to be in the situation where you have a carefully configured machine that your entire business relies on,
whether it is a physical server or a virtual machine.
You never want one machine to dictate the success of your business.
When you put a lot of love, care and attention into the configuration and maintenance of individual machines,
they become like pets. You would hate to seem them go.
What you should do instead is to create a system of machines that can easily be created, configured, deleted and replaced.
If anything happens to any given machine, you can very easily replace that machine without a lot of effort on your part.
This is like having cattle, where you have a bunch of animals in your herd, and if something happens to one of them,
you can easily replace that animal, and you are not as invested in any one animal.

If someone takes a hammer to your laptop, how quickly before you can be up and running.
Points for a system that enables you to be working using a minimal configuration
while additional configuration is done in the background.

While this is a good system for how to run your business, this idea really resonated with me because of my own
previous experience with having to swap work laptop routinely over several months due to some buggy hardware,
requiring me to recreate my work environment multiple times to get access to the system configuration, applications,
and documents that I required to get work done.
I quickly became interested in how to do this as efficiently as possible.

NEED TO ADDRESS HOW SOMEONE MIGHT NOT THINK THIS WORTHWHILE SINCE THEY DON'T SWAP COMPUTERS REGULARLY.

Idea of keeping your system setup as much in text configuration files as much as possible as a disaster recovery plan.

Do do backups: Should have three copies of every important file:

1. On your work machine.
2. On a local backup drive (spare internal/external drive or network-attached storage (NAS)).
3. On an off-premise drive, e.g., using a cloud service.

That way even if all your computing devices are stolen, you still have a cloud backup. Also, if you end up losing
the copy of a file on your work machine,
you will still have the file on your local drive and a backup on the cloud drive.

However, there are issue with backups:

-   Slow to restore entire machine, and machine is out of commission the entire time restore is happening.
-   Very hard to trust backup process. Ideally, you would regularly use second hard disk to restore to
    and then compare with backup.
-   Very limited compatibility - need
-   Build up of cruft. If it doesn't matter enough for you to incorporate it into your configuration files,
    it's not important and shouldn't be taking up space.

Use a document-syncing service, such as Google Drive, OneDrive, iCloud, Dropbox, etc. Then on a new machine, I just
log into the service, and my documents start loading onto my laptop.

For code, obviously use a version-control software like Git. But it's easy to forget that you have local changes
that are not present on the remote repository, and then are in danger of being lost. Use tool like `uncommitted`.

Idea of having configuration files to represent various configurations on your machine.
That way we can keep these textfiles in Git, and easily track changes and backup to Github.

Next step - dotfiles, configuration files for macOS or \*nix machine.
People often use github to synchronize these dotfiles.
Then to make any new environment more like your existing environment, you just need to clone that dotfiles repo
and run a command like `stow` (link) to setup the files in the right locations.

Next step - homebrew - quickly setup software I want to install - command line utilities and applications.
Can then save this setup configuration as a text file.

Ansible - system preferences etc

Use of github actions to test configuration regularly.

terminal recording gifs
Screenshots?
Medium post?

<http://cloudscaling.com/blog/cloud-computing/the-history-of-pets-vs-cattle/>

<sup>_Banner photo by [Jernej Furman](https://www.flickr.com/people/91261194@N06/)
shared under a [Creative Commons (BY) license](https://creativecommons.org/licenses/by/2.0/)_
.
