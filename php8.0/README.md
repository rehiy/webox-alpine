# php8.0 — PHP 8.0

PHP 8.0 FPM 服务。安装时自动创建 `/usr/bin/php` → `php82` 软链接（若不存在）。

## 安装

```bash
sh install php8.0
```

## 扩展

phar, bcmath, bz2, curl, ctype, dom, exif, fileinfo, ftp, gd, gettext,
iconv, json, mbstring, mysqli, mysqlnd, opcache, openssl, pecl-redis,
pdo_mysql, pdo_sqlite, session, shmop, simplexml, sockets, sqlite3,
tokenizer, xml, xmlreader, xmlwriter, xsl, zip

## Nginx 适配

安装时自动将 Nginx 配置中的 `php/` 前缀替换为 `php8/`。

## CLI 适配

```bash
# 自动创建（若 /usr/bin/php 不存在）
ln -sf php82 /usr/bin/php
ln -sf phar.phar82 /usr/bin/phar
```

## 管理

```bash
# 启动
wkit php80 start

# 停止
wkit php80 stop
```
