# nginx-php — PHP-FPM 模块

Nginx PHP-FPM 连接模块，提供 FastCGI 代理配置模板。

## 安装

```bash
sh install nginx-php
```

## 功能

安装后自动修改 Nginx 配置模板中的 PHP 路径前缀（`php/` → `php7/`），确保与 PHP-FPM socket 路径匹配。

## 配置

```
nginx-php/
├── install              # 安装脚本
├── etc/
│   └── nginx/
│       └── http.d/      # PHP-FPM 代理模板
└── wkit.d/              # wkit 启动脚本
```

## 管理

```bash
# 启动
wkit nginx-php start

# 停止
wkit nginx-php stop
```
