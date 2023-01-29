<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Note](#note)
- [JCH (JavaScript, CSS, HTML)](#jch-javascript-css-html)
  - [How To Count Lines in a Block Tag](#how-to-count-lines-in-a-block-tag)
- [SYSTEM PROGRAMMING](#system-programming)
  - [Install Broadcom Wireless Driver](#install-broadcom-wireless-driver)
  - [Make Another Machine Visible in File Manager](#make-another-machine-visible-in-file-manager)
    - [Solving that Compiliation Issue](#solving-that-compiliation-issue)
    - [For the Cautious: Use a VM to try out io.js](#for-the-cautious-use-a-vm-to-try-out-iojs)
  - [Setting up a Vagrant VM to Host a Custom NodeJS for Testing, Fun, and Profit](#setting-up-a-vagrant-vm-to-host-a-custom-nodejs-for-testing-fun-and-profit)
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
  - [Activate `Alt-SysRq-F` Key](#activate-alt-sysrq-f-key)
  - [Color Adjustment](#color-adjustment)
- [APPLICATION PROGRAMMING](#application-programming)
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
- [Apps & Tools](#apps--tools)
  - [Searching in Files: ag, sag](#searching-in-files-ag-sag)
  - [On-Screen Keyboard: onboard](#on-screen-keyboard-onboard)
  - [Cloning, Using, Pushing to bzr (Bazaar) Repos with git](#cloning-using-pushing-to-bzr-bazaar-repos-with-git)
- [Bay Trail Chips, Linux, Atom-Celerons](#bay-trail-chips-linux-atom-celerons)
- [VisualStudio Code (VSC)](#visualstudio-code-vsc)
- [Diskspace Analyzers](#diskspace-analyzers)
  - [qdirstat](#qdirstat)
- [Electron doesn't Find `libcurl.so.4` (on Linux Mint)](#electron-doesnt-find-libcurlso4-on-linux-mint)
- [`npm install nodegit`, gitkraken, CycligentGitTool all fail to install, run, on Linux Mint Cinnamon](#npm-install-nodegit-gitkraken-cycligentgittool-all-fail-to-install-run-on-linux-mint-cinnamon)
- [Git GUIs](#git-guis)
  - [gitkraken](#gitkraken)
- [Git Gotcha: Git Repo Too Big](#git-gotcha-git-repo-too-big)
  - [Finding the Top Ten Big Files in a Git Repo](#finding-the-top-ten-big-files-in-a-git-repo)
  - [List ALL those Files FTW!](#list-all-those-files-ftw)
  - [Rewrite Git History to Throw Out the Big Files You don't Need](#rewrite-git-history-to-throw-out-the-big-files-you-dont-need)
  - [The Slower, but Safer Alternative (to Getting Rid of Files in Git)](#the-slower-but-safer-alternative-to-getting-rid-of-files-in-git)
- [Change Default Shell (in Ubuntu)](#change-default-shell-in-ubuntu)
- [RDBMS Enitity-Relationship Diagrams (for PostGreSQL)](#rdbms-enitity-relationship-diagrams-for-postgresql)
  - [Schema Spy](#schema-spy)
  - [PostGreSQL AutoDoc](#postgresql-autodoc)
  - [pgModeler](#pgmodeler)
  - [pgLoader](#pgloader)
  - [plv8](#plv8)
  - [ImageMagick](#imagemagick)
- [Getting Started with PostgreSQL](#getting-started-with-postgresql)
  - [Remove Everything](#remove-everything)
  - [Install All the Versions](#install-all-the-versions)
- [Install Riot Client](#install-riot-client)
- [Install R](#install-r)
- [Benchmark: Scripting VMs Upstart Times](#benchmark-scripting-vms-upstart-times)
- [Booting Linux from USB Drive](#booting-linux-from-usb-drive)
- [Install Sublime Text 3 with APT](#install-sublime-text-3-with-apt)
- [Install Sublime Merge (Git Client)](#install-sublime-merge-git-client)
- [Install Suckless Terminal](#install-suckless-terminal)
- [Remapping Keys with XKB](#remapping-keys-with-xkb)
    - [Install kbdgen](#install-kbdgen)
- [Activate Composing Keys Behavior](#activate-composing-keys-behavior)
- [Use a More Up-To-Date Python with Local Dependencies](#use-a-more-up-to-date-python-with-local-dependencies)
- [Install Python 3, PIP 3](#install-python-3-pip-3)
- [Remap Keys With Xmodmap](#remap-keys-with-xmodmap)
- [Fixing Those Crazy Caret Keys in the Console](#fixing-those-crazy-caret-keys-in-the-console)
- [Local Logins Without Password](#local-logins-without-password)
- [Install ZSH](#install-zsh)
  - [Add the Most Useful ZSH Plugins](#add-the-most-useful-zsh-plugins)
  - [ZSH: Immediately Share History Across Command Lines](#zsh-immediately-share-history-across-command-lines)
  - [ZSH: Fix Exponentially Slow Paste](#zsh-fix-exponentially-slow-paste)
- [Install Wine on Linux Mint 19.x](#install-wine-on-linux-mint-19x)
  - [Add i386 Architecture](#add-i386-architecture)
  - [Install FAudio](#install-faudio)
  - [Install Wine from WinHQ](#install-wine-from-winhq)
  - [Install Albert Launcher](#install-albert-launcher)
  - [Fork Kitty](#fork-kitty)
  - [Install `ripgrep`, One of the Best, Fastest Command Line Search Engines](#install-ripgrep-one-of-the-best-fastest-command-line-search-engines)
  - [Run GUI (Desktop) Programs on Remote Host (How to Work Remotely without VNC)](#run-gui-desktop-programs-on-remote-host-how-to-work-remotely-without-vnc)
    - [Show GUI Applications on Remote Machine](#show-gui-applications-on-remote-machine)
    - [Show GUI Applications on Local Machine](#show-gui-applications-on-local-machine)
- [Raspberry Pi OS (raspbian)](#raspberry-pi-os-raspbian)
  - [Enable SSH server](#enable-ssh-server)
  - [Prevent Auto-Login](#prevent-auto-login)
- [Systemd Timers](#systemd-timers)
  - [Links](#links)
  - [Locations](#locations)
  - [Status Reports](#status-reports)
  - [Control](#control)
    - [Starting and Stopping](#starting-and-stopping)
    - [View Output (Including Errors)](#view-output-including-errors)
  - [Man Pages](#man-pages)
  - [Timer Expression Testing](#timer-expression-testing)
- [SQLite](#sqlite)
- [GRUB](#grub)
- [Store Personal Access Token (PAT) for Github via Git](#store-personal-access-token-pat-for-github-via-git)
- [Color Adjustment on Linux](#color-adjustment-on-linux)
  - [Brightness](#brightness)
  - [Redshift](#redshift)
  - [Relationship Between Color Temparature and RGB Gamma](#relationship-between-color-temparature-and-rgb-gamma)
  - [Vibrant Linux and LibVibrant](#vibrant-linux-and-libvibrant)
    - [Vibrant Linux (GUI for Color Saturation)](#vibrant-linux-gui-for-color-saturation)
    - [LibVibrant (CLI for Color Saturation)](#libvibrant-cli-for-color-saturation)
  - [Brillo](#brillo)
  - [See Also](#see-also)

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

**UPDATE** Years later [IBM Computing](https://ibcomputing.com/) is featuring an article on [How to Install
WiFi driver for Broadcom BCM43142 WiFi device in GNU/Linux
Distros](https://ibcomputing.com/install-wifi-driver-broadcom-bcm43142-linux/) which is my preferred method
now:

```sh
sudo apt install broadcom-sta-dkms
```

restart and you should be done (DKMS stands for Dynamic Kernel Module Support and whatever that means, I'm
happy when it works out of the box).


## Make Another Machine Visible in File Manager

[FUSE](), [OSX Fuse]()

Simply install the following package: sshfs, then add yourself to the fuse group:

```bash
sudo apt-get install sshfs
sudo gpasswd -a $USER fuse
```

<!-- ################################################################################################### -->



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
sudo apt install git build-essential htop make
git clone https://github.com/tj/n

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
git clone https://github.com/tj/n
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

## Activate `Alt-SysRq-F` Key

**DRAFT**

* Activate `Alt-SysRq-F` shortcut to terminate the memory-hungriest application with `oom`

/etc/sysctl.conf:

```
###################################################################
# Magic system request Key
# 0=disable, 1=enable all, >1 bitmask of sysrq functions
# See https://www.kernel.org/doc/html/latest/admin-guide/sysrq.html
# for what other values do

# thx to https://www.reddit.com/r/linux/comments/aqd9mh/comment/egfrjtq/
# thx to https://www.reddit.com/r/linux/comments/aqd9mh/memory_management_more_effective_on_windows_than/
# thx to https://askubuntu.com/questions/234292/warning-when-available-ram-approaches-zero
# also see https://github.com/rfjakob/earlyoom

#  debug '2    ', 438 & 2    #  2     2
#  debug '4    ', 438 & 4    #  4     4
#  debug '8    ', 438 & 8    #  8     0
#  debug '16   ', 438 & 16   #  16    16
#  debug '32   ', 438 & 32   #  32    32
#  debug '64   ', 438 & 64   #  64    0
#  debug '128  ', 438 & 128  #  128   128
#  debug '256  ', 438 & 256  #  256   256
#  debug()                   #
#  help n = 438 | 64         #  502
#  debug '2    ', n & 2      #  2     2
#  debug '4    ', n & 4      #  4     4
#  debug '8    ', n & 8      #  8     0
#  debug '16   ', n & 16     #  16    16
#  debug '32   ', n & 32     #  32    32
#  debug '64   ', n & 64     #  64    64
#  debug '128  ', n & 128    #  128   128
#  debug '256  ', n & 256    #  256   256

kernel.sysrq=502

fs.inotify.max_user_watches=524288
```

show-oom-scores (thx to [*Ask Ubuntu: OOM score for every process*](https://askubuntu.com/a/995278/1597241))

```bash
#!/usr/bin/env bash
set -euo pipefail

while read -r pid comm; do
  oom_score="$(cat /proc/"$pid"/oom_score)"
  # printf '%d\t%d\t%s\n' "$pid" "$(cat /proc/"$pid"/oom_score)" "$comm"
  # printf '%d\t%d\t%s\n' "$pid" "$(cat /proc/"$pid"/oom_score)" "$comm"
  echo -e "$oom_score""\t""$comm"
done < <(ps -e -o pid= -o comm=)
```

* [NodeJS script to continuously monitor RAM usage, alert on threshold](src/memory-usage-alerter.coffee)

## Color Adjustment

* https://gitlab.com/cameronnemo/brillo
* https://gitlab.com/libvibrant/libvibrant `libvibrant/build/vibrant-cli/vibrant-cli eDP 1.5`
* redshift `redshift -O 5500`



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
  of several like-named files when you were only thinking to remove the history of a single file.*

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

> call `git-purge-file` with filenames double-quoted and bracket-escaped, as in `git-purge-file "foo \(bar\)"`.


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

## plv8

```bash
#!/usr/bin/env bash
set -euo pipefail

sudo apt install libc++-dev libc++abi-dev postgresql-server-dev-12

# wget https://github.com/plv8/plv8/archive/v2.0.3.tar.gz
wget https://github.com/plv8/plv8/archive/refs/tags/v2.3.15.tar.gz
tar -xvzf v2.3.15.tar.gz
cd plv8-2.3.15/
make static
# # allow for several hours of compilation time
sudo make install
sudo /etc/init.d/postgresql restart

echo ''
echo '----------------------------------------------------------------'
echo 'You should now be able to install the plv8 extension in SQL:'
echo 'psql -U mojikura -c "set role dba;" -c "create extension plv8;"'
echo '----------------------------------------------------------------'
echo ''
```



## ImageMagick

```
sudo apt-get install imagemagick
```


# Getting Started with PostgreSQL


## Remove Everything

https://geekforum.wordpress.com/2015/05/20/purge-postgresql-uninstall-completely/

```bash
sudo apt --purge remove postgresql\*
sudo rm -r /var/lib/postgresql
sudo rm -r /etc/postgresql
```

## Install All the Versions


https://wiki.postgresql.org/wiki/Apt

On Ubuntu and Linux Mint, retrieve the Ubuntu codename (not the Mint codename):

```bash
sudo apt install curl ca-certificates gnupg

export codename=$(lsb_release -cs)
urge 'Linux Mint codename is' "$codename"
source /etc/os-release && export codename="$UBUNTU_CODENAME"
info 'Ubuntu     codename is' "$codename"

curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt '"$codename"'-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
sudo apt update
```

See [scripts/add-postgres-apt-and-update](scripts/add-postgres-apt-and-update).


```bash
sudo apt install postgresql-12 postgresql-plpython3-12 postgresql-contrib-12
```

Log into Postgres as super user:

```
sudo -u postgres psql
```

Create roles:

```
create role dba with superuser;
create role ubuntu login;
create database ubuntu;
grant dba to ubuntu;
alter role ubuntu createdb;
alter database ubuntu owner to ubuntu;
```

...or consider using [intershop](https://github.com/loveencounterflow/intershop).

# Install Riot Client

```bash
# replace `sid` with second part of codename:
cat /etc/debian_version
sudo sh -c "echo 'deb https://riot.im/packages/debian/ sid main' > /etc/apt/sources.list.d/matrix-riot-im.list"
curl -L https://riot.im/packages/debian/repo-key.asc | sudo apt-key add -
sudo apt update && sudo apt install riot-web
```



# Install R

Thx to [DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-r-on-ubuntu-16-04-2):

```bash
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'
sudo apt-get update
sudo apt install r-base
```

https://rkward.kde.org/
https://rkward.kde.org/Binaries_and_Build_Scripts
https://launchpad.net/~rkward-devel/+archive/ubuntu/rkward-stable-cran

```bash
sudo add-apt-repository ppa:rkward-devel/rkward-stable-cran
sudo apt update
sudo apt install rkward
```


# Benchmark: Scripting VMs Upstart Times

```sh
#!/bin/bash
set -euo pipefail

k=100

echo 'bash';      time for ((i=0;i<k;i++)); do bash       -c 'x=$(( 1234 * 1234 ))'; done;
echo 'python3.5'; time for ((i=0;i<k;i++)); do python3.5  -c 'x = 1234 * 1234';      done;
echo 'node';      time for ((i=0;i<k;i++)); do node       -e 'x = 1234 * 1234';      done;
echo 'perl';      time for ((i=0;i<k;i++)); do perl       -e '@x = 1234 * 1234';     done;
echo 'ruby';      time for ((i=0;i<k;i++)); do ruby       -e 'x = 1234 * 1234';      done;

# k=100
# bash          real    0m 0.283s  user    0m 0.008s  sys     0m 0.024s
# perl          real    0m 0.360s  user    0m 0.012s  sys     0m 0.028s
# python3.5     real    0m 7.579s  user    0m 6.440s  sys     0m 0.780s
# ruby          real    0m10.942s  user    0m 9.684s  sys     0m 0.864s
# node          real    0m19.289s  user    0m17.372s  sys     0m 1.544s

# bash           0.283  100.00 %   1.00 x
# perl           0.36    78.61 %   1.27 x
# python3.5      7.579    3.73 %  26.78 x
# ruby          10.942    2.59 %  38.66 x
# node          19.289    1.47 %  68.16 x
```

# Booting Linux from USB Drive

* https://help.ubuntu.com/community/mkusb

* [YUMI – Multiboot USB Creator](https://www.pendrivelinux.com/yumi-multiboot-usb-creator/)

> YUMI (Your Universal Multiboot Installer), is the successor to our
> MultibootISOs. It can be used to create a Multiboot Bootable USB Flash Drive
> containing multiple operating systems, antivirus utilities, disc cloning,
> diagnostic tools, and more. Contrary to MultiBootISOs which used grub to boot
> ISO files directly from USB, YUMI uses syslinux to boot extracted
> distributions stored on the USB device, and reverts to using grub to Boot
> Multiple ISO files from USB, if necessary.

* [MultiSystem, YUMI](https://askubuntu.com/a/519007)


# Install Sublime Text 3 with APT


```bash
cd /tmp
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text
```

# Install Sublime Merge (Git Client)

```bash
# Ensure apt is set up to work with https sources:
sudo apt install apt-transport-https

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# echo "deb https://download.sublimetext.com/ apt/dev/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-merge
```

# Install Suckless Terminal

```bash
# prerequisites (thx to http://www.adercon.com/ac/node/115)
sudo apt install git build-essential htop make
sudo apt install libfontconfig1-dev libx11-dev libxft-dev
# clone any of these; they implement different configurations
git clone https://github.com/LukeSmithxyz/st.git
git clone https://github.com/rudyghill/st.git
# compile
cd st
make
```

# Remapping Keys with XKB

* https://unix.stackexchange.com/a/65600/280204
* https://www.x.org/releases/X11R7.7/doc/man/man1/xkbcomp.1.xhtml
* https://www.charvolant.org/doug/xkb/html/xkb.html
* https://www.charvolant.org/doug/xkb/html/node5.html


### Install kbdgen

* https://pypi.org/project/kbdgen
* https://divvun.github.io/kbdgen
* https://github.com/divvun/kbdgen

Make sure PIP3 is installed:

```bash
sudo apt install python3-pip\n
sudo pip3 install setuptools
```

then:

```bash
# install to ~/.local/bin/kbdgen
pip3 install kbdgen
```


```
less /usr/share/X11/xkb/symbols/de
10186  setxkbmap -print
10187  setxkbmap -print > flowskeyboard
10188  l
10189  mkcd ~/.xkb/symbols
10190  touch flowskeyswap
10191  gio open flowskeyswap
10192  l /usr/share/X11/xkb/symbols/de
10193  less /usr/share/X11/xkb/symbols/de
10194  xkbcomp -I$HOME/.xkb ~/.xkb/keymap/mykbd $DISPLAY
10195  xkbcomp -I$HOME/.xkb ~/.xkb/keymap/flowskeyboard $DISPLAY
10196  xev
```

# Activate Composing Keys Behavior

* https://cyberborean.wordpress.com/2008/01/06/compose-key-magic/

# Use a More Up-To-Date Python with Local Dependencies

[Python's package management is a big ball of mud.](https://xkcd.com/1987/) This is an undisputed sad fact.
All I wanted was to install [Datasette](https://datasette.io) and
[`datasette-scraper`](https://github.com/cldellow/datasette-scraper) on my Linux Mint 20.3 (i.e. Ubuntu
20.04) machine. Trying to just use `pip3 install --user datasette` or `sudo pip3 install datasette` resulted
in errors complaining that Django (the web framework) is too old. Sure. So I looked for ways to do a purely
local, NPM-style installation. This, in the end, was not too difficult:

* Fortunately, there's a Python3.9 available (while the system is still running on Python3.8). So

```bash
sudo apt install -y python3.9
```

will give you that. `python --version` and `python3 --version` will still show `Python 3.8.10` (which is
good because—this being a standard pre-install—presumably some software will depend on this being the case),
so from now on use `python3.9` explicitly.

Next I realized that one should most of the time probably not use `pip` (or `pip3`) as an executable but as
a module via the `python` executable's `-m` ('module') switch like so:

```bash
python3.9 -m pip ...
```

This spares you from tracking down the proper `pip` executable for your specific Python installation.

The next important piece of the puzzle was finding out that `pip` has an option to specify the installation
directory, meaning I could say

```bash
python3.9 -m pip install --target vendor datasette
```

to have `datasette` and its dependencies installed in the newly-created `vendor` subdirectory. So far, so
good. In order to start it, I prepend that same directory to Python's search path and, again, use the `-m`
switch. This command makes datasette install the `datasette-scraper` plugin:

```bash
PYTHONPATH=./vendor python3.9 -m datasette install datasette-scraper
```

Trying to run it cause some errors because of missing packages; this can easily be solved by more
invocations of `python3.9 -m pip install --target vendor ...`. But, unfortunately, then the scraper plugin
*still* fails:

```bash
$ PYTHONPATH=./vendor python3.9 -m datasette --metadata metadata.json scraper.db                                                                             ✔  at 15:16:31
Traceback (most recent call last):
  File "/usr/lib/python3.9/runpy.py", line 197, in _run_module_as_main
    return _run_code(code, main_globals, None,

  [...]

  File "/home/flow/.local/lib/python3.9/site-packages/datasette_scraper/__init__.py", line 11, in <module>
    from .plugin import pm
  File "/home/flow/.local/lib/python3.9/site-packages/datasette_scraper/plugin.py", line 35, in <module>
    mod = importlib.import_module(plugin)
  File "/usr/lib/python3.9/importlib/__init__.py", line 127, in import_module
    return _bootstrap._gcd_import(name[level:], package, level)
  File "/home/flow/.local/lib/python3.9/site-packages/datasette_scraper/plugins/discover_html_links.py", line 2, in <module>
    from ..utils import get_html_parser
  File "/home/flow/.local/lib/python3.9/site-packages/datasette_scraper/utils.py", line 5, in <module>
    from more_itertools import batched
ImportError: cannot import name 'batched' from 'more_itertools' (/usr/lib/python3/dist-packages/more_itertools/__init__.py)
```

We notice two things: First, datasette did *not* install the plugin in the location where it was installed
itself, but in the user-local `site-packages` directory of Python3.9. Second, the `more_itertools` package
was installed from the *global* `site-packages` directory (ostensibly) valid for all Python3 versions.

This is insane. Someone worked very hard to make truly local installations very, very difficult. A little
prodding shows that the running Python instance's `sys.path` looks like this:

```python
['/home/flow/temp/datasette', '/home/flow/temp/datasette/vendor', '/usr/lib/python39.zip',
'/usr/lib/python3.9', '/usr/lib/python3.9/lib-dynload', '/home/flow/.local/lib/python3.9/site-packages',
'/usr/local/lib/python3.9/dist-packages', '/usr/lib/python3/dist-packages']
```

The directory in question comes last, which means that its packages should be overridden by any other that
come earlier, so it *should* suffice to just install `more_itertools` locally. It is still irksome, though,
that the global `site-packages` still is there, just waiting to inject some outdated modules into your app.
The way to make that work is to put a file named `sitecustomize.py` inside the `vendor` directory:

```python
import sys
sys.path.pop()
```

With the global directory out of the way, we can now `python3.9 -m pip install --target vendor
more-itertools` (yes, it's written with a hyphen; you basically never know how a module is *really* named in
the Python ecosystem) and bingo!—it works.



# Install Python 3, PIP 3

```
sudo apt install python3-pip
sudo pip3 install setuptools
```

# Remap Keys With Xmodmap

`~/Xmodmap`:

```
keycode  24 = q Q q Q at Greek_OMEGA at
keycode  25 = w W w W lstroke Lstroke lstroke
keycode  26 = e E e E EuroSign a b
keycode  27 = r R r R paragraph registered paragraph
keycode 110 = Prior NoSymbol Prior NoSymbol Prior
keycode 112 = Home NoSymbol Home NoSymbol Home
keycode 115 = Next NoSymbol Next NoSymbol Next
keycode 117 = End NoSymbol End NoSymbol End
keycode 135 = Control_R NoSymbol Control_R NoSymbol Control_R
keycode 105 = Menu NoSymbol Menu NoSymbol Menu
```


`~/.xinitrc`:

```
xmodmap ~/.Xmodmap
```

# Fixing Those Crazy Caret Keys in the Console

Crazy Caret Keys Syndrome (CCKS)

**Symptom 1**—In some situations hitting the return key (or backspace, an arrow key, etc) doesn't do the
expected thing in the console, but instead displays a caret code like `^M`.

**Symptom 1a**—In my case, this happened annoyingly often when using `konsole` and being at the interactive
prompt of a pager like `less`, which is waiting for me to hit up and down arrow keys to move or `q` to quit.
When CCKS happens, `less` will not quit after you hit `q`; instead, it will just display `q` on the prompt
line like it's waiting for more (which it apparently is). It's only after you accidentally hit `return` that
the program will try to understand those keystrokes; in case there indeed is a letter `q` on the line,
`less` will act on that and quit. In case there were more characters on the prompt line, those characters
will be spilled out to your command prompt that has been lying there waiting for you all the time, including
that last `return` of yours, so it interprets that `return` key, meaning it tries to execute any garbage
that came before the first `q`.

**Symptom 2**—This can be especially annoying when trying to `shh user@host` into another machine; you get
asked to enter your password, which you do (without getting any feedback from the command line, which is
annoying but the expected thing to happen), and hit the return key. Then, nothing happens, indefinitely.

**Symptom 3**—The cursor vanishes. Not sure when this happens, but it does sometimes, at least in `konsole`.

**Diagnostic**—If an `shh` login fails, there's a simple diagnostic to see whether you've fallen prey to the
Crazy Caret Key Syndrome: temporarily rename/move your `~/.ssh/known_hosts` to something/somewhere else. This
will make `ssh` ask you to type in `yes[enter]` before accepting the remote's identity. Thing is, you'll use
the same `ssh` program with the same symptoms, but now visual feedback is not swallowed. Try `ssh user@host`
or `ssh -vvv user@host` again; when asked to confirm the remote's identity, type `yes[enter]`; in case you
see `yes^M` on the console instead of going on to the password input, you're experiencing CCKS. Strangely,
you can still `[ctrl]+c` yourself out of this without getting to see `^C` instead (hopefully).

**Solution 1**—The most straightforward solution is to open another terminal emulator (e.g. the crappy
pre-installed one you were forced to use before installing your favorite one). This helped in my case.

**Solution 2**—as pointed out by https://askubuntu.com/a/452576, one known solution is to run (wait for it)
`stty sane`, then try to `ssh` again. This worked for me using `konsole`.

For much more detail see https://unix.stackexchange.com/a/243651/280204.

**Solution 3**—I added this script, `repair-terminal`, to the path:

```bash
#!/bin/bash
echo -e "\x1B[?25h"
stty sane
```

The way this works is it first emits an [ANSII VT100 Escape Sequence to show the
cursor](https://stackoverflow.com/a/15011692); then it calls upon `stty` to rectify things.

# Local Logins Without Password

```sh
sudo apt install keychain
ssh-keygen
ssh-copy-id user@192.168.000.000
```

# Install ZSH


thx to https://gist.github.com/tsabat/1498393

```bash
sudo apt update && sudo apt install zsh zplug
zsh --version
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`
# sudo shutdown -r 0
echo "should restart computer now"
```


**NOTE** There's a [copy-and-pasteable `.zshrc`](./templates/.zshrc) for your convenience
that implements the below settings.

## Add the Most Useful ZSH Plugins

Add the following lines to `~/.zshrc`:

```bash
source /usr/share/zplug/init.zsh # or, ~/.zplug/init.sh, as the case may be
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "romkatv/powerlevel10k", as:theme, depth:1
# zplug "foo/bar"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load
# zplug load --verbose
```

See [unixorn/awesome-zsh-plugins](https://github.com/unixorn/awesome-zsh-plugins) for ZSH plugins.

## ZSH: Immediately Share History Across Command Lines

In order to live-share history across terminals add these lines to `~/.zshrc`:

```sh
# thx to https://askubuntu.com/questions/23630/how-do-you-share-history-between-terminals-in-zsh#23631
# To save every command before it is executed:
setopt inc_append_history
# To read the history file everytime history is called upon as well as the functionality from
# inc_append_history:
setopt share_history
```

## ZSH: Fix Exponentially Slow Paste

The `zsh-syntax-highlighting` plugin has a bug that causes `shift-ctrl-c` to grind to a hold whenever the
pasted text is longer than a few characters; with multi-line pastes, that can take up to a minute or so.
Add these lines to your `~/.zshrc`:

```sh
# thx to https://gist.github.com/magicdude4eva/2d4748f8ef3e6bf7b1591964c201c1ab
# Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}
pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
source "/home/$USER/.zplug/repos/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
```

# Install Wine on Linux Mint 19.x

In Linux Mint 19.3 Tricia (which is based on Ubuntu 18.04 bionic):

https://wiki.winehq.org/Ubuntu

## Add i386 Architecture

```bash
sudo dpkg --add-architecture i386
```

## Install FAudio

[Satisfy FAudio dependency (only needed for Ubuntu before 19.04)](https://forum.winehq.org/viewtopic.php?f=8&t=32192):

```bash
wget -O - https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key | sudo apt-key add -
sudo add-apt-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./'
sudo apt update
sudo apt install libfaudio0 libfaudio0:i386
```


<strike>
> The quickest and easiest way to satisfy the new dependency is to download and install both the i386 and
> amd64 libfaudio0 packages before attempting to upgrade or install a WineHQ package. By installing the
> downloaded packages locally, you will not have to add the OBS repository. This only has to be done once.

Download

* https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/amd64/libfaudio0_19.07-0~bionic_amd64.deb
* https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/i386/libfaudio0_19.07-0~bionic_i386.deb

```bash
sudo dpkg -i ~/Downloads/libfaudio0_19.07-0_bionic_amd64.deb                                            100 ✘
```

Output:

```
Selecting previously unselected package libfaudio0:amd64.
(Reading database ... 299844 files and directories currently installed.)
Preparing to unpack .../libfaudio0_19.07-0_bionic_amd64.deb ...
Unpacking libfaudio0:amd64 (19.07-0~bionic) ...
Setting up libfaudio0:amd64 (19.07-0~bionic) ...
Processing triggers for libc-bin (2.27-3ubuntu1) ...
```

```bash
sudo dpkg -i ~/Downloads/libfaudio0_19.07-0_bionic_i386.deb                                                 ✔
```

Output:

```
(Reading database ... 299847 files and directories currently installed.)
Preparing to unpack .../libfaudio0_19.07-0_bionic_i386.deb ...
Unpacking libfaudio0:i386 (19.07-0~bionic) over (19.07-0~bionic) ...
dpkg: dependency problems prevent configuration of libfaudio0:i386:
 libfaudio0:i386 depends on libc6 (>= 2.4).
 libfaudio0:i386 depends on libsdl2-2.0-0 (>= 2.0.8).

dpkg: error processing package libfaudio0:i386 (--install):
 dependency problems - leaving unconfigured
Processing triggers for libc-bin (2.27-3ubuntu1) ...
Errors were encountered while processing:
 libfaudio0:i386
```
</strike>

## Install Wine from WinHQ

```bash
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update
sudo apt install --install-recommends winehq-stable
```

> If apt complains about missing dependencies, install them, then repeat the last two steps (update and
> install). See the [FAQ entry on dependency
> errors](https://wiki.winehq.org/FAQ#How_do_I_solve_dependency_errors_when_trying_to_install_Wine.3F) for
> tips on troubleshooting dependency issues.


## Install Albert Launcher

For Linux Mint 19.3 Tricia (Ubuntu 18.04 Bionic)

* https://albertlauncher.github.io/docs/installing/
* https://software.opensuse.org/download.html?project=home:manuelschneid3r&package=albert

```bash
curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_18.04/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list"
curl https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_18.04/Release.key | sudo apt-key add -
sudo apt-get update && sudo apt-get install albert
```


## Fork Kitty

* https://github.com/kovidgoyal/kitty
* https://sw.kovidgoyal.net/kitty/build.html

```bash
sudo apt install libharfbuzz-dev libdbus-1-dev libxcursor-dev libxrandr-dev libxi-dev
sudo apt install libxinerama-dev libgl1-mesa-dev libxkbcommon-x11-dev libfontconfig-dev
# sudo apt install libpython-dev # ???
sudo apt install libpython3.6-dev
```


## Install `ripgrep`, One of the Best, Fastest Command Line Search Engines

* https://beyondgrep.com/feature-comparison/
* https://github.com/BurntSushi/ripgrep
* https://github.com/BurntSushi/ripgrep#installation
* https://phiresky.github.io/blog/2019/rga--ripgrep-for-zip-targz-docx-odt-epub-jpg/

If you're a Debian user (or a user of a Debian derivative like Ubuntu), then ripgrep can be installed using
a binary .deb file provided in each ripgrep release.


```bash
# curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
wget https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
sudo dpkg -i ripgrep_12.1.1_amd64.deb
```

## Run GUI (Desktop) Programs on Remote Host (How to Work Remotely without VNC)

### Show GUI Applications on Remote Machine

```sh
# thx to https://askubuntu.com/a/47658
ssh user@example.com
export DISPLAY=:0
firefox
```

or, equivalently,

```sh
ssh user@example.com "DISPLAY=:0 nohup firefox"
```

This will open a browser window on the remote machine. `nuhup` ('no hang-up', from the days when we
communicated via acoustically coupled handsets) will prevent the application window from being closed when
the SSH session ends (not needed in all cases).


### Show GUI Applications on Local Machine

More interesting is the possibility to run a GUI application on the remote machine but get the app window displayed locally.
This is possible with the `-Y` ('Enables trusted X11 forwarding') flag to the `ss` command:

```sh
# thx to commenter to https://askubuntu.com/a/47658
ssh -Y user@example.com
firefox
```



# Raspberry Pi OS (raspbian)

## Enable SSH server

```sh
sudo apt install openssh-server openssh-client
sudo update-rc.d ssh enable
sudo /etc/init.d/ssh status
```

## Prevent Auto-Login

Use `sudo raspi-config` (from `pi` account), go to `System > Boot / Auto Login`.


# Systemd Timers

## Links

* [*Use systemd timers instead of cronjobs: Timers provide finer-grained control of events than
  cronjobs.*—07 Jul 2020, by David Both ](https://opensource.com/article/20/7/systemd-timers)

* [*Using systemd Timer Units to Schedule Jobs* by Steven Vona, April 7,
  2019](https://www.putorius.net/using-systemd-timers.html#create-a-script-to-run-the-rsync-command)

* https://www.splendid-internet.de/blog/besser-als-cronjobs-timer-units-mit-systemd/
* https://medium.com/horrible-hacks/using-systemd-as-a-better-cron-a4023eea996d

## Locations

* System Service Units: `/etc/systemd/system`
* User-specific services: `/etc/systemd/user`
* network: `/etc/systemd/network`


## Status Reports

```sh
systemctl list-timers --all
systemctl status '*timer'
systemctl status 'flowMyMonitor.service'
# `-S` is `--since`, `u` is `--unit`
journalctl -S today -u 'flowMyMonitor.service'
# `-f` is `--follow` for tail-like behavior
journalctl -S today -f -u 'flowMyMonitor.service'
journalctl -u 'flowMyMonitor.service'
journalctl -u '*.timer'
```

## Control

### Starting and Stopping

```sh
sudo systemctl start 'flowMyMonitor.service'
sudo systemctl daemon-reload && sudo systemctl restart 'flowMyMonitor.service'
sudo systemctl stop 'flowMyMonitor.service'
```

Enable (disable) timer to ensure it is added to the systemd schedule; start it to make it run immediately
(and not wait for e.g. the next system startup):

```sh
sudo systemctl daemon-reload && sudo systemctl enable 'flowMyMonitor.timer' && sudo systemctl start 'flowMyMonitor.timer'
```

### View Output (Including Errors)

```sh
journalctl -u 'flowMyMonitor.service'
```

Create shortcut to be able to treat this like a GUI app:

```sh
gnome-terminal -- journalctl -S today -f -u 'flowMyMonitor.service'
```

## Man Pages

* Timer syntax: `man systemd.time`

## Timer Expression Testing

```sh
systemd-analyze calendar '*:*:0/30'
```

Output:

```
  Original form: *:*:0/30
Normalized form: *-*-* *:*:00/30
    Next elapse: Sat 2021-04-03 09:55:30 CEST
       (in UTC): Sat 2021-04-03 07:55:30 UTC
       From now: 10s left
```


# SQLite

ER Diagrams for SQLite: https://github.com/paulavery/visualize-sqlite

```bash
cargo install visualize-sqlite
visualize-sqlite my.db | dot -Tpng -Gfontname='Fira Mono' -Gfontcolor='#586e75' -Gbgcolor='#fdf6e3' -Nfontname='Fira Mono' -Nfontcolor='#586e75' -Efontname='Fira Mono' > output.png
```

![Chinook ER Diagram](https://github.com/loveencounterflow/how-to/raw/master/chinook.png)


# GRUB

My `/etc/default/grub` file; these settings will cause grub to pause for 10
seconds when booting and show the boot menu.

**Observe that after editing this file, you must run `sudo update-grub` to re-generate
`/boot/grub/grub.cfg` (which should not be edited).**



```bash
# If you change this file, run 'update-grub' afterwards to update
# /boot/grub/grub.cfg.
# For full documentation of the options in this file, see:
#   info -f grub -n 'Simple configuration'

GRUB_DEFAULT=0
GRUB_TIMEOUT_STYLE=menu                                             # !!! edit !!!
GRUB_TIMEOUT=10                                                     # !!! edit !!!
GRUB_HIDDEN_TIMEOUT_QUIET=false                                     # !!! edit !!!
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_CMDLINE_LINUX_DEFAULT=""                                       # !!! edit !!!
#GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"                          # !!! edit !!!
GRUB_CMDLINE_LINUX=""

# Uncomment to enable BadRAM filtering, modify to suit your needs
# This works with Linux (no patch required) and with any kernel that obtains
# the memory map information from GRUB (GNU Mach, kernel of FreeBSD ...)
#GRUB_BADRAM="0x01234567,0xfefefefe,0x89abcdef,0xefefefef"

# Uncomment to disable graphical terminal (grub-pc only)
#GRUB_TERMINAL=console

# The resolution used on graphical terminal
# note that you can use only modes which your graphic card supports via VBE
# you can see them in real GRUB with the command `vbeinfo'
#GRUB_GFXMODE=640x480

# Uncomment if you don't want GRUB to pass "root=UUID=xxx" parameter to Linux
#GRUB_DISABLE_LINUX_UUID=true

# Uncomment to disable generation of recovery mode menu entries
#GRUB_DISABLE_RECOVERY="true"

# Uncomment to get a beep at grub start
#GRUB_INIT_TUNE="480 440 1"
```


# Store Personal Access Token (PAT) for Github via Git

As detailed on [askubuntu](https://askubuntu.com/questions/773455/what-is-the-correct-way-to-use-git-with-gnome-keyring-and-https-repos/959662#959662):


> `gnome-credential-helper` is now deprecated.
>
> Instead, use [libsecret](https://wiki.gnome.org/Projects/Libsecret). If it's not already pre-installed on your machine, use the following procedure:
>
> 1. Make sure `libsecret` and its development libraries are installed:
>
>       ```shell
>       sudo apt install libsecret-1-0 libsecret-1-dev
>       ```
>
> 2. Then build the credential helper from the sources shipped with libsecret's development libraries:
>
>       ```shell
>       sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret
>       ```
>
> 3. Finally, register the freshly compiled binary as a [Git credential helper](https://git-scm.com/docs/gitcredentials):
>
>      ```shell
>      git config --global credential.helper \
>         /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
>      ```
>
> More details on https://stackoverflow.com/a/40312117/2017781


The same, in an easier-to-copy format:

```bash
sudo apt install -y libsecret-1-0 libsecret-1-dev
sudo make --directory=/usr/share/doc/git/contrib/credential/libsecret
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
```

* Generate a Personal Access Token on (GitHub)[https://github.com]
* when pushing next time, enter account name, and
* when asked for your password, paste the PAT code and hit return

The access token is now stored and won't be required the next time you interact with GitHub.


<!-- # Define Custom Keyboard Mappings with `kmonad` -->




# Color Adjustment on Linux

## Brightness


* https://github.com/LordAmit/Brightness
* install as `sudo apt install --yes brightness-controller`

Brightness Controller is a Python3/QtPy GUI that presents four sliders per display (primary and secondary)
to adjust brightness and RGB gamma. It also has a dropdown with descriptive entries to select gamma values
in terms of color temperature. Further it provides the capability to save and to load settings from
WinINI-style settings file. As such, it is well suited to experiment and record meaningful settings for your
monitor, output purpose (such as video or text editor) and lighting situation (such as day or night).

```bash
xrandr --current --verbose
xrandr --output eDP --gamma 1:0.75:0.75 --brightness 1
```

## Redshift

* https://github.com/jonls/redshift

## Relationship Between Color Temparature and RGB Gamma


> I found source code for program sct which allows user to set color temperature. It has "cribbed the code"
> from redshift and provides mapping for red, green and blue values:
>
>      /* cribbed from redshift, but truncated with 500K steps */
>      static const struct { float r; float g; float b; } whitepoints[] = {
>          { 1.00000000,  0.18172716,  0.00000000, }, /* 1000K */
>          { 1.00000000,  0.42322816,  0.00000000, },
>          { 1.00000000,  0.54360078,  0.08679949, },
>          { 1.00000000,  0.64373109,  0.28819679, },
>          { 1.00000000,  0.71976951,  0.42860152, },
>          { 1.00000000,  0.77987699,  0.54642268, },
>          { 1.00000000,  0.82854786,  0.64816570, },
>          { 1.00000000,  0.86860704,  0.73688797, },
>          { 1.00000000,  0.90198230,  0.81465502, },
>          { 1.00000000,  0.93853986,  0.88130458, },
>          { 1.00000000,  0.97107439,  0.94305985, },
>          { 1.00000000,  1.00000000,  1.00000000, }, /* 6500K */
>          { 0.95160805,  0.96983355,  1.00000000, },
>          { 0.91194747,  0.94470005,  1.00000000, },
>          { 0.87906581,  0.92357340,  1.00000000, },
>          { 0.85139976,  0.90559011,  1.00000000, },
>          { 0.82782969,  0.89011714,  1.00000000, },
>          { 0.80753191,  0.87667891,  1.00000000, },
>          { 0.78988728,  0.86491137,  1.00000000, }, /* 10000K */
>          { 0.77442176,  0.85453121,  1.00000000, },
>      };
>
> The three columns above are values for Red, Green and Blue.—[*How to use "xrandr --gamma" for Gnome "Night
> Light"-like
  usage?*](https://askubuntu.com/questions/1003101/how-to-use-xrandr-gamma-for-gnome-night-light-like-usage)


## Vibrant Linux and LibVibrant

### Vibrant Linux (GUI for Color Saturation)

* [Vibrant Linux](https://github.com/libvibrant/vibrantLinux): A tool to automate managing your screen's
  saturation depending on what programs are running
  * install with Flatpack

### LibVibrant (CLI for Color Saturation)

LibVibrant works with GPUs from NVidia and AMD that support

* [`libvibrant` with `libvibrant-cli`](https://gitlab.com/libvibrant/libvibrant)
  * https://forum.garudalinux.org/t/vibrant-cli-doesnt-work/11879
  * [How to change color saturation in Linux with open drivers(AMD, Intel, nouveau) with
    vibrant-cli](https://www.youtube.com/watch?time_continue=169&v=wp2JT7CPLxY&feature=emb_logo)

* dependencies:
  * `libx11-dev` (X11 client-side library (development headers))
  * `libxrandr-dev` (X11 RandR extension library (development headers))
  * `libxnvctrl-dev` (NV-CONTROL X extension (development files))


```bash
sudo apt install libx11-dev libxrandr-dev libxnvctrl-dev
git clone https://gitlab.com/libvibrant/libvibrant $PATH_TO_LIBVIBRANT
cd $PATH_TO_LIBVIBRANT
( mkdir -p build && cd build && cmake .. && make )
```

If the build completes successfully, the interesting exectuable can be found under
`build/vibrant-cli/vibrant-cli`. You can now say e.g.

```bash
build/vibrant-cli/vibrant-cli eDP 1.77
```

where `eDP` is the name of the output device as indicated by `xrandr` (or `xrandr --props`) and `1.77` is
the saturation (or color vibrancy) between `0.0` (0%) and 4.0 (400%) (both inclusively):

* 0 (0%) means monochrome
* 1 (100%) is normal color saturation
* 4 (400%) is the first day with your first color TV and the remote control
* if empty the saturation will not be changed

## Brillo

* repo: https://gitlab.com/cameronnemo/brillo
* man page: https://gitlab.com/cameronnemo/brillo/-/blob/master/doc/man/brillo.1.md

> `brillo` controls the brightness of backlight and LED devices on Linux.
> Notable features include:
>
> * Automatic best controller detection
> * Smooth transitions and natural brightness adjustments
> * Ability to save and restore brightness across boots
> * Directly using sysfs to set brightness without relying on X
> * Unprivileged access with no new setuid binaries
> * Containment with AppArmor

> * `-G`: Get brightness value (default)
> * `-S` VALUE: Set brightness to value
> * `-A` VALUE: Increment brightness by given value
> * `-U` VALUE: Decrement brightness by given value
> * `-O`: Store the current brightness
> * `-I`: Restore cached brightness
> * `-L`: List available devices
> * `-H`: Show a short help output
> * `-V`: Report the version

```bash
sudo apt install --yes go-md2man
make
sudo build/brillo -S 75 && sudo build/brillo -G
sudo build/brillo -A 10 && sudo build/brillo -G
sudo build/brillo -U 10 && sudo build/brillo -G
sudo build/brillo -m
sudo build/brillo -c
groups
usermod -a -G video "$USER"
sudo usermod -a -G video "$USER"
sudo make install.setgid GROUP=video
brillo -G
brillo -A 10
```


## See Also

* https://github.com/Ablinne/kolorcontrol
  * three sliders per channel
  * install with pip3, ensure `sudo apt install -y python3-pip xcalib`
* https://www.omgubuntu.co.uk/2017/05/adjust-external-monitor-brightness-ubuntu
* https://github.com/WinEunuuchs2Unix/eyesome
* `xbacklight` but couldn't get it to work on my machine
