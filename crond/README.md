# crond — 定时任务

Alpine Linux 定时任务服务（`crond`），支持多周期粒度。

## 安装

```bash
sh install crond
```

## 目录结构

```
crond/
├── install              # 安装脚本
└── etc/
    ├── crontabs/        # crontab 配置目录
    └── wkit.d/          # wkit 启动脚本
```

## 配置

将 crontab 文件放入 `etc/crontabs/`，安装后复制到 `/etc/crontabs/`。

## 管理

```bash
# 启动
wkit crond start

# 停止
wkit crond stop
```
