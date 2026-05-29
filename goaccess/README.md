# goaccess — 实时日志分析

GoAccess 实时 Web 日志分析器，通过 WebSocket 推送统计结果。

## 安装

```bash
sh install goaccess
```

## 动态安装

创建脚本 `/var/config/wkit.d/s8-goaccess`：

```shell
#!/bin/sh
export GOACCESS_REPORT_URL=wss://your.domain.com:443
export GOACCESS_REPORT_PWD=password

if [ ! -x /usr/bin/goaccess ]; then
    wkit module-add goaccess
fi

wkit goaccess start
```

访问 `https://your.domain.com/report/` 查看统计结果。

## Nginx 配置

```nginx
server {
    listen 80;
    listen 443 ssl;
    ssl_certificate certs/default.cer;
    ssl_certificate_key certs/default.key;
    server_name your.domain.com;

    include http.d/server_goaccess;

    location / {
        return 404;
    }
}
```

## Nginx 日志格式对照

| Nginx 变量 | GoAccess 格式 | 说明 |
|---|---|---|
| `$time_local` | `%d:%t %^` | 时间 |
| `$host` / `$http_host` | `%v` | 主机名 |
| `$remote_addr` | `%h` | 客户端 IP |
| `$request_time` | `%T` | 请求耗时 |
| `$request_method` | `%m` | 请求方法 |
| `$request_uri` | `%U` | 请求 URI |
| `$status` | `%s` | 状态码 |
| `$body_bytes_sent` | `%b` | 响应大小 |
| `$http_referer` | `%R` | 引用页 |
| `$http_user_agent` | `%u` | 用户代理 |

## 配置

```
goaccess/
├── README.md            # 本文件
├── install              # 安装脚本（apk add goaccess）
├── etc/
│   ├── goaccess/
│   │   └── goaccess.conf  # GoAccess 配置
│   ├── nginx/
│   │   └── http.d/          # Nginx GoAccess 配置
│   ├── periodic/            # 定时任务
│   └── wkit.d/
└── usr/
    └── wkit/                # wkit 命令
```

## 管理

```bash
# 启动
wkit goaccess start

# 停止
wkit goaccess stop
```
