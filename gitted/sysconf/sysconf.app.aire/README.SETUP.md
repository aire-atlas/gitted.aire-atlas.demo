
# Manual setup instructions

This command, as explained in [README.md](README.md), sets up a Debian system automatically:
```shell
apt-get install sudo curl git && curl https://raw.githubusercontent.com/geonef/sysconf.base/master/tree/usr/bin/sysconf | bash -s init https://github.com/aire-atlas/sysconf.app.aire.git compile install update
```

This file contains more explicit instructions, that can be used on other Linux
distributions or if you meet problems using the automatic setup.

## Prerequisites

* a <strong>Linux system</strong>. It does not mean it would never work on
  other systems. It could with little or much adaptation. It may be difficult
  on Windows system.

* hardware: there is no hard requirement, but map generation and database
  operations may be slow on weak system. The amount of memory is especially
  useful.

## Package dependencies

Software used for the running server:
* [MongoDB](http://www.mongodb.org/)
* [Apache 2](https://httpd.apache.org/)
* [PHP 5.3](https://php.net/)
* [PostgreSQL](http://www.postgresql.org/)
* [PostGIS](http://postgis.net/)
* [UMN MapServer](http://mapserver.org/)
* [GDAL](http://www.gdal.org/)
* [php5-gdal](https://github.com/geonef/php5-gdal)
* [php5-mongo](http://docs.mongodb.org/ecosystem/drivers/php/)
* [SwiftMailer](http://swiftmailer.org/)

Software used to build the Javascript app:
* A Java Runtime machine (like OpenJDK) for the Javascript packager (will be run once)
* [OpenLayers 2.11](http://openlayers.org/)
* [Proj4JS](http://proj4js.org/)
* [Dojo 1.5.3](http://dojotoolkit.org/)


## Manual setup

Read [install.sh](install.sh), you can do what it does by following it
(don't worry, it is less than 150 lines, comments included).

If you are using a distribution other than Debian GNU/Linux,
you will need to adapt some of the commands (such as _apt-get_, the names of
the packages to be installed, etc.).
