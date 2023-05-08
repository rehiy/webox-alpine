# What is Webox?

Re sail from alpine !

Webox (`abbreviation for web-box`) is a customized LNMP server, which includes the following components: MariaDB, Nginx, PHP, Redis. And add some popular plug-ins.

## Install apps

```bash
wget https://github.com/rehiy/webox-alpine/archive/refs/heads/master.tar.gz
tar xvf master.tar.gz && rm -f master.tar.gz

cd webox-alpine-master
sh install mysql nginx nginx-php php8.1 redis
```

## Start service

```bash
wkit mysql start
wkit redis start
wkit php81 start
wkit nginx start
```

## Stop service

```bash
wkit mysql stop
wkit redis stop
wkit php81 stop
wkit nginx stop
```

## More Issues

See <https://github.com/rehiy/webox-alpine/issues> for more issues.
