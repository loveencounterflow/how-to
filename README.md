<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Note](#note)
- [JCH (JavaScript, CSS, HTML)](#jch-javascript-css-html)
  - [How To Count Lines in a Block Tag](#how-to-count-lines-in-a-block-tag)
- [SYSTEM PROGRAMMING](#system-programming)
  - [Install Broadcom Wireless Driver](#install-broadcom-wireless-driver)
  - [Make Another Machine Visible in File Manager](#make-another-machine-visible-in-file-manager)
  - [Get io.js Up and Running](#get-iojs-up-and-running)
    - [*Update* Now with Node Version Management Support](#update-now-with-node-version-management-support)
    - [Upgrade to `npm@3`](#upgrade-to-npm3)
    - [Solving that Compiliation Issue](#solving-that-compiliation-issue)
    - [For the Cautious: Use a VM to try out io.js](#for-the-cautious-use-a-vm-to-try-out-iojs)
    - [On the Host](#on-the-host)
      - [Install Vagrant](#install-vagrant)
      - [install Guest Additions](#install-guest-additions)
    - [On the Guest](#on-the-guest)
    - [Install `node`, `n`, Own Your Files](#install-node-n-own-your-files)
    - [Installing slap; Remarks on Installing Node, npm](#installing-slap-remarks-on-installing-node-npm)
    - [*Update* Install CoffeeScript with Generators and `yield`](#update-install-coffeescript-with-generators-and-yield)
    - [Create a Mapped Port](#create-a-mapped-port)
    - [Enabling NFS for Synced (a.k.a. Shared) Folder](#enabling-nfs-for-synced-aka-shared-folder)
  - [Command Line: Show Errors in Red](#command-line-show-errors-in-red)
  - [Notes on the Frequently Spinning-Up Disk Problem](#notes-on-the-frequently-spinning-up-disk-problem)
  - [Remarks on Installing NodeJS, LibreOffice, and TeX Live on Ubuntu](#remarks-on-installing-nodejs-libreoffice-and-tex-live-on-ubuntu)
      - [TexLive installation (Ubuntu)](#texlive-installation-ubuntu)
  - [How to Keep Order in an Asynchronous World](#how-to-keep-order-in-an-asynchronous-world)
    - [The Problem](#the-problem)
    - [The Solution](#the-solution)
  - [Installing ZeroMQ (a.k.a ZMQ, 0MQ, ØMQ)](#installing-zeromq-aka-zmq-0mq-%C3%B8mq)
    - [... on OSX](#-on-osx)
    - [... on Debian / Ubuntu](#-on-debian--ubuntu)
- [Other Stuff](#other-stuff)
  - [Cycling through Firefox Tabs in Most Recently Used (MRU) Order](#cycling-through-firefox-tabs-in-most-recently-used-mru-order)
  - [Find Directory by Partial Name](#find-directory-by-partial-name)
  - [Mirror / Download a Website from Archive.Org's WayBack Machine](#mirror--download-a-website-from-archiveorgs-wayback-machine)
    - [HtTrack Won't Work](#httrack-wont-work)
    - [Wayback_Machine_Downloader Does Work](#wayback_machine_downloader-does-work)
    - [Remove that Annoying Enter Your Password Popup in Mint, Ubuntu](#remove-that-annoying-enter-your-password-popup-in-mint-ubuntu)
- [Apps & Tools](#apps-&-tools)
  - [Searching in Files: ag, sag](#searching-in-files-ag-sag)
  - [On-Screen Keyboard: onboard](#on-screen-keyboard-onboard)
  - [Cloning, Using, Pushing to bzr (Bazaar) Repos with git](#cloning-using-pushing-to-bzr-bazaar-repos-with-git)
- [Bay Trail Chips, Linux, Atom-Celerons](#bay-trail-chips-linux-atom-celerons)
- [VisualStudio Code (VSC)](#visualstudio-code-vsc)
- [Diskspace Analyzers](#diskspace-analyzers)
  - [qdirstat](#qdirstat)
- [Git GUIs](#git-guis)
  - [gitkraken](#gitkraken)
- [Git Gotcha: Git Repo Too Big](#git-gotcha-git-repo-too-big)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


# Note

All of the below notes come without any warranty, implied or explicit. YAYOR. The instructions worked on my
OSX 10.8.5 box and may or may not work anywhere else. There may be omissions and typos. This is not a
manual for anything, just a handy aide-mémoire, waschzettel, 備忘錄, cheat-sheet, you get the idea.

# JCH (JavaScript, CSS, HTML)

## How To Count Lines in a Block Tag

There are situations where you need to know just how many lines of text a given element on a web contains.
This is surprisingly hard to do in browsers. There are lots and lots of suggestions for counting lines;
a quick search turns up a long list:

* http://stackoverflow.com/questions/14375971/find-the-number-of-lines-in-a-div
* http://stackoverflow.com/questions/783899/how-can-i-count-text-lines-inside-an-dom-element-can-i
* http://stackoverflow.com/questions/18496179/find-the-number-of-lines-a-string-runs-into-inside-a-div-of-a-set-width-there-i
* http://stackoverflow.com/questions/4492770/how-to-check-for-of-lines-using-jquery
* https://forum.jquery.com/topic/can-jquery-detect-how-many-lines-of-text-within-a-div-or-a-tag

There are also some libraries to do such things as typesetting in columns and shortening texts where
knowledge about precise text dimensions is necessary, including

* https://github.com/theproductguy/ThreeDots/blob/master/js/jquery.ThreeDots.js
* https://github.com/ftlabs/ftcolumnflow

Most of these solutions rely on clever techniques to add and remove text, measure font metrics and doing
clever CSS guesstimations. One of the most prevalent and promising techniques consists in somehow obtaining
the height of a single line and then dividing the height of a DOM container with that value. In order
for that to work, your lines be better all of the same height and the DOM metrics precise.

There is, however, a much more elegant and reliable solution that relies on the `getClientRects()` method
of DOM nodes, as explained in https://developer.mozilla.org/en-US/docs/Web/API/Element/getClientRects.
At first, hwoever, the reader gets frustrated by the follwoing remark:

> Originally, Microsoft intended this method to return a TextRectangle object for each line of text.
> However, the CSSOM working draft specifies that it returns a ClientRect for each border box.

Awww, snap. There's a surprising number of discussion on the web that stop consider `getClientRects` at this
point, stating that "the solution will only work in IE". But, reading on, that's not quite true:

> For an inline
> element, the two definitions are the same. But for a block element, Mozilla will return only a single
> rectangle.

Luckily, this cryptic message is better borne out by the accompanying illustration:

![](https://mdn.mozillademos.org/files/3108/paragraph-rects.png)

From this, it is a small step to arrive at what i currently **the most elegant and reliable way to count
lines of text in a DOM block element as rendered by a given browser**, namely: **(1)** wrap the contents
of the relevant block element(s) in an inline element (say, `<span class="line-counter">...</span>`); **(2)**
retrieve the DOM node(s) of this or those element(s); **(3)** call `span.getClientRects().length` to
find the line count(s). Step (1) can easily done dynamically using jQuery's `wrapInner()` method; sample
code:

```js
var block_nodes   = $( 'p' ); // or however you get your relevant block nodes
block_nodes.wrapInner( '<span class="line-counter"></span>' );
// Get line count for first `<p>` tag:
var line_counter  = block_nodes.eq( 0 ).children( '.line-counter' )[ 1 ];
var line_count    = line_counter.getClientRects().length;
```


# SYSTEM PROGRAMMING

## Install Broadcom Wireless Driver

My Acer Aspire E3-112 has a Broadcom 43142 chipset:

```sh
flow@enceladus ~/io $ lspci -vnn | grep -A 9 Network
02:00.0 Network controller [0280]: Broadcom Corporation BCM43142 802.11b/g/n [14e4:4365] (rev 01)
  Subsystem: Foxconn International, Inc. BCM43142 802.11b/g/n [105b:e07e]
  Flags: bus master, fast devsel, latency 0, IRQ 17
  Memory at 90600000 (64-bit, non-prefetchable) [size=32K]
  Capabilities: <access denied>
  Kernel driver in use: wl
  Kernel modules: bcma, wl

03:00.0 Ethernet controller [0200]: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller [10ec:8168] (rev 0c)
  Subsystem: Acer Incorporated [ALI] RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller [1025:0933]
```
Unfortunately, some systems that I tried (Antergos, Debian, Linux Mint Cinnamon) did not configure
the device correctly; while `BCM` did show up when running `dmesg`, there was no entry for wireless in
the system tray.

A search revealed the following, which did work:

```sh
sudo apt-get --reinstall install bcmwl-kernel-source
```

## Make Another Machine Visible in File Manager

[FUSE](), [OSX Fuse]()

Simply install the following package: sshfs, then add yourself to the fuse group:

```bash
sudo apt-get install sshfs
sudo gpasswd -a $USER fuse
```

<!-- ################################################################################################### -->

## Get io.js Up and Running

### *Update* Now with Node Version Management Support

**Update of Update** To obtain the latest version of `n` (0.2.14 as of this writing) which does include
support for io.js, simply do

```sh
npm install -g tj/n
```

With that version, `n --help` will give you

```
  Usage: n [options/env] [COMMAND] [args]

  Environments:
    n [COMMAND] [args]            Uses default env (node)
    n node [COMMAND] [args]       Sets env as node
    n io [COMMAND]                Sets env as io

  Commands:

    n                              Output versions installed
    n latest                       Install or activate the latest node release
    n stable                       Install or activate the latest stable node release
    n <version>                    Install node <version>
    n use <version> [args ...]     Execute node <version> with [args ...]
    n bin <version>                Output bin path for <version>
    n rm <version ...>             Remove the given version(s)
    n prev                         Revert to the previously activated version
    n --latest                     Output the latest node version available
    n --stable                     Output the latest stable node version available
    n ls                           Output the versions of node available

  (iojs):
    n io latest                    Install or activate the latest iojs release
    n io stable                    Install or activate the latest stable iojs release
    n io <version>                 Install iojs <version>
    n io use <version> [args ...]  Execute iojs <version> with [args ...]
    n io bin <version>             Output bin path for <version>
    n io rm <version ...>          Remove the given version(s)
    n io --latest                  Output the latest iojs version available
    n io --stable                  Output the latest stable iojs version available
    n io ls                        Output the versions of iojs available

  Options:

    -V, --version   Output current version of n
    -h, --help      Display help information

  Aliases:

    iojs    io
    which   bin
    use     as
    list    ls
    -       rm
```


In order to install io.js, simply do

```
n io latest
```

or similar.

<strike>As of 2015-01-14, there are three open pull request to support io.js with `n` (see https://github.com/tj/n/pulls?q=io).
I've forked and updated `n` to [implement PR 214](https://github.com/tj/n/pull/214), which you can get as
git clone https://github.com/loveencounterflow/n.git cd n make install After that, you can install iojs with
n --io v1.0.1</strike>

<strike>Please keep in mind that i will not update the repo so you're probably better off using the official `n`
repo; i'd fully expect the maintainers to implement iojs support within days. Also note that the author
of PR 214 warns that his fix "makes a weak assumption that nodejs and iojs versions don't collide"; given
the speed of NodeJS updates during the past year, i believe we can safely assume that we're weeks or months
away from any NodeJS 0.12.x release, let alone NodeJS 1.x.x, so PR 214 should be good enough for now.</strike>



### Upgrade to `npm@3`

```bash
npm install -g npm@3
```


### Solving that Compiliation Issue

One great thing about NodeJS / iojs is that you can do a *lot* in plain
JavaScript, meaning you get a high degree of portability with your software.

However, there is also quite a number of important modules like say, `levelup`
and `fuse-bindings`, that need some C code to compile upon installation. This
can suck a lot when you have to use multiple versions of NodeJS at the same time;
for example, i'm using NodeJS 0.12.x for most things, but have some legacy stuff that
needs 0.10.x, and my NWJS app uses iojs v2.3.1, so i often have to switch versions.

Switching versions is easy when you use `n`, but too often compilation steps will
fail. When you try to install a module and you get this error message:

```
gyp ERR! stack Error: 404 response downloading https://nodejs.org/dist/v2.4.0/node-v2.4.0.tar.gz
```

you know you're `gyp` version is wrong. The easiest way to fix that is to [use
`node-gyp-install`](https://www.npmjs.com/package/node-gyp-install):

```
npm install -g node-gyp-install
node-gyp-install
```

After that, re-try to `npm install <whatever>`, and it *should* work!


### For the Cautious: Use a VM to try out io.js

You may have heard of [io.js, a forward-thinking port of NodeJS](https://iojs.org/). If you're on OSX then
downloading and opening the installer `*.pkg` will greet you with a message saying that it will not only
install the `iojs` binary, it will also symlink `node` to `iojs`. Depending on a lot of things you may or
may not want to take the risk. An unanswered question is how Node version managers will react to the
situation.

For sure to just try out io.js a virtual machine would be a better option, at least for the time being. And
it's quite easy to do:

```bash
mkdir iojs
cd iojs
vagrant init ubuntu/trusty64
vagrant up
vagrant ssh
```

Next, avail yourself of the current iojs tar package; i did that using the browser on the host and putting
the `iojs-v1.0.1-linux-x64.tar.xz` archive into the `iojs` folder, which from inside the guest is
accessible as `cd /vagrant`. From there, unpack files and issue four `mv` moves:


```bash
sudo chown -R vagrant:vagrant /usr/local
cd /vagrant
tar xvfJ iojs-v1.0.1-linux-x64.tar.xz
mv /vagrant/iojs-v1.0.1-linux-x64/bin/iojs          /usr/local/bin/
mv /vagrant/iojs-v1.0.1-linux-x64/bin/node          /usr/local/bin/
mv /vagrant/iojs-v1.0.1-linux-x64/bin/npm           /usr/local/bin/
mv /vagrant/iojs-v1.0.1-linux-x64/lib/node_modules  /usr/local/lib/
```

That's it! Test it with, e.g.,

```bash
npm install -g coffee-script
```

As i said, this is a 'forward' thinking NodeJS fork, and indeed, we have generators without any command line
flag. From the `coffee` REPL:

```coffee
process.versions
  # { http_parser: '2.3',
  #   node: '1.0.1',
  #   v8: '3.31.74.1',
  #   uv: '1.2.0',
  #   zlib: '1.2.8',
  #   ares: '1.10.0-DEV',
  #   modules: '42',
  #   openssl: '1.0.1k' }
g = -> yield 42
g().next()
  #   { value: 42, done: false }
```



<!-- ################################################################################################### -->
## Setting up a Vagrant VM to Host a Custom NodeJS for Testing, Fun, and Profit

### On the Host

#### Install Vagrant

Grab an installer at https://www.vagrantup.com/downloads.html and run it. Then, create a folder of your
liking (which i chose to call `drifter`) which will both hold the `Vagrantfile` that captures the
setup of one specific VM and acts as the synced (shared) folder that allows simple data exchange between
guest and host. From the terminal, `cd` into that folder, choose a VM name from https://vagrantcloud.com/
and install everything (which should take a minute or two).

**NOTE** you may want to have a look at sections [Create a Mapped Port](#create-a-mapped-port) and
[Enabling NFS for Synced (a.k.a. Shared) Folder](#enabling-nfs-for-synced-aka-shared-folder), below, to
learn how to modify `Vagrantfile` before you do your first `vagrant up` (which will do the installation step;
`vagrant init` just provides the configuration files). **Remember** that when you get asked for a password,
that is your password on the *host*—you never need a password on the guest (unless you somehow configure
Vagrant for that).

```bash
mkdir drifter
cd drifter
vagrant init ubuntu/trusty64
vagrant up
vagrant ssh
```

#### install Guest Additions

The most easiest way to get those elusive guest additions:

```bash
vagrant init debian/jessie64
vagrant box update
vagrant plugin install vagrant-vbguest
vagrant halt
vagrant up
vagrant ssh
```

### On the Guest

### Install `node`, `n`, Own Your Files

Here's the painlessest way that i'm aware of to get no less than:

* `node` installed, with
* `n`, a very decent Node Version Manager, and
* all your files are belong to you—you only need `sudo` to install dependencies and set a few
  filesystem rights; from there on, `npm install -g ...` will work without `sudo`.

```bash
sudo apt-get install git build-essential htop make
git clone https://github.com/visionmedia/n

cd n
sudo chown -R vagrant:vagrant /usr/local
make install

n latest
n stable
# or e.g.
n 5.12.0

npm install -g npm coffee-script doctoc

## now we have two Node versions and can use `npm`:
npm install -g whatever
```

### Installing slap; Remarks on Installing Node, npm

> First written as experience report as https://github.com/slap-editor/slap/issues/228

[slap](https://github.com/slap-editor/slap/issues/228) is a Sublime-like
editor that runs in the terminal; I first found myself unable to install
it properly until I found out my NodeJS installation—more specifically: my global
modules folder—was kind of borked. The following contains some advice for NodeJS
nಠಠbs and everyone who experiences failure when trying to `npm install -g`
something.

**1: Install NodeJS**


First of all, slap appears to be compatible (so far) with the newest NodeJS (v5 as of this writing). To me, the painlessest way to get the newest versions of Nodejs, `npm` and `n` (NodeJS version management, highly recommended) is to follow the outline in [my how-to](https://github.com/loveencounterflow/how-to#install-node-n-own-your-files); roughly, clone `n`, build it, and use it once to get the newest NodeJS (should come with `npm` v3):

```bash
git clone https://github.com/visionmedia/n
cd n
sudo chown -R <user>:<user> /usr/local
make install
n latest
n stable
```

I write this because people always ask how to best install NodeJS. Debianists and Ubuntuers **don't let their friends install NodeJS with `apt-get`**—that will get you an outdated version, naming conflicts, insane file rights setups, what have you.


**2: Cleanup Global NPM Modules**


This one's a biggy: In case you've been running NodeJS for as long as I have, you'll likely have ooogles of global modules installed over the years. Given the fast evolution of both Node and `npm`, there's bound to be some bit rot, so it's time to clear up that space. I was unable to install slap and got all kinds of weird errors until I resolved to **manually remove my `~/npm/lib/node_modules` folder** (actually I renamed it for reference and created a new `node_modules`).



**3: Install slap**


The official slap docs recommend to `sudo npm install -g slap@latest`. Not sure whether that `sudo` gives you important stuff that you don't get without (readers please fill me out on that one), but, generally speaking, the majority of people living on planet NodeJS prefer **user-owned installs**, **user-owned `/usr/local` directories**, and so on. **This also happens to be the way of `homebrew`, and is generally considered A Good Idea**. For this reason, i just did

```bash
npm install -g slap
```

which appears to work. Again, not sure what `slap@latest` gives you that you don't get without it; most of the time, you don't add version markers to `npm install`.

> It *may* occur that some `package.json` does specify an outdated version which will inadvertently keep you from upgrading to the next major version of some package. That *shouldn't* happen here (not quite sure: do get global packages an entry in a global `package.json`?) but just to stay on the safe side, you can always `npm uninstall --save xxx && npm install --save xxx` a package to obtain the latest version (the `--save` switch produces a suitable entry in the package's `package.json`), even across major versions (yes yes I know there are simpler ways but this one is really obvious and memorable).

I can strongly recommend to [`npm install -g npm-check`](https://github.com/dylang/npm-check), which will give you the greatest way to control `npm` dependencies. `npm-check -u` gives you an interactive prompt for project-local files (with list selection! and install-now option!!); `npm-check -u -g` does the same for global modules (including slap and, behold, `npm` itself!!).





### *Update* Install CoffeeScript with Generators and `yield`

**As of 2015-01-29, CoffeeScript v1.9.1 has generators / `yield` support baked right into the
mainstream distribution, meaning whereever you `npm install coffee-script`, you wild get
support for this exciting feature (of course, provided your JS VM also supports it).
For the details, have a look at
https://github.com/jashkenas/coffeescript/compare/1.8.0...1.9.0
or
http://coffeescript.org/#changelog.**

<strike>As of this writing, [CoffeeScript](http://coffeescript.org/) is at 1.8.0 and comes without (obvious) support for
the `yield` keyword (have a look at my outdated patch i dubbed [CoffyScript](https://github.com/loveencounterflow/coffy-script);
the readme is a quite detailed explanation of generators and what you can do with them to get much nicer
ways to cope with asynchronicity in JavaScript.)</strike>

<strike>The great folks over there at CS have managed to get `yield` support into CoffeeScript, but it's still
hidden behind a not-obvious installation trick; all you have to do is</strike>

<strike>...</strike>

With that version of CS installed, you can now try this:

```coffee
g = ->
  yield 42
  yield 108

f = g()
log f.next()
log f.next()
log f.next()
```

While this does not look like anything useful on first sight, it opens a whole new world of possibilities
for some very important classes of problems. Again, head over to the readme mentioned above and don't forget
it's obsolete and in need of a re-write; you should be able to run everything, but **avoid the star** when
using CoffeeScript (it's implicit now. **Update** code samples corrected, but it still shows up in the text).
Also, remember to run your scripts with `node --harmony ...` (as of NodeJS 0.11.14).


### Create a Mapped Port

If you plan to run a server of whatever kind inside your shiny new Vagrant VM, you probably also want to
make that server visible from the host. One to accomplish that is to set up a forwarded port. Let's open
the host's `Vagrantfile` in an editor to do that:

```bash
cd drifter
open -t ./Vagrantfile
```

In the Vagrantfile, look for an outcommented line like the below, uncomment it and choose the appropriate
settings. In my case, i chose to map the guest's port 3000 to the same port on the host, so i can run
the same software in the host or in the VM. Keep in mind though that a VM with such a setting running
in the background will cause host applications trying to offer connectivity on that very port to fail (more
or less) silently.

```ruby
  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 3000, host: 3000
```

### Enabling NFS for Synced (a.k.a. Shared) Folder

My use case for setting up a Vagrant VM is that i want to use NodeJS 0.11.x as much as possible, as it
offers generators when started with the `--harmony` switch. Unfortunately, you can't at this time (December,
2014) `npm install level` under NodeJS > 0.10.x, so it's going to be difficult if your whole application
relies on new-fangled stuff like `yield`.

Fortunately, though, setting up VMs has become very fast and straightforward, and networking (think
bi-directional WebSockets) has evolved a lot, so you can always create a separate environment with bespoke
dependencies, and this is exactly what i need.

At some point when i hoped i had everything up and running:

* `n 0.10.35`; NodeJS correct version? Check!
* `npm install level`; LevelDB binaries compiled? Check!
* `require 'level'; db = level '../data/mydb'`; LevelDB instance fine? Check!
* Let's put a value into the DB with `db.put key, value ( error ) -> ...`. OAWH:

```bash
OpenError: IO error: ./users.db/MANIFEST-000001: Invalid argument
```

Turns out the underlying VirtualBox implementation has known issues with `mmap`ped files that LevelDB
relies on. Fortunately, there's a workaround: use an NFS (Network File System) share.

On the host, try `sudo nfsd status`; you should see an output like

```bash
nfsd service is enabled
nfsd is running (pid 2140, 8 threads)
```

You may have to `sudo nfsd enable`, and/or `sudo touch /etc/exports`, and/or `sudo nfsd start`, and/or
reboot to get the NFS demon to run.

**Note** that Vagrant may try to access `/etc/exports` when starting up; if you started without
`sudo`, you will be asked to enter your password. That's your user password on the *host*, not the one
on the *guest* (which you do not know, as all authentication on the guest is done implicitly).

Then, in the `Vagrantfile`, look for the below settings and edit them; i chose to overwrite the existing
setting in the first case (so i get an NFS share for the standard shared folder, which is
the folder the `Vagrantfile` resides in on the host, and `/vagrant` on the guest), and to use the default
suggestion for the second case.

```ruby
  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"
```

> Details for this step were gleaned from https://github.com/rvagg/node-levelup/issues/222,
> http://qiita.com/yashikawa/items/b7a7d1a671106cd1a78a, and
> http://community.spiceworks.com/how_to/show/61136-how-to-create-an-nfs-share-on-mac-os-x-snow-leopard-and-mount-automatically-during-startup-from-another-mac.

## Command Line: Show Errors in Red

```bash
command 2> >(while read line; do echo -e "\e[01;31m$line\e[0m" >&2; done)
```

## Notes on the Frequently Spinning-Up Disk Problem

```bash
 1494  sudo apt-get install smartmontools
 1495  sudo smartctl -a /dev/
 1496  df
 1497  sudo smartctl -a /dev/sda1
 1498  sudo smartctl -a /dev/sda1 | grep "Load_Cycle_Count"
 1499  sudo smartctl -a /dev/sda | grep "Load_Cycle_Count"
 1500  cat /etc/acpi/asus-wireless.sh
 1501  l /etc/acpi/
 1502  laptop_mode
 1503  hdparm -B 255 /dev/sda
 1504  sudo hdparm -B 255 /dev/sda
 1505  sudo hdparm -B 254 /dev/sda
 1506  sudo smartctl -a /dev/sda | grep "Load_Cycle_Count"
 1507  echo `sudo smartctl -a /dev/sda | grep Load_Cycle_Count` " | " `date` >> ~/temp/load_count.txt
 1508  cat ~/temp/load_count.txt
```

## Remarks on Installing NodeJS, LibreOffice, and TeX Live on Ubuntu

#### TexLive installation (Ubuntu)

While there's a lot of software that you can and should install on Debianish /
Ubuntish systems, there's also a number of software titles you should definitely
*not* install that way; examples include

* NodeJS, which will always be outdated when installed via `apt`, will get
  the wrong name (`nodejs` instead of `node`), and will not give you the opportunity
  to just-so switch between versions as you can with `n` or `nvm`;

* Open/LibreOffice; as [I argue in the Readme about Writing macros for LibreOffice with
  Coffeescript](https://github.com/loveencounterflow/coffeelibre#remarks-for-running-aoo-on-ubuntu),
  OpenOffice in Ubuntu is annoyingly broken and somewhat hard to replace with
  a reasonable LibreOffice installation;

* and, sadly, TeX Live. Turns out while you can choose between a 'basic' and a 'full'
  installation of TeX Live using `apt-get`, neither will be 'as full' as the one
  that'd get with the official TeX Live download. Case in point: a command like
  `tlmgr info xcolor` is going to fail miserably with an `apt` installation
  of TeX Live, and [there seems to be no easy way to fix that](http://tex.stackexchange.com/questions/137428/tlmgr-cannot-setup-tlpdb).

I recommend using https://github.com/scottkosty/install-tl-ubuntu instead; you can just clone
the repo to some `tmp` location and run the install script with `sudo ./install-tl-ubuntu`,
very simple.



<!-- ################################################################################################### -->
# APPLICATION PROGRAMMING

## How to Keep Order in an Asynchronous World

### The Problem

You use NodeJS streams and pipes to read data from a database; let's assume you have a collection of flight
connection data and want to sort by price, show up to 10 connections, and exclude all flights the are priced
above a certain `limit`. In principle, your setup could look similar to this:

```coffee
( db.create_readstream query )
  .pipe filter ( id, price ) -> return price < limit
  .pipe sort_by_price_ascending
  .pipe at_most 10
  .pipe output
```

The way we have set up things means `output` will contain a list of up to 10 flight IDs and prices, sorted
with the cheapest flights first. That's fine, but also a little spartanic. Luckily, you've got a stream
transformer `find_details` that will take a flight ID, send a request to the database or a website to fill
out the many pertinent details that people want to know before booking. You stick that transformer into
your pipeline and are (...almost) good to go:

```coffee
( db.create_readstream query )
  .pipe filter ( id, price ) -> return price < limit
  .pipe sort_by_price_ascending
  .pipe at_most 10
  .pipe find_details
  .pipe output
```

Unfortunately, since DB and HTTP requests are inherently asynchronous in NodeJS, this means you just
destroyed the ordering of your results. In this case it wouldn't be a big deal, since we'd only have to
resort a dozen pieces, but in the actual use case that this model use case is based on i had tens of
thousands of data items. My workaround was to cache the responses of the details query in a list, and when
the stream signalled it was done, i sorted the list and re-sent each item one by one.

This is not only annoying from a theoretical point of view (ideally, streams should manage pieces one by one
and avoid buffering where possible), it also means more memory consumption and poorer performance. And it
entails you'll have to look for yet another workaround if the amount of data to be processed should ever
outgrow available RAM. Can't we make it so that the pieces of data in the stream somehow keep the order in
which the requests got *sent*, not the order in which the responses *arrived*?


### The Solution

So i thought about building a list structure—a queue—of requests that i would then match with asynchronous
responses as they come in; whenever the oldest item in the request queue gets matched with an item in the
response queue, then sending the response into the stream and deleting request and response from their
queues would be safe. Less buffering, ordering preserved. Yay.

Turns out this functionality is already available as [highland.js/parallel](http://highlandjs.org/#parallel):

```coffee
_           = require 'highland'
concurrency = 5

_ ( db.create_readstream query )
  .pipe     filter ( id, price ) -> return price < limit
  .pipe     sort_by_price_ascending
  .pipe     at_most 10
  .map      find_details
  .parallel concurrency # send up to 5 requests at the same time
  .pipe     output
```

The key here is to use Highland's `map` and `parallel` stream methods in tandem.


## Installing ZeroMQ (a.k.a ZMQ, 0MQ, ØMQ)

### ... on OSX

```bash
brew install zeromq
```

This will give you a ZMQ version 4 installation (as of early 2015).

### ... on Debian / Ubuntu

```bash
# thx to http://askubuntu.com/a/388770/13669
sudo add-apt-repository ppa:chris-lea/zeromq
sudo apt-get update
sudo apt-get install libzmq3-dbg libzmq3-dev libzmq3
```

Debian:

```
sudo apt-get install python-software-properties
```

```
https://packages.debian.org/sid/libzmq3-dev

```

# Other Stuff

## Cycling through Firefox Tabs in Most Recently Used (MRU) Order

Annoyingly, Firefox uses 'linear' tab switching be default, meaning
that when you `ctrl+tab` to another tab and then `ctrl+tab` again,
you'll not get back to to the original tab but to the next tab in the
row. You can fix that by going to `about:config` (type it into the
address bar), then searching for the entry `browser.ctrlTab.previews`
(typing `ctrlt` into the search field does it). Double-click that entry
to change it to `true`.

> (thx to https://alexyv.wordpress.com/2014/01/09/firefox-switching-between-tabs-in-mru-order/)


## Find Directory by Partial Name

```sh
find / -type d -iname '*keyboard*' | less -SNR -#19
```

## Mirror / Download a Website from Archive.Org's WayBack Machine

### HtTrack Won't Work

[HtTrack](https://www.httrack.com/) is a great tool but it doesn't take kindly
to [Archive.Org](https://web.archive.org)'s' URL structure. The problem is that
(1) whenever the WayBack Machine crawls a website and makes a snapshot, that
snapshot will only include URLs that are different from the last snapshot; (2)
those changed addresses will be made accessible to the world under a URL that
starts with https://web.archive.org/web/, then has a timestamp looking like
`20160907003604`, followed by the mirrored site's URL.

When you click your way through the mirrored site, you will often jump between
timestamps. Now you *can* use HtTrack with wildcards, like so:

```
httrack https://web.archive.org/web/*/http://example.com/index.cfm --robots=N --max-rate=3000
```

and this does work in principle, **but** what you'll get is a long, looooong list of timestamped
folders with tiny bits of data in each one, which makes it almost impossible to use.

### Wayback_Machine_Downloader Does Work

> thx to http://superuser.com/a/957298

Use [Wayback_Machine_Downloader](https://github.com/hartator/wayback-machine-downloader) instead:

```sh
# what i did to ensure my ruby is v2+:
# echo $PATH
# export PATH=/Users/flow/bin:$PATH
# cd ~/bin
# ln -s /usr/local/bin/ruby
# which ruby
# ruby -v
gem install wayback_machine_downloader
cd example-com/
wayback_machine_downloader --to 20160830000000 http://example.com
```

### Remove that Annoying Enter Your Password Popup in Mint, Ubuntu

Open Seahorse Password and Keyring manager, create a new keyring without a password, make it the default.

See http://askubuntu.com/a/735463

# Apps & Tools

## Searching in Files: ag, sag

## On-Screen Keyboard: onboard

This is the best on-screen keyboard I've seen so far:

```bash
sudo apt-get install onboard
onboard-settings
onboard
```

Unfortunately, the sources are [hosted on launchpad](https://launchpad.net/onboard), which is a horrible
site that makes SourceForge look great and accessible, if you ask me. I did manage to fork the sources using
[git-remote-bzr](#cloning-using-pushing-to-bzr-bazaar-repos-with-git), and you know what, without doing
anything else I can now at least look inside the code just so, online, and peruse the sources for hints on
usage, or maybe there's even an official documentation? Wait, big parts (75%) of onboard are written in
Python? You couldn't have guessed that much from clicking through the launchpad repo pages for hours.


## Cloning, Using, Pushing to bzr (Bazaar) Repos with git

https://github.com/felipec/git-remote-bzr


```bash
sudo apt-get install bzr
wget https://raw.github.com/felipec/git-remote-bzr/master/git-remote-bzr -O ~/bin/git-remote-bzr
chmod +x ~/bin/git-remote-bzr

git clone "bzr::lp:ubuntu/hello"
```

* A clone of the [onboard LaunchPad Bazaar repo](https://code.launchpad.net/onboard) is available as a [git
  repo under https://github.com/loveencounterflow/onboard](https://github.com/loveencounterflow/onboard).

* To toggle the keyboard, execute this command line:

```bash
dbus-send --type=method_call --print-reply --dest=org.onboard.Onboard /org/onboard/Onboard/Keyboard org.onboard.Onboard.Keyboard.ToggleVisible
```

I put the above line into my Linux Mint / Preferences / Keyboard / Shortcuts / Custom Shortcuts settings
(and bound it to the pretty much unused `pause` key), so now I can toggle the keyboard with a single
keystroke.


# Bay Trail Chips, Linux, Atom-Celerons

http://www.heise.de/newsticker/meldung/Patch-stabilisiert-Linux-auf-Atom-Celerons-3337456.html

* [Mozilla Bug #109051](https://bugzilla.kernel.org/show_bug.cgi?id=109051#c434)
* [c6off+c7on.sh](https://bugzilla.kernel.org/attachment.cgi?id=223851)
* [cstateInfo.sh](https://bugzilla.kernel.org/attachment.cgi?id=223861)

> The intel_idle.max_cstate boot parameter refers to enumeration done by the linux kernel (number in column
> State) and not to the Intel notation of core states C0, C1, C2, C3, C6, C7, etc. Latency, Residency, and
> Time units are microseconds.

```
~/bin ► ./cstateInfo.sh
cpu0 State  Name     Disabled  Latency  Residency         Time    Usage
         0  POLL            0        0          0     15750446     7676
         1  C1-BYT          0        1          1    187784220   506757
         2  C6N-BYT         0      300        275    309130057   374376
         3  C6S-BYT         0      500        560   4646966391  1864384
         4  C7-BYT          0     1200       4000   9156699917   832033
         5  C7S-BYT         0    10000      20000  19508763201   324992
cpu1 State  Name     Disabled  Latency  Residency         Time    Usage
         0  POLL            0        0          0     24124917     8885
         1  C1-BYT          0        1          1    225946256   697915
         2  C6N-BYT         0      300        275    352557953   470276
         3  C6S-BYT         0      500        560   4567333192  2017181
         4  C7-BYT          0     1200       4000  11112293359  1025444
         5  C7S-BYT         0    10000      20000  17413428249   387377
cpu2 State  Name     Disabled  Latency  Residency         Time    Usage
         0  POLL            0        0          0     33569810    21979
         1  C1-BYT          0        1          1    442760166   785786
         2  C6N-BYT         0      300        275    441597919   524631
         3  C6S-BYT         0      500        560   4149672467  1941720
         4  C7-BYT          0     1200       4000   6954219391   598363
         5  C7S-BYT         0    10000      20000  21498265463   339007
cpu3 State  Name     Disabled  Latency  Residency         Time    Usage
         0  POLL            0        0          0     54960543    29888
         1  C1-BYT          0        1          1    539278855   907380
         2  C6N-BYT         0      300        275    482857299   587530
         3  C6S-BYT         0      500        560   4089241789  1975537
         4  C7-BYT          0     1200       4000   6742161656   559788
         5  C7S-BYT         0    10000      20000  21723411756   331348
```


> The Linux kernel enumerates the states for the J1900 as follows:
>
> * 0 POLL
> * 1 C1-BYT
> * 2 C6N-BYT
> * 3 C6S-BYT
> * 4 C7-BYT
> * 5 C7S-BYT
>
> The parameter intel_idle.max_cstate refers to that enumeration and does _NOT_ conform to the Intel
> notation of the C-states (which confused me):
>
> So "intel_idle.max_cstate=2" means POLL, C1-BYT, and C6N-BYT (the first of the intel C6 states) are
> enabled and all other states (C6S-BYT, C7-BYT, C7S-BYT) are disabled and _CANNOT_ be enabled after boot
> time.
>
> Fortunately the /sys interface of the kernel allows fine-grained tweeking at run-time and one can turn off
> and on the the states individually (if not disabled at boot time via intel_idle.max_cstate=<number>).
>
> In order to investigate whether erratum VLP52 is the root cause for this kernel bug (109051) I attached
> two shell scripts to this bug.
>
> The first (c6off+c7on.sh) will disable all intel C6 core states for Baytrail processors (C6N-BYT and
> C6S-BYT) + enable all C7 core states (C7-BYT and C7S-BYT).
>
> The second script can be used to verify that the C6 states are disabled (column "Disabled" should show a
> "1" for the disabled states and the count for the columns "Time" and "Usage" should not change any longer
> for the disabled C6*-BYT states).
>
> The "c6off+c7on.sh" script should be started at system boot and if erratum VLP52 is the root cause of this
> bug then Baytrail systems with the processors mentioned in
> https://bugzilla.kernel.org/show_bug.cgi?id=109051#c425 (J2850, J1850, J1750, N3510, N2810, N2805, N2910,
> N3520, N2920, N2820, N2806, N2815, J2900, J1900, J1800, N3530, N2930, N2830, N2807, N3540, N2940, N2840,
> N2808) should run stably again. Especially Baytrail based systems with low average load (e.g. tablets and
> notebooks) should consume considerably less power with enabled C7*-BYT states.

In `/etc/rc.local`:

```bash
[...]
/home/flow/bin/c6off+c7on.sh || exit 1

exit 0

```

```bash
# e.g. in ~/.bashrc or on the command line:
# just to see whether https://github.com/loveencounterflow/how-to#bay-trail-chips-linux-atom-celerons
# worked:
cstateInfo.sh
```

Do

```bash
less /proc/cpuinfo
```

to find out whether your CPU matches any of these possibly affected Intel® Processors:
* Atom™ E3805
* Atom™ E3815
* Atom™ E3825
* Atom™ E3826
* Atom™ E3827
* Atom™ E3845
* Atom™ Z3735D
* Atom™ Z3735E
* Atom™ Z3735F
* Atom™ Z3735G
* Atom™ Z3736F
* Atom™ Z3736G
* Atom™ Z3740
* Atom™ Z3740D
* Atom™ Z3745
* Atom™ Z3745D
* Atom™ Z3770
* Atom™ Z3770D
* Atom™ Z3775
* Atom™ Z3775D
* Atom™ Z3785
* Atom™ Z3795
* Celeron® J1750
* Celeron® J1800
* Celeron® J1850
* Celeron® J1900
* Celeron® N2805
* Celeron® N2806
* Celeron® N2807
* Celeron® N2808
* Celeron® N2810
* Celeron® N2815
* Celeron® N2820
* Celeron® N2830
* Celeron® N2840
* Celeron® N2910
* Celeron® N2920
* Celeron® N2930
* Celeron® N2940
* Pentium® A1020
* Pentium® J2850
* Pentium® J2900
* Pentium® N3510
* Pentium® N3520
* Pentium® N3530
* Pentium® N3540

# VisualStudio Code (VSC)

# Diskspace Analyzers

## qdirstat

Successor to kdirstat: https://github.com/shundhammer/qdirstat

Install on Ubuntu-ish systems using Nathan Rennie-Waldock's
[QDirStat PPA](https://launchpad.net/~nathan-renniewaldock/+archive/ubuntu/qdirstat):

```bash
sudo add-apt-repository ppa:nathan-renniewaldock/qdirstat
sudo apt-get update
sudo apt-get install qdirstat
```

<!-- ######################################################################################## -->
<!-- ######################################################################################## -->
<!-- ######################################################################################## -->

# Electron doesn't Find `libcurl.so.4` (on Linux Mint)

> https://github.com/electron/electron/issues/8853

I'm looking for a nice Git GUI, and so I came across [gitkraken](https://www.gitkraken.com/download/linux-deb) the other day. However, it wouldn't start but fail with

```sh
/usr/lib ► gitkraken
Node started time: 1488472940858
libcurl.so.4: cannot open shared object file: No such file or directory
Error: libcurl.so.4: cannot open shared object file: No such file or directory
    at Error (native)
    at process.module.(anonymous function) [as dlopen] (ELECTRON_ASAR.js:158:20)
    at Object.Module._extensions..node (module.js:568:18)
    at Object.module.(anonymous function) [as .node] (ELECTRON_ASAR.js:169:18)
    at Module.load (module.js:456:32)
    at tryModuleLoad (module.js:415:12)
    at Function.Module._load (module.js:407:3)
    at Module.require (module.js:466:17)
    at require (internal/module.js:20:19)
    at Object.<anonymous> (/usr/share/gitkraken/resources/app.asar/node_modules/nodegit/dist/nodegit.js:11:12)
    at Module._compile (module.js:541:32)
    ...
```

I tried to fix the issue with

```sh
sudo ln -sf /usr/lib/x86_64-linux-gnu/libcurl-gnutls.so.4.4.0 libcurl.so.4
```

and, as recommended by nodegit:

```sh
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install libstdc++-4.9-dev
```

but to no avail. Naturally I would have thought this to be a problem with the gitkraken app, but today I chose to try and run [Cycligent Git Tool](https://www.cycligent.com/git-tool), and look what happened:

```sh
► /usr/share/CycligentGitTool/CycligentGitTool
A JavaScript error occurred in the main process
Uncaught Exception:
Error: libcurl.so.4: cannot open shared object file: No such file or directory
    at Error (native)
    at process.module.(anonymous function) [as dlopen] (ELECTRON_ASAR.js:173:20)
    at Object.Module._extensions..node (module.js:583:18)
    at Object.module.(anonymous function) [as .node] (ELECTRON_ASAR.js:173:20)
    at Module.load (module.js:473:32)
    at tryModuleLoad (module.js:432:12)
    at Function.Module._load (module.js:424:3)
    at Module.require (module.js:483:17)
    at require (internal/module.js:20:19)
    at Object.<anonymous> (/usr/share/CycligentGitTool/resources/app/cygit/server/node_modules/nodegit-electron-linux-x64/dist/nodegit.js:11:12)
```

so it would appear Electron has a problem here. The strange thing is that I *can* start Atom, and I never had a problem like that with it (well, maybe it doesn't even need libcurl, of course).

This is on Linux Mint Cinnamon:

```sh
► uname -a && cat /etc/issue
Linux enceladus 4.4.0-62-generic #83-Ubuntu SMP Wed Jan 18 14:10:15 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux
Linux Mint 18 Sarah
```

<!-- ######################################################################################## -->
<!-- ######################################################################################## -->
<!-- ######################################################################################## -->

# `npm install nodegit`, gitkraken, CycligentGitTool all fail to install, run, on Linux Mint Cinnamon

When I try to `npm install nodegit`, I get (with both node v6.9.1 and v7.7.1):

```
npm WARN prefer global node-gyp@3.5.0 should be installed with -g

> nodegit@0.18.0 install /home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit
> node lifecycleScripts/preinstall && node lifecycleScripts/install

[nodegit] Running pre-install script
[nodegit] Configuring libssh2.
{ Error: Command failed: /home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/configure --with-libssl-prefix=/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/openssl/openssl
/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/missing: Unknown '--is-lightweight' option
Try /home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/missing --help for more information
configure: WARNING: 'missing' script is too old or missing
configure: error: No crypto library found!
Try --with-libssl-prefix=PATH
 or --with-libgcrypt-prefix=PATH
 or --with-wincng on Windows

    at ChildProcess.exithandler (child_process.js:206:12)
    at emitTwo (events.js:106:13)
    at ChildProcess.emit (events.js:191:7)
    at maybeClose (internal/child_process.js:877:16)
    at Process.ChildProcess._handle.onexit (internal/child_process.js:226:5)
  killed: false,
  code: 1,
  signal: null,
  cmd: '/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/configure --with-libssl-prefix=/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/openssl/openssl' }
/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/missing: Unknown '--is-lightweight' option
Try '/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/missing --help' for more information
configure: WARNING: 'missing' script is too old or missing
configure: error: No crypto library found!
Try --with-libssl-prefix=PATH
 or --with-libgcrypt-prefix=PATH
 or --with-wincng on Windows

[nodegit] ERROR - Could not finish preinstall
{ Error: Command failed: /home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/configure --with-libssl-prefix=/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/openssl/openssl
/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/missing: Unknown '--is-lightweight' option
Try '/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/missing --help' for more information
configure: WARNING: 'missing' script is too old or missing
configure: error: No crypto library found!
Try --with-libssl-prefix=PATH
 or --with-libgcrypt-prefix=PATH
 or --with-wincng on Windows

    at ChildProcess.exithandler (child_process.js:206:12)
    at emitTwo (events.js:106:13)
    at ChildProcess.emit (events.js:191:7)
    at maybeClose (internal/child_process.js:877:16)
    at Process.ChildProcess._handle.onexit (internal/child_process.js:226:5)
  killed: false,
  code: 1,
  signal: null,
  cmd: '/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/libssh2/configure --with-libssl-prefix=/home/flow/temp/resolving-issue-nodegit-libcurl/node_modules/nodegit/vendor/openssl/openssl' }
npm WARN resolving-issue-nodegit-libcurl@1.0.0 No description
npm WARN resolving-issue-nodegit-libcurl@1.0.0 No repository field.
npm ERR! Linux 4.4.0-62-generic
npm ERR! argv "/usr/local/bin/node" "/usr/local/bin/npm" "install" "--save" "nodegit"
npm ERR! node v6.9.1
npm ERR! npm  v3.10.8
npm ERR! code ELIFECYCLE

npm ERR! nodegit@0.18.0 install: `node lifecycleScripts/preinstall && node lifecycleScripts/install`
npm ERR! Exit status 1
npm ERR!
npm ERR! Failed at the nodegit@0.18.0 install script 'node lifecycleScripts/preinstall && node lifecycleScripts/install'.
```

In related news (https://github.com/electron/electron/issues/8853), both [gitkraken](https://www.gitkraken.com/download/linux-deb) and [Cycligent Git Tool](https://www.cycligent.com/git-tool) refuse to run, and in both cases, `nodegit` being unable to load `libcurl.so.4` would appear to be the point of failure:

```
/usr/lib ► gitkraken
Node started time: 1488472940858
libcurl.so.4: cannot open shared object file: No such file or directory
Error: libcurl.so.4: cannot open shared object file: No such file or directory
    at Error (native)
    at process.module.(anonymous function) [as dlopen] (ELECTRON_ASAR.js:158:20)
    at Object.Module._extensions..node (module.js:568:18)
    at Object.module.(anonymous function) [as .node] (ELECTRON_ASAR.js:169:18)
    at Module.load (module.js:456:32)
    at tryModuleLoad (module.js:415:12)
    at Function.Module._load (module.js:407:3)
    at Module.require (module.js:466:17)
    at require (internal/module.js:20:19)
    at Object.<anonymous> (/usr/share/gitkraken/resources/app.asar/node_modules/nodegit/dist/nodegit.js:11:12)
    at Module._compile (module.js:541:32)
    ...
```


This is on Linux Mint Cinnamon:

```
► uname -a && cat /etc/issue
Linux enceladus 4.4.0-62-generic #83-Ubuntu SMP Wed Jan 18 14:10:15 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux
Linux Mint 18 Sarah
```

<!-- ######################################################################################## -->
<!-- ######################################################################################## -->
<!-- ######################################################################################## -->

# Git GUIs

## gitkraken

doesn't run on Linux Mint Cinnamon, it seems:

```
/usr/lib ► gitkraken
Node started time: 1488472940858
libcurl.so.4: cannot open shared object file: No such file or directory
Error: libcurl.so.4: cannot open shared object file: No such file or directory
    at Error (native)
    at process.module.(anonymous function) [as dlopen] (ELECTRON_ASAR.js:158:20)
    at Object.Module._extensions..node (module.js:568:18)
    at Object.module.(anonymous function) [as .node] (ELECTRON_ASAR.js:169:18)
    at Module.load (module.js:456:32)
    at tryModuleLoad (module.js:415:12)
    at Function.Module._load (module.js:407:3)
    at Module.require (module.js:466:17)
    at require (internal/module.js:20:19)
    at Object.<anonymous> (/usr/share/gitkraken/resources/app.asar/node_modules/nodegit/dist/nodegit.js:11:12)
    at Module._compile (module.js:541:32)
    ...
```

even after

```sh
sudo ln -sf /usr/lib/x86_64-linux-gnu/libcurl-gnutls.so.4.4.0 libcurl.so.4
```

and, as recommended by nodegit:

```sh
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install libstdc++-4.9-dev
```

# Git Gotcha: Git Repo Too Big

Sometimes you relentlessly check in everything and make your repo grow unwieldy, sometimes to the point that
remotes give up with an out of memory (look out for that `error: pack-objects died of signal 9` line).

## Finding the Top Ten Big Files in a Git Repo

The first step to remedy is to know which files are checked in and cause what magnitude on storage / memory
strain on your `git`. Git itself remains opaque to user demands like this, but fortunately there is this
friendly script to be gleaned from
[stubbisms.wordpress.com](https://stubbisms.wordpress.com/2009/07/10/git-script-to-show-largest-pack-objects-and-trim-your-waist-line/)
(I saved it as `git-biggest.sh`):


```bash
#!/bin/bash
#set -x

# Shows you the largest objects in your repo's pack file.
# Written for osx.
#
# @see https://stubbisms.wordpress.com/2009/07/10/git-script-to-show-largest-pack-objects-and-trim-your-waist-line/
# @author Antony Stubbs

# set the internal field spereator to line break, so that we can iterate easily over the verify-pack output
IFS=$'\n';

# list all objects including their size, sort by size, take top 30
objects=`git verify-pack -v .git/objects/pack/pack-*.idx | grep -v chain | sort -k3nr | head --lines=30`

echo "All sizes are in kB's. The pack column is the size of the object, compressed, inside the pack file."

output="size,pack,SHA,location"
for y in $objects
do
    # extract the size in bytes
    size=$((`echo $y | cut -f 5 -d ' '`/1024))
    # extract the compressed size in bytes
    compressedSize=$((`echo $y | cut -f 6 -d ' '`/1024))
    # extract the SHA
    sha=`echo $y | cut -f 1 -d ' '`
    # find the objects location in the repository tree
    other=`git rev-list --all --objects | grep $sha`
    #lineBreak=`echo -e "\n"`
    output="${output}\n${size},${compressedSize},${other}"
done

echo -e $output | column -t -s ', '
```

Observe though that one and the same file may appear in more than one line.

## List ALL those Files FTW!

The `git-biggest` utility introduced above is not going to help you if what you want to

* identify spurious or security-breaching files of any size,
* gain a bird's eye view of what exactly has been tracked by the repo at any given point in time,
* know how many file objects there are in the repo,
* or check whether there is maybe some sizable, now forgotton (and irrelevant) history of *small* (but maybe
  nonetheless numerous) files.

In these cases, the `git-list-all-files-ever` (thx to http://superuser.com/a/429694) utility is handy; it's
basically `git log` on steroids:

```sh
git log --pretty=format: --name-status | cut -f2- | sort -u | less -SR
```


## Rewrite Git History to Throw Out the Big Files You don't Need

To remove files from a git repo *including the file's history* must be one of the most frequently asked
questions on GitHub. Turns out git offers more than one solution to this problem, and, fact is, you will
never be able to remember any one of them. Why must that be so hard?

Recently I came across [The BFG](https://rtyley.github.io/bfg-repo-cleaner) which makes that task quite fast
and easy. BFG is quite fast and, as such, easy to use. You can download a `*.jar` file that you then drop
into your `bin` folder; I wrote a starter script `git-bfg` that does that JavaJarBarBlinx stuff for me:

```sh
#!/usr/bin/env bash
java -jar /home/flow/bin/bfg-1.12.15.jar $*
```

Once you have that, keep in mind the following points:

* The BFG cleans the history of entire folders with the `--delete-folders` and the history of indivual
  files with the `--delete-files` option.

* *Both options need exactly one glob as argument** and will act on all matching folder- or filenames. You
  crucially **cannot** have a path part in the glob. **This means you may inadvertently remove the histories
  of several like-named files when you were only thinking to remove the history of a single file.

* By default, The BFG will not touch your most recent commit; that is, you must do `git rm ... && git add ..
  && git commit -m'remove file ...'` *before* you run `bfg`.

* As is the case with `git filter-branch`, you will want to run a compacting step after all extraneous stuff
  has been removed (for which see `git-bfg-cleanup`, below). Be aware that this still may leave 'empty
  commits' (i.e. commits that do not affect any file at all) behind.

* You may want to keep a backup and/or clone of your precious repo. Just in case.

`git-bfg-cleanup`:

```sh
git reflog expire --expire=now --all && git gc --prune=now --aggressive
```

```sh
git rm -rf log
git add . && git commit -m'remove superfluous folders'
git-bfg --delete-folders log

git rm helo.txt
git add . && git commit -m'remove superfluous files'
git-bfg --delete-files helo.txt

git-bfg-cleanup.sh
```


## The Slower, but Safer Alternative (to Getting Rid of Files in Git)

All things considered, I tend to not use `bfg` b/c I shudder at the thought of accidentally destroying
a valuable file alongside with an extraneous file. Instead, I wrote a one-liner, `git-purge-file`,
which I modelled after the example given on [git-scm.com](https://git-scm.com/docs/git-filter-branch):

`git-purge-file`:

```sh
#!/usr/bin/env bash


# thx to http://stackoverflow.com/a/13802438/7568091 for the trick with the quotes
# ... which didn'T work ...
# thx to http://stackoverflow.com/a/5608358/7568091 for the trick with printf

x=$(printf '%q' "$1")
git filter-branch -f --index-filter "git rm --cached --ignore-unmatch $x" HEAD

```

> call `git-purge-file` with filenames double-quoted and bracket-escaped, as in `git-purge-file "foo
> \(bar\)"`.


# Change Default Shell (in Ubuntu)

```
sudo usermod -s <shell> <username>
```

# RDBMS Enitity-Relationship Diagrams (for PostGreSQL)

## Schema Spy

Old Version (5.0.0) (which has currently more diagrams):

* http://schemaspy.sourceforge.net/
* https://sourceforge.net/projects/schemaspy/files/

New Version (6.0.0):

* https://github.com/schemaspy/schemaspy
* https://github.com/schemaspy/schemaspy/releases

Avail yourself of a suitable JDBC driver:

* https://jdbc.postgresql.org/download.html

```
java -jar schemaSpy_5.0.0.jar     -t pgsql -dp /path/to/postgresql-42.0.0.jar -hq -host localhost -port 5432 -db DBNAME -s SCHEMA -u USER -p PWD -o /tmp/my-schema
java -jar schemaspy-6.0.0-rc1.jar -t pgsql -dp /path/to/postgresql-42.0.0.jar -hq -host localhost -port 5432 -db DBNAME -s SCHEMA -u USER -p PWD -o /tmp/my-schema
```

## PostGreSQL AutoDoc

https://github.com/cbbrowne/autodoc

```
git clone https://github.com/cbbrowne/autodoc
sudo apt-get install libdbi-perl libhtml-template-perl libterm-readkey-perl libdbd-pg-perl
cd autodoc/
sudo make install

cd /tmp/
postgresql_autodoc
```

## pgModeler

https://www.pgmodeler.com.br/

```
sudo apt-get install pgmodeler
```

## pgLoader

```
sudo apt-get install pgloader
```

will install pgLoader v3.2.2 at the time of this writing. To get a more recent copy:
```
sudo apt-get install sbcl unzip libsqlite3-dev make curl gawk freetds-dev libzip-dev```
git clone https://github.com/dimitri/pgloader.git
cd pgloader
make pgloader
./build/bin/pgloader --version
```

If it worked, you should see

```
pgloader version "3.4.cf6182f"
compiled with SBCL 1.3.1.debian
```


## ImageMagick

```
sudo apt-get install imagemagick
```




