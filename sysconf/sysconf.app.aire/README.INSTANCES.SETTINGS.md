# Instance settings for ``` aire-manager ```

## Most important settings

### APP_AIRE_INSTANCE_DIR

Path to the installation directory of instance.

* **Defaults to: ```${APP_AIRE_INSTANCE_BASE_DIR}/{INSTANCE_NAME}```**


### APP_AIRE_INSTANCE_DOMAIN

Website HTTP domain for instance

* **Defaults to: (none)**

## Other settings

### APP_AIRE_INSTANCE_GENERATE_APACHE2

Whether ``` aire-manager ``` should generate an Apache2 virtual host
definition into /etc/apache2/sites-available/ (yes/no)

* **Defaults to: ``` yes ```**

### APP_AIRE_INSTANCE_AUTO_ENABLE_APACHE2

Whether ``` aire-manager ``` should create a symbolic link into ```
/etc/apache2/sites-enabled/ ```. Implies that ```
APP_AIRE_INSTANCE_GENERATE_APACHE2=yes ```

* **Defaults to: ``` no ```**



## Common settings, that may be overloaded

### APP_AIRE_GIT_UPSTREAM_URL

URL of the GIT repository that has the AIRE source code to install by
``` aire-manager ```.

* **Defaults to: ``` https://github.com/aire-atlas/aire.git ```**


### APP_AIRE_GIT_BRANCH

Branch name of the GIT repository that has the AIRE source code to
install by ``` aire-manager ```.

* **Defaults to: ``` aire2 ```**


### APP_AIRE_INSTANCE_GIT_DEPTH

Value of ``` --depth ``` option to the 'git clone' command, see ```
git-clone(1) ```.

Set ``` 0 ``` if you want to be able to edit+commit the AIRE sources
of the instance, this will disable the ``` --depth ``` option and get
a full versionned Git repos clone.

* **Defaults to: ``` 1 ```**


### APP_AIRE_APACHE2_CONFIG_PREFIX

If ``` APP_AIRE_INSTANCE_GENERATE_APACHE2 ``` is set to ``` yes ```,
then ``` aire-manager install ... ``` will generate an Apache virtual
host file:
```
/etc/apache2/sites-available/${APP_AIRE_APACHE2_CONFIG_PREFIX}{INSTANCE}${APP_AIRE_APACHE2_CONFIG_SUFFIX}
```
(example: ```/etc/apache2/sites-available/generated.app.aire.demo.conf```)

* **Defaults to: ``` generated.app.aire. ```**


### APP_AIRE_APACHE2_CONFIG_SUFFIX

If ``` APP_AIRE_INSTANCE_GENERATE_APACHE2 ``` is set to ``` yes ```,
then ``` aire-manager install ... ``` will generate an Apache virtual
host file:
```
/etc/apache2/sites-available/${APP_AIRE_APACHE2_CONFIG_PREFIX}{INSTANCE}${APP_AIRE_APACHE2_CONFIG_SUFFIX}
```
(example: ```/etc/apache2/sites-available/generated.app.aire.demo.conf```)

* **Defaults to: ``` .conf ```**
