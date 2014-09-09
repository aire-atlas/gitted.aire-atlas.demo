# A base repository to build AIRE-based atlas websites

The Atlas is packaged using GITTED, which use the LXC containers to
make it run, and GIT for updates, backups and data sync.

* [LXC](https://linuxcontainers.org/) pseudo-virtualization technology
  running on Linux
  
* [GIT](http://git-scm.com/) is the #1 distributed version control
  system

* [GITTED](https://github.com/geonef/gitted) is a shell-based tool
  that let you manage the atlas through ```git pull``` and ```git
  push``` commands
  
  
## Install & start the base atlas

```
git clone https://github.com/aire-atlas/atlas-base.git && cd my-atlas
gitted/gitted-client register && gitted/gitted-client add vm-atlas-base
git push vm-atlas-base master
```

If it fails because of a network error, remove the VM and retry :
```
lxc-destroy -f -n vm-atlas-base
git push vm-atlas-base master
```

The atlas is now running.


## Make your own atlas

