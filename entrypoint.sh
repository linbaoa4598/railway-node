#!/bin/sh
# 启动前把配置里的占位符替换成环境变量。没设置时用默认值。
UUID="${UUID:-e7686976-f387-4674-a459-4b543d433688}"
WS_PATH="${WS_PATH:-/c214cf6df5df}"
sed -i "s#00000000-0000-0000-0000-000000000000#${UUID}#" /etc/xray/config.json
sed -i "s#/ws#${WS_PATH}#" /etc/xray/config.json
exec xray run -config /etc/xray/config.json
