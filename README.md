

- [Vagrant](#vagrant)
	- [On the host](#on-the-host)
	- [On the guest](#on-the-guest)

> **Table of Contents**  *generated with [DocToc](http://doctoc.herokuapp.com/)*


# Vagrant

## On the host

```bash
mkdir drifter
cg drifter
vagrant init  ubuntu/trusty64
vagrant up
vagrant ssh
```


## On the guest

```bash
sudo apt-get install git
sudo apt-get install make # should already be installed e.g. on Ubuntu server
git clone https://github.com/visionmedia/n

cd n
sudo chown -R vagrant:vagrant /usr/local
make install

n latest
n stable

# now we have two Node versions and can already use `npm`:
npm install -g supervisor
```



