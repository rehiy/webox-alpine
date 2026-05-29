# Webox Alpine

轻量级 LNMP 服务器，基于 Alpine Linux 构建。包含 MariaDB、Nginx、PHP-FPM、Redis 及常用插件，通过 `wkit` 工具统一管理。

## 组件

| 组件 | 说明 |
|---|---|
| `mysql` | MariaDB 数据库 |
| `nginx` | Nginx Web 服务器 |
| `nginx-php` | Nginx PHP-FPM 模块 |
| `nginx-proxy` | Nginx 代理（图片裁切、缓存） |
| `nginx-geoip` | Nginx GeoIP 模块 |
| `php5` ~ `php8.5` | 多版本 PHP-FPM |
| `redis` | Redis 缓存 |
| `crond` | 定时任务 |
| `logrotate` | 日志轮转 |
| `goaccess` | 实时日志分析 |
| `wkit` | 服务管理工具 |
| `wkit-container` | 容器化 wkit |

## 安装

```bash
wget https://github.com/rehiy/webox-alpine/archive/refs/heads/master.tar.gz
tar xvf master.tar.gz && rm -f master.tar.gz

cd webox-alpine
sh install mysql nginx nginx-php php8.1 redis
```

## 管理

```bash
# 启动
wkit mysql start
wkit redis start
wkit php81 start
wkit nginx start

# 停止
wkit mysql stop
wkit redis stop
wkit php81 stop
wkit nginx stop

# 重载
wkit nginx reload
```

## 本地代理

```bash
source local-env   # 设置 http_proxy / https_proxy
```

## 更多

参见 <https://github.com/rehiy/webox-alpine/issues>
