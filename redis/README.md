# redis — 缓存服务

Redis 缓存服务，绑定 `127.0.0.1`，支持 Unix socket。

## 安装

```bash
sh install redis
```

## 配置

```ini
# /etc/redis.conf

daemonize yes
bind 127.0.0.1
unixsocket /var/run/redis/redis.sock
pidfile /var/run/redis/redis.pid
logfile /var/log/redis/redis.log
dir /var/lib/redis
loglevel warning
```

## 目录结构

```
redis/
├── install              # 安装脚本
├── etc/
│   ├── redis/
│   │   └── redis.conf   # Redis 配置
│   └── wkit.d/
└── usr/
    └── wkit/            # wkit 命令
```

## 管理

```bash
# 启动
wkit redis start

# 停止
wkit redis stop
```

## 数据目录

| 路径 | 说明 |
|---|---|
| `/var/lib/redis` | 数据文件 |
| `/var/run/redis/` | socket + PID |
| `/var/log/redis/` | 日志文件 |
