# A base repository to build AIRE-based atlas websites


## Installation

The Atlas is packaged using GLXC
```
git clone https://github.com/aire-atlas/atlas-base.git && cd my-atlas
glxc/glxc-client register && glxc/glxc-client add vm-atlas-base
git push vm-atlas-base master
```

If it fails because of a network error, remove the VM and retry :
```
lxc-destroy -f -n vm-atlas-base
git push vm-atlas-base master
```

The atlas is now running.

