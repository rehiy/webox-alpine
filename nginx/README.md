# nginx — Web 服务器

Nginx Web 服务器，基于 Alpine Linux 打包，自定义运行时路径。

## 安装

```bash
sh install nginx
```

## 配置

```
nginx/
├── install              # 安装脚本
├── etc/
│   ├── logrotate.d/     # 日志轮转规则
│   ├── nginx/           # Nginx 配置
│   │   ├── http.d/      # 站点配置模板
│   │   │   ├── server_fastcgi_php  # PHP-FPM 代理模板
│   │   │   └── server_status       # 状态页模板
│   │   └── wkit.d/      # wkit 启动脚本
│   └── wkit.d/
├── var/
│   └── www/
│       └── assets/      # 默认静态页面
└── usr/
    └── wkit/            # wkit 命令
```

## 路径重定向

安装时自动创建符号链接，将运行时路径指向 `/var`：

```
/var/run/nginx   → /var/lib/nginx/run
/var/tmp/nginx   → /var/lib/nginx/tmp
/var/log/nginx   → /var/lib/nginx/logs
/var/www/assets  → /var/lib/nginx/html
/usr/lib/nginx/modules → /var/lib/nginx/modules
```

## 管理

```bash
# 启动
wkit nginx start

# 停止
wkit nginx stop

# 重载
wkit nginx reload
```

## 站点配置

| 模板 | 说明 |
|---|---|
| `http.d/server_fastcgi_php` | PHP-FPM 代理配置 |
| `http.d/server_status` | Nginx 状态页配置 |
