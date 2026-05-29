# nginx-geoip — GeoIP 模块

Nginx GeoIP2 模块，支持基于地理位置的请求路由。

## 安装

```bash
sh install nginx-geoip
```

## 依赖

- `nginx-mod-http-geoip2` — HTTP GeoIP2 模块
- `nginx-mod-stream-geoip2` — Stream GeoIP2 模块

## 功能

安装时自动执行 `wkit geoip-update`，下载 GeoIP 数据库。

## 管理

```bash
# 启动
wkit nginx-geoip start

# 停止
wkit nginx-geoip stop
```
