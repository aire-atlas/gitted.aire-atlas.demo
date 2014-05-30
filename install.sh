# Installer script for sysconf "nef.service.aire"  -*- shell-script -*-

_aire_install()
{
    local _packages=""

    _packages="$_packages apache2-mpm-prefork libapache2-mod-php5"
    _packages="$_packages postgresql-9.1 postgresql-9.1-postgis"
    _packages="$_packages mapserver-bin cgi-mapserver"
    _packages="$_packages php5-cli"


    # utilities
    _packages="$_packages libgdal1 gdal-bin"
    _packages="$_packages curl"
    _packages="$_packages bzip2"

    # system
    _packages="$_packages rsyslog"

    #_packages="$_packages cron"

    sysconf_apt-get install --no-upgrade $_packages

    rm -f /etc/apache2/sites-enabled/000-default
}

_aire_setup()
{
    grep -q ^aire: /etc/passwd || {
        useradd -d / aire
    }
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
