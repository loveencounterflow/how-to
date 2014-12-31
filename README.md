

- [Vagrant](#vagrant)
	- [On the host](#on-the-host)
	- [On the guest](#on-the-guest)
- [CoffeeScript with `yield` / generators](#coffeescript-with-yield--generators)

> **Table of Contents**  *generated with [DocToc](http://doctoc.herokuapp.com/)*


# Vagrant

## On the host

```bash
mkdir drifter
cd drifter
vagrant init ubuntu/trusty64
vagrant up
vagrant ssh
```


## On the guest

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
npm install -g supervisor
```

# CoffeeScript with `yield` / generators

```bash
# thx to https://github.com/jashkenas/coffeescript/pull/3078#issuecomment-58415116
npm install -g jashkenas/coffee-script
n latest
coffee -c fuckyeah-generators.coffee && node --harmony fuckyeah-generators.js
```



