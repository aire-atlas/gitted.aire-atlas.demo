# Supported settings for AIRE instance definitions

## Common settings, that may be overloaded

### APP_AIRE_GIT_UPSTREAM_URL

URL of the GIT repository that has the AIRE source code to install by
``` aire-manager ```.

* Defaults to: ``` https://github.com/aire-atlas/aire.git ```


### APP_AIRE_GIT_BRANCH

Branch name of the GIT repository that has the AIRE source code to
install by ``` aire-manager ```.

* Defaults to: ``` aire2 ```


### APP_AIRE_APACHE2_CONFIG_PREFIX

If ``` APP_AIRE_INSTANCE_GENERATE_APACHE2 ``` is set to ``` yes ```,
then ``` aire-manager install ... ``` will generate an Apache virtual
host file:
```/etc/apache2/sites-available/${APP_AIRE_APACHE2_CONFIG_PREFIX}{INSTANCE}${APP_AIRE_APACHE2_CONFIG_SUFFIX}```
(example: ```/etc/apache2/sites-available/generated.app.aire.demo.conf```)

* Defaults to: ``` generated.app.aire. ```


### APP_AIRE_APACHE2_CONFIG_SUFFIX

If ``` APP_AIRE_INSTANCE_GENERATE_APACHE2 ``` is set to ``` yes ```,
then ``` aire-manager install ... ``` will generate an Apache virtual
host file:
```/etc/apache2/sites-available/${APP_AIRE_APACHE2_CONFIG_PREFIX}{INSTANCE}${APP_AIRE_APACHE2_CONFIG_SUFFIX}```
(example: ```/etc/apache2/sites-available/generated.app.aire.demo.conf```)

* Defaults to: ``` .conf ```


## Instance settings
