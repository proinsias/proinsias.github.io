---
layout: single
title: "Pets v Cattle: Making a personal disaster recovery plan"
excerpt: "When disaster strikes, how quickly will you recover?"
date: 2023-04-18
last_modified_at: 2024-11-18 17:17:28
categories:
    - posts
published: true
header:
    image: /assets/images/disaster_recovery_plan.jpg
    image_description: "Disaster Recovery Plan"
    caption: "Disaster Recovery Plan (Photo credit: Jernej Furman on flickr)"
    teaser: /assets/images/disaster_recovery_plan_thumbnail.gif
tags:
    - ansible
    - backup
    - disaster
    - dotfiles
    - posts
    - recovery
    - stow
toc: true
---

<sup>_Banner photo by [Jernej Furman](https://web.archive.org/web/20240214200815/https://www.flickr.com/people/91261194@N06/)
shared under a [Creative Commons (BY) license](https://creativecommons.org/licenses/by/2.0/)_
.

> "When dealing with computers, you should rely on cattle, not on pets."

With these wise words, a former DevOps colleague introduced me to the idea of treating computers
[as cattle, rather than pets](https://cloudscaling.com/blog/cloud-computing/the-history-of-pets-vs-cattle/).

When you put a lot of love, care and attention into the configuration and maintenance of individual machines,
they become like pets. You would hate to seem them go.
This is especially true if your entire business relies on that machine's availability.
If a machine goes down, you have to wait until a new machine is built,
and your custom configuration restored from a backup that is _hopefully_ complete and valid.

Rather than relying on these "pets", a better approach is to depend on a collections of machines
that can be automatically created, configured, deleted and replaced.
These machines are "cattle", with a bunch of machines in your "herd".
If something happens to one of them, you can easily replace that machine.

![Cattle versus Pets](/assets/images/cattle-v-pets.jpg)
<sup>_When dealing with computers, you should rely on cattle, not on pets. \[Photo in CC0 Public Domain.\]_

This DevOps strategy has become an important part of corporate disaster recovery plans,
because it allows for rapid recovery of entire systems that form the backbone of a business
and tests that recovery process regularly as individual machines fail.

![Disaster strikes](/assets/images/disaster-strikes.jpg)
<sup>_When disaster strikes, how quickly will you recover? \[Photo in public domain.\]_

While this is a good system for how to run a business,
this idea resonated with me
because of my own previous experience having to swap work laptops routinely over several months
caused by some buggy hardware.
I ended up having to recreate my work environment multiple times
to have access to the applications, documents, and system configuration
that I required to get my job done.

![Broken laptop](/assets/images/broken-laptop.jpg)
<sup>_When you drop your laptop, how soon before you can be working again?
\[Photo by [Santeri Viinamäki](https://commons.wikimedia.org/wiki/User:Zunter)
shared under a [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).\]_

As a result of this experience, I became interested in how to do this as efficiently as possible –
how could I best treat my personal machines as cattle, not as pets?
How could I develop a personal disaster recovery plan
that would:

1. Improve upon the standard process of backup and restore of a "pet" computer,
2. Allow for a rapid recovery of my systems that enable me to get work done
   after they suffer damage, theft or other disaster, and
3. Test that recovery process regularly.

![Thinker](/assets/images/thinker.jpg)
<sup>_\[Photo by CrisNYCa
shared under a [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).\]_

Here I'll discuss first the issues I've found with the backup/restore process,
and then what I've come up with so far as an alternative.
I hope you find it useful, and please let me know if you have your own tips via the comments!

# Typical backup systems

> Entire-system backups are essential and comprehensive but slow.

The first step of any recovery plan must be to ensure that backups of your entire system are being done regularly
(at least daily if not more frequently), and properly
using the [3-2-1 rule](https://www.backblaze.com/blog/the-3-2-1-backup-strategy/):
three copies of your data on two different media with one copy stored off-site.

![Backup](/assets/images/backup.jpg)
<sup>_\[Photo by [Nick Youngson](http://www.nyphotographic.com/)
[CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/) [Pix4free.org](https://pix4free.org/).\]_

Unfortunately I have found that using backups alone as a recovery plan has several issues:

1. It's slow to restore an entire machine,
   and the machine is out of commission the entire time the restore is happening.
2. Even if your backup software allows for restoring a subset of the backup,
   it can be difficult to find all the data you need scattered across the system,
   especially if you're not a power user.
3. It's hard to trust the backup process.
   Who among us has actually taken the time to restore a backup for the sole purpose of verifying it?
   And I've had numerous issues when a recovery was necessary, though thankfully none that proved fatal.

![Backup disaster](/assets/images/backup-disaster.jpg)
<sup>_\[Photo by [John Boston](https://web.archive.org/web/20161014064145/https://www.flickr.com/people/60026579@N00)
shared under a [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/) license.\]_

# My disaster recovery plan

> For rapid recovery, backup and restore system components separately and automatically.

As part of my plan to rapidly and automatically configure a new machine,
I identified the following different system components that I would want to recover independently, at different times,
and without hogging the machine.

## Documents

Your documents are often the most valuable and irreplaceable data on your machine.
Thankfully they are also the easiest to protect – use any document-syncing service,
such as Google Drive, OneDrive, Dropbox, etc. –
as long as you can be disciplined enough not to store any documents outside the relevant directory!

Then on a new machine, log into the service, and your documents will start loading!

![Documents syncing](/assets/images/google-drive.png)
<sup>_Hey presto! \[Photo by [Google](https://google.com/).\]_

### Special case for documents: software code

These document-syncing services aren't the best solution for all types of documents.
Most software developers are familiar with version-control software like git
that are used to keep track of changes to their code, often with remote servers
such as those at [GitHub](https://github.com/).
This allows for a rapid restore of code to a new machine.

I make note of this special case because one flaw in version-control software
is that it's easy to forget that you have local changes that are not yet synced to the remote repository.
I use the [uncommitted](https://github.com/brandon-rhodes/uncommitted) tool to find these changes across my machine.

![Demo of uncommitted](/assets/images/uncommitted.gif)
<sup>_Demo of uncommitted showing local un-synced changes.
\[Generated using [vhs](https://github.com/charmbracelet/vhs).\]_

## GUI and CLI Applications

<!-- textlint-disable terminology -->

As a Data Scientist, I rely on my machine having installed a long list of applications,
both the Graphical User Interface (GUI) and the Command Line Interface (CLI) kind.

<!-- textlint-enable terminology -->

While I could try to manually install those applications I remember onto a new machine,
most of the time I would likely not remember a given application until I need it,
and then I would have to wait until I find the installer and install it.

Thankfully I don't have to rely on my memory for this.
I use [Homebrew](https://brew.sh/), the 'missing package manager' for macOS and Linux,
to install most of the applications I need.
Previously I also used it produce a
[Brewfile](https://github.com/Homebrew/homebrew-bundle#usage),
a list of installed applications that I kept as a text file under version control using git.
On a new machine, I could download this list, and have Homebrew processes it in the background
to install all the tools I need while I keep working.
Nowadays I use Homebrew in combination with [Ansible](https://www.ansible.com/) playbooks – more on this below.

<!-- textlint-disable terminology -->

![Demo of brew](/assets/images/brew.gif)
<sup>_Demo of brew installing applications via the command line._

<!-- textlint-enable terminology -->

### Special case for applications: software code

Another special mention here for software developers.
I highly recommend [Docker](https://www.docker.com/) to share a development environment for software projects.
Rather than having each developer carefully curate a combination of operating-system (OS) versions and language packages
to make your software [work on their machine](https://blog.codinghorror.com/the-works-on-my-machine-certification-program/),
with Docker you can run one command to build a virtual machine that will run your application anywhere.

An extra benefit of using Docker is that setting up your development environment on a new machine is
as easy as running the same Docker command you've been using all along.

![Demo of docker](/assets/images/docker.gif)
<sup>_Demo of docker running application in shared environments._

## Dotfiles

Many applications (both the GUI and CLI type, and terminal shells in particular) use
[dotfiles](https://missing.csail.mit.edu/2019/dotfiles/)
to store configuration details.
These plain-text files are called 'dotfiles' because their filenames start with a '.' (!).
You may not have noticed them because most OSs will hide them by default.
Historically they have been located in your home directory `~/`,
but are often now found under `~/.config/`.

One of the quickest ways to feel in a foreign land on a new laptop is missing these configurations.
Thankfully, an easy solution is to store and update these files in a GitHub repo,
such as [proinsias/dotfiles](https://github.com/proinsias/dotfiles).
Then to make any new environment more like your existing environment, you clone that dotfiles repo
and run a command like [stow](https://www.gnu.org/software/stow/manual/stow.html)
to setup the files in the right locations.

![Demo of stow](/assets/images/stow.gif)
<sup>_Demo of stow setting up my dotfiles._

## System Configuration

A common characteristic of most of the above solutions is the reliance upon text files
to represent the list of requirements you want to install upon your machine,
whether it be a `Brewfile`, a `Dockerfile`, or a set of `dotfiles`.

This is the key idea to managing "cattle" – representing your ["infrastructure as code"](https://en.wikipedia.org/wiki/Infrastructure_as_code),
and has spawned many useful tools like [Ansible](https://www.ansible.com/) and [Terraform](https://www.terraform.io/)
that are used to manage massive networks of easily replaced servers.

The final step in my process was to realize that I didn't have to leave all these cool tools to my DevOps colleagues.
Several enterprising developers had posted examples of using Ansible playbooks
to save the system configuration of their (typically macOS) laptops.
I ended up creating my own [set of playbooks](https://github.com/proinsias/mac-playbook)
that I can use in future to setup a new macOS or Linux laptop as follows:

1. Install an OS-specific list of GUI and CLI applications using `homebrew` (both OSs),
   [mas](https://github.com/mas-cli/mas) (macOS only), and `apt` (Linux only).
2. Install a list of python-based utilities to their own virtual environments using [pipx](https://pipx.pypa.io/stable/).
3. Globally install a list of [ruby](https://www.ruby-lang.org/) packages.
4. Globally install a list of [nodejs](https://nodejs.org/) packages.
5. Set various macOS system configurations.

# Testing

> Make sure to test your disaster recovery plan.

Whichever recovery plan you end up picking, you must test your process _before_ disaster strikes.

I do this by keeping most of my settings across my work and home computers synced using Ansible.
I run my Ansible playbook daily automatically, and review any errors that crop up.
I also test the Ansible playbook via a GitHub Actions
[workflow](https://github.com/proinsias/mac-playbook/blob/master/.github/workflows/ci.yml).

So there you have it. My personal disaster recovery plan.
I hope it helps you recover faster the next time gremlins strike.
Please let me know if you have your own tips via the comments!
