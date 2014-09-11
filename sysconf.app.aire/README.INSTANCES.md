# Managing AIRE instances

## Theory

### 1 instance = 1 atlas = 1 install = 1 Apache website

After the system has been setup properly with the required dependencies,
then AIRE itself can be installed to serve a single atlas.

An unlimited number of instances can be installed simultanuously on the
same system. It can be the dev/test/prod instances for the same atlas,
or different, independant, atlases.

### 1 atlas > N categories of map collections

An instance owns an unlimited number of "categories".
A category is a group of collections. Usually they are themes of statistical
data, such as "Demography" or "Economy".

### 1 category > N collections

A category, like a folder, contains a list of map collections.
Since a given phenomenon yields 1 unique map for each representation method
and administrative scale, we don't manage maps so much individually but
through their collections.

### 1 collection > N representations

A collection is a stack of enabled representations (proportional symbol,
chloroplethe, discontinuities...).

### 1 representation > N administrative scales

Every representation method declines into 1 or multiple scales.


## The aire-manager command

Just type as root:
```shell
aire-manager
```

It should show something like:
```
aire-manager: CHECKING SYSTEM SERVICES
aire-manager: 
aire-manager: Checking MongoDB...
aire-manager:   MongoDB process not running. Checking...
aire-manager:   Trying to start MongoDB...
[ ok ] Starting database: mongodb apparently already running.
aire-manager: 
aire-manager: Checking Apache2...
Apache2 is running (pid 8445).
aire-manager:   RUNNING!
aire-manager: 
aire-manager: Checking PostgreSQL...
aire-manager:   RUNNING!
aire-manager: 
aire-manager: EVERYTHING WAS ALL RIGHT
aire-manager:   sysconf update
aire-manager: 
aire-manager: CHECKING AIRE INSTANCES
aire-manager:   There are 1 instances defined in /etc/aire/instances
aire-manager:   Instance definition: /etc/aire/instances/demo.conf
aire-manager:   To install/fix, type:
aire-manager:     /usr/bin/aire-manager install demo
```

## /etc/aire/instances/ : instances definitions

The file _/etc/aire/instances/demo.conf_ is pre-installed, as shown by the
output of _aire_manager_ above (_Instance definition: /etc/aire/instances/demo.conf_).

As you can see, it contains this content:
```
APP_AIRE_INSTANCE_DIR=/var/lib/aire/demo
APP_AIRE_INSTANCE_AUTO_ENABLE_APACHE2=yes
```

Which means that _demo_ is an instance to be installed into ``` /var/lib/aire/demo ```
(setting ``` APP_AIRE_INSTANCE_DIR ```) and should be enabled
automatically as an Apache2 website (setting ```
APP_AIRE_INSTANCE_AUTO_ENABLE_APACHE2 ```).

This is the minimum. It should work if MongoDB does not require authentication.

For the full list of available settings, read: [README.INSTANCES.SETTINGS.md](README.INSTANCES.SETTINGS.md)

To install and activate the instance, just type:
```
aire-manager install demo
```

## How to create a new instance

You can have as many instances as you need. It is easy:
* create ``` /etc/aire/instances/{INSTANCE}.conf ``` (where {INSTANCE} is the name of your instance, in lower case only)
* take example on ``` /etc/aire/instances/demo.conf ```
  * set ``` APP_AIRE_INSTANCE_DIR ``` to ``` /var/lib/aire/{INSTANCE} ``` for example
  * you may need to set ``` APP_AIRE_INSTANCE_DOMAIN ``` to the domain
  that you want to use (and update your /etc/hosts or DNS entry file if needed)
  * set the settings that you need as documented in [README.INSTANCES.SETTINGS.md](README.INSTANCES.SETTINGS.md)
* run: ``` aire-manager install {INSTANCE} ```
