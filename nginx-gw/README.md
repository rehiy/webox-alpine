# Nginx Gateway

## 启用图片裁切功能

- 按比例裁切 http://example.com/image/1.jpg?c=100x100
- 强制裁切尺寸 http://example.com/image/1.jpg?r=100x100

```nginx
server {
    #...
    include http.d/server_image_filter;
    #...
}
```

## 启用文件缓存功能

```nginx
server {
    #...
    location ~* (js|css|gif|png|jpg|jpeg)$ {
        include http.d/server_proxy_cache;
        #...
    }
    #...
}
```
