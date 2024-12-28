# coolify-firebase-nginx-reverse-proxy

Simple nginx reverse proxy on coolify for firebase authentication..

Referenced docs: https://github.com/mgscox/coolify-firebase-nginx-reverse-proxy.git

## Environment variables

### `FIREBASE_ID`

The firebase project id you wish to support authentication for

## `compose.yml` setup

```yaml
services:
  firebase-proxy:
    image: ghcr.io/mgscox/coolify-firebase-nginx-reverse-proxy
    environment:
      - SERVICE_FQDN_WEBAPP_80
      - FIREBASE_ID=${FIREBASE_ID}
    restart: unless-stopped
```
