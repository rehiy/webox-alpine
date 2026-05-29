# mysql — MariaDB 数据库

MariaDB 数据库服务，基于 Alpine Linux 打包。

## 安装

```bash
sh install mysql
```

## 配置

```ini
# /etc/my.cnf → etc/mysql/my.cnf

[mysqld]
user             = mysql
port             = 3306
bind_address     = 127.0.0.1
datadir          = /var/lib/mysql
tmpdir           = /var/tmp/mysql
pid_file         = /var/run/mysqld/mysqld.pid
socket           = /var/run/mysqld/mysqld.sock
```

额外配置放入 `/etc/mysql/conf.d/`（由 `!includedir` 自动加载）。

## 目录结构

```
mysql/
├── install              # 安装脚本（apk add mariadb mariadb-client）
└── etc/
    ├── mysql/
    │   └── my.cnf       # 主配置文件
    └── wkit.d/          # wkit 启动脚本
```

## 管理

```bash
# 启动
wkit mysql start

# 停止
wkit mysql stop
```

## 数据目录

| 路径 | 说明 |
|---|---|
| `/var/lib/mysql` | 数据库文件 |
| `/var/run/mysqld/` | PID + socket |
| `/var/tmp/mysql` | 临时文件 |
