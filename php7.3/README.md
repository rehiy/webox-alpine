# php7.3 — PHP 7.3

PHP 7.3 FPM 服务。

## 安装

```bash
sh install php7.3
```

## 扩展

phar, bcmath, bz2, curl, ctype, dom, exif, fileinfo, ftp, gd, gettext,
iconv, json, mbstring, mysqli, mysqlnd, opcache, openssl, pecl-redis,
pdo_mysql, pdo_sqlite, session, shmop, simplexml, sockets, sqlite3,
tokenizer, xml, xmlreader, xmlwriter, xsl, zip

## Nginx 适配

安装时自动将 Nginx 配置中的 `php/` 前缀替换为 `php7/`。

## 管理

```bash
# 启动
wkit php73 start

# 停止
wkit php73 stop
```
