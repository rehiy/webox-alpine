# wkit — 服务管理工具

Webox 服务管理工具，用于安装、启动、停止各组件服务。

## 功能

| 命令 | 说明 |
|---|---|
| `wkit <service> start` | 启动服务 |
| `wkit <service> stop` | 停止服务 |
| `wkit <service> reload` | 重载服务 |
| `wkit module-add <module>` | 安装模块 |

## 使用

```bash
# 启动服务
wkit mysql start
wkit redis start
wkit php81 start
wkit nginx start

# 停止服务
wkit mysql stop
wkit redis stop
wkit php81 stop
wkit nginx stop

# 重载配置
wkit nginx reload
```

## 目录结构

```
wkit/
├── install              # 安装脚本
├── etc/
│   ├── local.d/         # 本地启动脚本
│   ├── wkit-env         # 环境变量配置
│   └── wkit.d/          # wkit 服务脚本
└── usr/
    └── wkit/
        └── bin/         # wkit 命令
```

## 环境变量

通过 `etc/wkit-env` 配置全局环境变量。

## 动态脚本

将启动脚本放入 `/var/config/wkit.d/`，按字母顺序执行（如 `s8-goaccess`）。
