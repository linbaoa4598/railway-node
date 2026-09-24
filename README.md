# Railway 节点

VMess + WebSocket。Railway 在入口终结 TLS，容器内只跑明文 WebSocket。

- 地址：部署完成后 Railway 分配的域名
- 端口：443
- UUID：`e7686976-f387-4674-a459-4b543d433688`
- 传输：ws
- 路径：`/c214cf6df5df`
- TLS：开启，SNI 填 Railway 的域名

部署：把这个目录推到 GitHub，在 Railway 里选 GitHub Repository 导入，它会按 Dockerfile 构建。
构建好后到 Settings → Networking → Generate Domain，拿到域名即可。
