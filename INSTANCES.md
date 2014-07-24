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

