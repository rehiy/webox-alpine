#!/bin/sh -eu

# Run in a disposable Alpine container after installing the selected modules.
profile=${1:-full}

test -x /usr/bin/wkit
test -x /usr/bin/wkit-init

if [ "$profile" = slim ]; then
    test -x /etc/wkit.d/s9-crond
    exit 0
fi

mkdir -p /var/run/nginx /var/tmp/nginx /var/log/nginx
nginx -t
wkit nginx start
trap 'wkit nginx stop' EXIT
wget -qO /dev/null http://127.0.0.1/

case "$profile" in
    full|php85) php=85 ;;
    php84) php=84 ;;
    nginx) exit 0 ;;
    *) echo "Unknown profile: $profile" >&2; exit 1 ;;
esac

wkit "php$php" start
trap 'wkit "php$php" stop; wkit nginx stop' EXIT
"php-fpm$php" -t
mkdir -p /var/www/default/test.smoke
printf '%s\n' '<?php echo "webox-php-ok";' > /var/www/default/test.smoke/__webox_smoke.php
test "$(wget -qO- --header 'Host: smoke.test' http://127.0.0.1/__webox_smoke.php)" = webox-php-ok
rm /var/www/default/test.smoke/__webox_smoke.php

if [ "$profile" = full ]; then
    wkit mysql start
    trap 'wkit mysql stop; wkit redis stop; wkit "php$php" stop; wkit nginx stop' EXIT
    wkit redis start
    mariadb -u root -e 'SELECT 1'
    test "$(redis-cli ping)" = PONG
fi
