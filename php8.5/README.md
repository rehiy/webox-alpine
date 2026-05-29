# php8.5 — PHP 8.5

PHP 8.5 FPM 服务。支持 PostgreSQL 数据库（pdo_pgsql, pgsql），新增 calendar、intl、posix、soap、tidy 扩展。

## 安装

```bash
sh install php8.5
```

## 扩展

phar, bcmath, bz2, calendar, curl, ctype, dom, exif, fileinfo, ftp, gd,
gettext, intl, mbstring, mysqli, mysqlnd, openssl, pecl-redis, pdo_mysql,
pdo_pgsql, pdo_sqlite, pgsql, posix, session, shmop, simplexml, soap,
sockets, sqlite3, tidy, tokenizer, xml, xmlreader, xmlwriter, xsl, zip

## Nginx 适配

安装时自动将 Nginx 配置中的 `php/` 前缀替换为 `php85/`。

## CLI 适配

```bash
ln -sf php85 /usr/bin/php
ln -sf phar.phar85 /usr/bin/phar
```

## 管理

```bash
# 启动
wkit php85 start

# 停止
wkit php85 stop
```
