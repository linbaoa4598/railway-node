# relay

A small WebSocket relay service. It accepts connections on a single path and
forwards them to their destination. Useful for bridging clients that can only
reach the public internet through one endpoint.

## Run

The container listens on port 8080. Put it behind any HTTPS reverse proxy.

```bash
docker build -t relay .
docker run -p 8080:8080 relay
```

## Configuration

Two optional environment variables:

| Variable | Default | Purpose |
| --- | --- | --- |
| `UUID` | a built-in value | Shared secret clients must present |
| `WS_PATH` | `/ws` | URL path the service listens on |

Set them in your hosting platform's environment settings. Leaving them unset
uses the defaults baked into the image.
