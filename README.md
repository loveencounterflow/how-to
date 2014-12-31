

- [Note](#note)
- [Vagrant](#vagrant)
	- [On the Host](#on-the-host)
	- [On the Guest](#on-the-guest)
	- [Create a Mapped Port](#create-a-mapped-port)
	- [Enabling NFS for Synced (a.k.a. Shared) Folder](#enabling-nfs-for-synced-aka-shared-folder)
- [CoffeeScript with `yield` / generators](#coffeescript-with-yield--generators)

> **Table of Contents**  *generated with [DocToc](http://doctoc.herokuapp.com/)*


# Note

All of the below notes come without any warranty, implied or explicit. YAYOR. They worked for OSX 10.8.5
box and may or may not work anywhere else.

# Vagrant

## On the Host

```bash
mkdir drifter
cd drifter
vagrant init ubuntu/trusty64
vagrant up
vagrant ssh
```


## On the Guest

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
in the background will cause host applications trying to offer connectivity on that port to fail (more or
less) silently.

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

So i got everything up and running: `n 0.10.35` so i can `npm install level`; from a NodeJS script `require
'level'` works, `db = level '../data/mydb'`, no problem, so lets put a value into the DB:
`db.put key, value ( error ) -> ...`———sorry guys:

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

You may have to `sudo nfsd enable`, then `sudo touch /etc/exports` and reboot to get the NFS demon to run.

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

# CoffeeScript with `yield` / generators

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



