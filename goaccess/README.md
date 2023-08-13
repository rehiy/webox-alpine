# GoAccess

## 动态安装

- 创建动脚本 `/var/config/wkit.d/s8-goaccess`，代码参见 [动态安装脚本](#动态安装脚本)
- 访问 `https://your.domain.com/report/` 即可查看统计结果

## 动态安装脚本

```shell
#!/bin/sh
#

export GOACCESS_REPORT_URL=wss://your.domain.com:443
export GOACCESS_REPORT_PWD=password

if [ ! -x /usr/bin/goaccess ]; then
    wkit module-add goaccess
fi

wkit goaccess start

######################################################

cat <<EOF >/etc/nginx/host.d/goaccess.conf
server {

    listen 80;

    listen 443 ssl http2;
    ssl_certificate certs/default.cer;
    ssl_certificate_key certs/default.key;

    server_name your.domain.com;

    include http.d/server_goaccess;

    location / {
        return 404;
    }

}
EOF

wkit nginx reload
```

## Nginx 日志对照表

```text
$time_local         %d:%t %^
$host               %v
$http_host          %v
$remote_addr        %h
$request_time       %T
$request_method     %m
$request_uri        %U
$server_protocol    %H
$request            %r
$status             %s
$body_bytes_sent    %b
$bytes_sent         %b
$http_referer       %R
$http_user_agent    %u
```
