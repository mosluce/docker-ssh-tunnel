# Docker SSH Tunnel

## USAGE

.env

```conf
TUNNEL_HOST=user-xxx@xxx
TUNNEL_PORT=22
KEY=xxx
REMOTE_HOST=xxx
REMOTE_PORT=27017
LOCAL_PORT=37017
```

docker-compose.yml

```yaml
version: "3"

services:
  mongodb:
    build: .
    ports:
      - "37017:37017"
    env_file:
      - .env
    volumes:
      - ~/.ssh:/root/.ssh:ro
    restart: always
```

start

```shell
docker-compose up -d
```
