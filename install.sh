# Installer script for sysconf "nef.service.aire"  -*- shell-script -*-

_aire_install()
{
    local _packages=""

    _packages="$_packages apache2-mpm-prefork libapache2-mod-php5"
    _packages="$_packages postgresql-9.1 postgresql-9.1-postgis"
    _packages="$_packages mapserver-bin cgi-mapserver php5-mapscript"
    _packages="$_packages php5-cli php-pear"


    # utilities
    _packages="$_packages libgdal1 gdal-bin"
    _packages="$_packages curl"
    _packages="$_packages bzip2"

    # system
    _packages="$_packages rsyslog"

    #_packages="$_packages cron"

    sysconf_apt-get install --no-upgrade $_packages

    rm -f /etc/apache2/sites-enabled/000-default

    pear install swift/Swift-4.0.6

    [ -d /usr/share/javascript/openlayers-2.11rc3 ] || {
        mkdir -p /usr/share/javascript/openlayers-2.11rc3 || nef_fatal "could not mkdir"
        curl "http://openlayers.org/download/OpenLayers-2.11-rc3.tar.gz" \
            | tar xzv --strip-components=1 -C /usr/share/javascript/openlayers-2.11rc3 \
            || nef_fatal "could not download or extract OpenLayers archive"
    }
    # [ -d /usr/share/javascript/dojo-release-1.5 ] || {
    #     mkdir -p /usr/share/javascript/dojo-release-1.5

    #     http://download.dojotoolkit.org/release-1.5.3/dojo-release-1.5.3-src.tar.gz
    # [ -d /usr/share/javascript/dojo-release-1.5.0-patched-fc262d0d ] || {
    #     # mkdir -p /usr/share/javascript/dojo-release-1.5.0-patched-fc262d0d
    #     curl "http://download.dojotoolkit.org/release-1.5.0/dojo-release-1.5.0-src.tar.gz" \
    #         | tar xzv --strip-components=1 -C /usr/share/javascript/dojo-release-1.5.0-patched-fc262d0d \
    #         || nef_fatal "could not download or extract Dojo archive"
    #     curl https://raw.githubusercontent.com/dojo/dojo/fc262d0d589c490cdd671791f1546a4665ed69c6/selector/acme.js \
    #         > /usr/share/javascript/dojo-release-1.5.0-patched-fc262d0d
    # }
}

_aire_setup()
{
    grep -q ^aire: /etc/passwd || {
        useradd -d / aire
    }

    _aire_enable_apache_module headers.load
    _aire_enable_apache_module rewrite.load
    _aire_enable_apache_module expires.load
}

_aire_enable_apache_module()
{
    moduleName=$1
    [ -h /etc/apache2/mods-enabled/$moduleName ] || \
        ln -s ../mods-available/$moduleName /etc/apache2/mods-enabled/
}

_aire_reload()
{
    apachectl -S && apachectl graceful
}

_aire_install
_aire_setup
_aire_reload

#update-rc.d mapserver defaults
#service mapserver start
