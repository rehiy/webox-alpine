# php8.2 — PHP 8.2

PHP 8.2 FPM 服务。支持 PostgreSQL 数据库（pdo_pgsql, pgsql）。

## 安装

```bash
sh install php8.2
```

## 扩展

phar, bcmath, bz2, curl, ctype, dom, exif, fileinfo, ftp, gd, gettext,
iconv, json, mbstring, mysqli, mysqlnd, opcache, openssl, pecl-redis,
pdo_mysql, pdo_pgsql, pdo_sqlite, pgsql, session, shmop, simplexml,
sockets, sqlite3, tokenizer, xml, xmlreader, xmlwriter, xsl, zip

## Nginx 适配

安装时自动将 Nginx 配置中的 `php/` 前缀替换为 `php82/`。

## CLI 适配

```bash
ln -sf php82 /usr/bin/php
ln -sf phar.phar82 /usr/bin/phar
```

## 管理

```bash
# 启动
wkit php82 start

# 停止
wkit php82 stop
```
