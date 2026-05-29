# wkit-container — 容器化 wkit

容器化版本的 wkit 服务管理工具。

## 功能

在容器环境中提供与宿主机相同的 `wkit` 命令接口，管理服务生命周期。

## 目录结构

```
wkit-container/
├── install              # 安装脚本
├── etc/
│   └── inittab          # init 配置
└── usr/
    └── wkit/
        └── bin/         # wkit 命令
```

## 管理

```bash
# 启动服务
wkit <service> start

# 停止服务
wkit <service> stop
```
