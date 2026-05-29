# logrotate — 日志轮转

日志轮转工具，自动归档和压缩旧日志。

## 安装

```bash
sh install logrotate
```

## 配置

日志轮转规则存放在 `/etc/logrotate.d/`，安装后权限自动设为 `0644`。

## 管理

```bash
# 启动
wkit logrotate start

# 停止
wkit logrotate stop
```
