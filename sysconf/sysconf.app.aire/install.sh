# Installer script for sysconf "nef.service.aire"  -*- shell-script -*-

. /usr/lib/sysconf.base/common.sh

_aire_install()
{
    local _packages=""

    # HTTPd and PHP
    _packages="$_packages apache2-mpm-prefork libapache2-mod-php5"
    _packages="$_packages php5-cli php-pear"

    # Databases
    _packages="$_packages postgresql-9.1 postgresql-9.1-postgis"
    _packages="$_packages mongodb-server"

    # MapServer and GDAL
    _packages="$_packages mapserver-bin cgi-mapserver php5-mapscript"
    _packages="$_packages libgdal1 gdal-bin"

    # Misc
    _packages="$_packages curl bzip2 unzip"
    _packages="$_packages openjdk-7-jre-headless" # for shrinksafe JS builds

    # system
    _packages="$_packages rsyslog sudo git"
    #_packages="$_packages cron"

    sysconf_apt-get install --yes --force-yes --no-upgrade $_packages

    # Install custom packages
    for url in \
        https://raw.githubusercontent.com/geonef/sysconf.nef.dirty/master/tree/var/lib/nef-cloud/packages/php5-mongo_20121217-okapi-1_amd64.deb \
        https://raw.githubusercontent.com/geonef/php5-gdal/master/builds/php5-gdal_20140613-1_amd64.deb \
        ; do

        package=$(basename "$url")
        regexp=$(echo $(basename $package .deb) | sed "s/_/ +/g")
        if dpkg -l | grep -qE "$regexp"; then
            echo "package already installed: $package"
        else
            # https://raw.githubusercontent.com/geonef/sysconf.nef.dirty/master/tree/var/lib/nef-cloud/packages/
            nef_log "installing package: $url"
            curl $url >/tmp/$package && dpkg -i /tmp/$package && rm -f /tmp/$package \
                || nef_fatal "could not download or extract package $package"
        fi
    done
    # Fix Php5-mongo
    [ -f /etc/php5/conf.d/mongo.ini ] \
        || echo "extension=mongo.so" >/etc/php5/conf.d/mongo.ini

    # Clean-up after package install
    rm -f /etc/apache2/sites-enabled/000-default

    # Install system-wide Swift 4.0.6 (PHP Mailer)
    pear channel-discover pear.swiftmailer.org
    pear install swift/Swift-4.0.6

    # Install OpenLayers 2.11rc3
    [ -d /usr/share/javascript/openlayers-2.11rc3 ] || {
        mkdir -p /usr/share/javascript/openlayers-2.11rc3 || nef_fatal "could not mkdir"
        curl "http://openlayers.org/download/OpenLayers-2.11-rc3.tar.gz" \
            | tar xzv --strip-components=1 -C /usr/share/javascript/openlayers-2.11rc3 \
            || nef_fatal "could not download or extract OpenLayers archive"
    }

    # Install Proj4JS 1.0.1
    [ -d /usr/share/javascript/proj4js-1.0.1 ] || {
    cd /tmp
    curl http://trac.osgeo.org/proj4js/raw-attachment/wiki/Download/proj4js-1.0.1.zip >proj4js-1.0.1.zip \
        && unzip proj4js-1.0.1.zip \
        && mv proj4js /usr/share/javascript/proj4js-1.0.1 \
        && rm -f /tmp/proj4js-1.0.1.zip \
        || nef_fatal "could not download or install proj4js"
    }

    # Install dojo-1.5.3-src
    [ -d /usr/share/javascript/dojo-release-1.5.3-src ] || {
        cd /usr/share/javascript
        curl http://download.dojotoolkit.org/release-1.5.3/dojo-release-1.5.3-src.tar.gz \
            | tar xzv --no-same-owner \
            || nef_fatal "could not download or extract the dojo-release-1.5.3-src archive"
    }

    # [ -d /usr/share/javascript/dojo-release-1.5 ] || {
    #     mkdir -p /usr/share/javascript/dojo-release-1.5
        # git clone --depth 1 --single-branch --branch fc262d0d589c490cdd671791f1546a4665ed69c6 https://github.com/dojo/dojo.git /usr/share/javascript/dojo-release-1.5.0-patched-fc262d0d

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
    # "aire" UNIX account
    grep -q ^aire: /etc/passwd || {
        useradd -d / -G www-data aire
    }

    # "aire" PostgreSQL account
    if echo '\dg' | sudo -u postgres psql | grep -qv aire; then
        echo "CREATE ROLE aire PASSWORD 'NNrPLvp1aAhsWvLGpdpQ1xFjDAv2iTHT' NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN;" | sudo -u postgres psql
    fi

    # sudo -u postgres createuser --login --encrypted --no-superuser --no-createrole --no-createdb aire
    # NNrPLvp1aAhsWvLGpdpQ1xFjDAv2iTHT

    # Apache setup
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

echo
echo "Done installing the environment for the AIRE application."
echo
echo "To manage the AIRE instances, run as root:"
echo
echo "  aire-manager"
echo
