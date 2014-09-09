# Ready-to-use virtualized environements

## Linux Container (LXC)

LXC is a tool based on the _cgroups_ kernel feature that allows
the creation of "sub-systems" (containers) which are totally or partially
isolated from the base system. It is like a virtual machine managed by the
kernel.

Create a Debian container like this:
```shell
lxc-create -n aire-atlas --template debian
```

To proceed through SSH, we need to know the IP address:
* start the container: ``` lxc-start -n aire-atlas ```
* log as root (password is "root")
* execute ``` ip addr show eth0 ``` and read the IP (may be like _10.0.3.170_)

Then log as root into the container:
```shell
ssh -A root@<container IP address>
```

Fix the package authoentication issue by installing _ca-certificates_:
```shell
apt-get install ca-certificates
```

Then setup the environment, as explained in the [README.md](README.md):
```shell
apt-get install sudo curl git && curl https://raw.githubusercontent.com/geonef/sysconf.base/master/tree/usr/bin/sysconf | bash -s init https://github.com/aire-atlas/sysconf.app.aire.git compile install update
```

It can take some time as it downloads many things which are necessary to AIRE atlas.

## VirtualBox (compatible with Windows, Linux and Mac)

The principle is the same, but you need to install a full Debian system before
setting it up for AIRE:

* install VirtualBox for you system
* create a virtual machine with minimum 1 Go RAM and 4 Go disk
* download a Debian installer there: https://www.debian.org/distrib/
* "mount" the Debian ISO as a virtual CD to the virtual machine
* start the machine: it will boot on the Debian ISO and start the Debian installer
* follow the usual steps to install the Debian on the virtual machine
* then reboot the VM and log in as root
* execute the AIRE setting up, as explained in the [README.md](README.md):
```shell
apt-get install sudo curl git && curl https://raw.githubusercontent.com/geonef/sysconf.base/master/tree/usr/bin/sysconf | bash -s init https://github.com/aire-atlas/sysconf.app.aire.git compile install update
```
