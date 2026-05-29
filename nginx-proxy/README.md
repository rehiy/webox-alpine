# nginx-proxy — 代理增强

Nginx 代理增强模块，提供图片裁切和文件缓存功能。

## 安装

```bash
sh install nginx-proxy
```

## 图片裁切

| 模式 | 示例 | 说明 |
|---|---|---|
| 按比例裁切 | `http://example.com/image/1.jpg?c=100x100` | 保持宽高比 |
| 强制裁切 | `http://example.com/image/1.jpg?r=100x100` | 固定尺寸 |

```nginx
server {
    include http.d/server_image_filter;
}
```

## 文件缓存

```nginx
server {
    location ~* (js|css|gif|png|jpg|jpeg)$ {
        include http.d/server_proxy_cache;
    }
}
```

## 管理

```bash
# 启动
wkit nginx-proxy start

# 停止
wkit nginx-proxy stop
```
