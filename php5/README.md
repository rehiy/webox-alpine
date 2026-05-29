# php5 — PHP 5.x

PHP 5.x FPM 服务，适用于遗留应用。

## 安装

```bash
sh install php5
```

## 扩展

bcmath, bz2, curl, ctype, dom, exif, ftp, gd, gettext, iconv, json, mcrypt,
mysqli, openssl, pdo_mysql, pdo_sqlite, shmop, sockets, sqlite3, xml,
xmlreader, xsl, zip

## 配置

```
php5/
├── install              # 安装脚本
├── deps                 # 依赖声明
├── etc/
│   ├── php5/
│   │   └── php-fpm.d/  # FPM 配置（安装时移除）
│   └── wkit.d/
└── usr/
    └── wkit/            # wkit 命令
```

## Nginx 适配

安装时自动将 Nginx 配置中的 `php/` 前缀替换为 `php5/`：

```bash
sed -i 's#php/#php5/#g' /etc/nginx/http.d/server_fastcgi_php
sed -i 's#php/#php5/#g' /etc/nginx/http.d/server_status
```

## 管理

```bash
# 启动
wkit php5 start

# 停止
wkit php5 stop
```
