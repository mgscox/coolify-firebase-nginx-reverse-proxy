# coolify-firebase-nginx-reverse-proxy

Simple nginx reverse proxy on coolify for firebase authentication..

Referenced docs: https://github.com/mgscox/coolify-firebase-nginx-reverse-proxy.git

## Environment variables

### `FIREBASE_ID`

The firebase project id you wish to support authentication for

## `compose.yml` setup

```yaml
services:
  webapp:
    image: ghcr.io/nicanordlc/coolify-nginx-reverse-proxy:latest
    environment:
      - SERVICE_FQDN_WEBAPP_80
      - FIREBASE_ID=${FIREBASE_ID}
    restart: unless-stopped
```
