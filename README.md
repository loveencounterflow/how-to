

- [Note](#note)
- [Get io.js Up and Running](#get-iojs-up-and-running)
	- [*Update* Now with Node Version Management Support](#update-now-with-node-version-management-support)
	- [For the Cautious: Use a VM to try out io.js](#for-the-cautious-use-a-vm-to-try-out-iojs)
- [Setting up a Vagrant VM to Host a Custom NodeJS for Testing, Fun, and Profit](#setting-up-a-vagrant-vm-to-host-a-custom-nodejs-for-testing-fun-and-profit)
	- [On the Host](#on-the-host)
		- [Install Vagrant](#install-vagrant)
	- [On the Guest](#on-the-guest)
		- [Install `node`, `n`, Own Your Files](#install-node-n-own-your-files)
		- [Install CoffeeScript with Generators and `yield`](#install-coffeescript-with-generators-and-yield)
	- [Create a Mapped Port](#create-a-mapped-port)
	- [Enabling NFS for Synced (a.k.a. Shared) Folder](#enabling-nfs-for-synced-aka-shared-folder)
- [How to Keep Order in an Asynchronous World](#how-to-keep-order-in-an-asynchronous-world)
	- [The Problem](#the-problem)
	- [The Solution](#the-solution)

> **Table of Contents**  *generated with [DocToc](http://doctoc.herokuapp.com/)*


# Note

All of the below notes come without any warranty, implied or explicit. YAYOR. The instructions worked on my
OSX 10.8.5 box and may or may not work anywhere else. There may be omissions and typos. This is not a
manual for anything, just a handy aide-mémoire, waschzettel, 備忘錄, cheat-sheet, you get the idea.

<!-- ################################################################################################### -->
# Get io.js Up and Running

## *Update* Now with Node Version Management Support

As of 2015-01-14, there are three open pull request to support io.js with `n` (see https://github.com/tj/n/pulls?q=io).
I've forked and updated `n` to [implement PR 214](https://github.com/tj/n/pull/214), which you can get as

```sh
git clone https://github.com/loveencounterflow/n.git
cd n
make install
```

After that, you can install iojs with

```sh
n --io v1.0.1
```

Please keep in mind that i will not update the repo so you're probably better off using the official `n`
repo; i'd fully expect the maintainers to implement iojs support within days. Also note that the author
or PR 214 warns that his fix "makes a weak assumption that nodejs and iojs versions don't collide"; given
the speed of NodeJS updates during the past year, i believe we can safely assume that we're weeks, moths or
worse away from any NodeJS 0.12.x release, let alone NodeJS 1.x.x, so PR 214 should be good enough for now.


## For the Cautious: Use a VM to try out io.js

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
npm install -g jashkenas/coffee-script
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
# Setting up a Vagrant VM to Host a Custom NodeJS for Testing, Fun, and Profit

## On the Host

### Install Vagrant

Grab an installer at https://www.vagrantup.com/downloads and run it. Then, create a folder of your
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


## On the Guest

### Install `node`, `n`, Own Your Files

Here's the painlessest way that i'm aware of to get no less than:

* `node` installed, with
* `n`, a very decent Node Version Manager, and
* all your files are belong to you—you only need `sudo` to install dependencies and set a few
  filesystem rights; from there on, `npm install -g ...` will work without `sudo`.

```bash
sudo apt-get install git
sudo apt-get install build-essential
sudo apt-get install htop
sudo apt-get install make # should already be installed e.g. on Ubuntu server
git clone https://github.com/visionmedia/n

cd n
sudo chown -R vagrant:vagrant /usr/local
make install

n latest
n stable

# now we have two Node versions and can use `npm`:
npm install -g whatever
```


### Install CoffeeScript with Generators and `yield`

As of this writing, [CoffeeScript](http://coffeescript.org/) is at 1.8.0 and comes without (obvious) support for
the `yield` keyword (have a look at my outdated patch i dubbed [CoffyScript](https://github.com/loveencounterflow/coffy-script);
the readme is a quite detailed explanation of generators and what you can do with them to get much nicer
ways to cope with asynchronicity in JavaScript.)

The great folks over there at CS have managed to get `yield` support into CoffeeScript, but it's still
hidden behind a not-obvious installation trick; all you have to do is

```bash
# thx to https://github.com/jashkenas/coffeescript/pull/3078#issuecomment-58415116
npm install -g jashkenas/coffee-script
n latest
coffee -c fuckyeah-generators.coffee && node --harmony fuckyeah-generators.js
```

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


## Create a Mapped Port

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

## Enabling NFS for Synced (a.k.a. Shared) Folder

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

<!-- ################################################################################################### -->
# How to Keep Order in an Asynchronous World

## The Problem

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


## The Solution

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





