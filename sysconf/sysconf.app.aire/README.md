
# Installer/manager for the _AIRE_ web atlas

* Project homepage: http://aire-atlas.github.io/

AIRE is a web engine that manages the making of geographical atlases.
Originally named after the French _A.I.R.E._, which means _The Interactive Atlas of European Regions_, this software is a project of _UMS 2414 RIATE_ (which stands for _Réseau interdisciplinaire pour l’aménagement et la cohésion des territoires de l’Europe et de ses voisinages_).

Beyond a simple consultation tool, the atlas allows an acces to multiple representation of the same phenomenon thanks to various spatial analysis methods and to little current cartographic representations in accordance with 5 different European levels.


## This is only the installer

This repository _sysconf.app.aire_ is just part of the project and provides :
* The *system setup* script [install.sh](./install.sh), designed to work on Debian-compatible GNU/Linux systems
* Documentation and tips about the installation and maintenacne of the AIRE atlas
* The *manager* script [tree/usr/bin/aire-manager](./tree/usr/bin/aire-manager) which manages installation, update and troubleshooting of the various website instances configured to run on the system
* Initial datasets, in [tree/usr/share/aire/data](./tree/usr/share/aire/data)


## Quick installation on a Debian/Ubuntu system

Run as root:
```shell
apt-get install sudo curl git && curl https://raw.githubusercontent.com/geonef/sysconf.base/master/tree/usr/bin/sysconf | bash -s init https://github.com/aire-atlas/sysconf.app.aire.git compile install update
```

```shell
sudo aire-manager install demo
```

That's all!
How can access AIRE by pointer a web browser to http://127.0.0.1/

## Extended instructions 

* [System setting-up](README.SETUP.md) to prepare the Linux system with all required dependencies
* [Managing instances](README.INSTANCES.md) to manage single or multiple AIRE atlases
* [Ready-to-use virtualized environments](README.SETUP.VIRTUAL.md) for some hints for installing within
  virtual machine and container

## Notes

_sysconf.app.aire_ is a [SYSCONF profile](https://github.com/geonef/sysconf.base)
which depends on the [sysconf.nef.common](https://github.com/geonef/sysconf.nef.common) profile.
Check out the [sysconf.base](https://github.com/geonef/sysconf.base) profile to learn more.
