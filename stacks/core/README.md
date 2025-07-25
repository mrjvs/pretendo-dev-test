# Core stack

The stack that contains the core services of Pretendo:
- Databases: MongoDB, PostgreSQL
- Friends
- Account
- A development proxy

## Instructions

1. Run `docker compose up -d` in `/stacks/core`

## Credentials
```toml
[minio.admin]
url = "http://localhost:9001"
username = "minioadmin"
password = "minioadmin"

[mongodb]
url = "mongodb//localhost:27017/admin?directionConnection=true&authSource=admin"

[account.grpc]
port = 8123
host = "localhost"
key = "12345678123456781234567812345678"

[friends.grpc]
port = 8124
host = "localhost"
key = "12345678123456781234567812345678"

[proxy.admin]
url = "http://localhost:8081"
password = "proxyadmin"

[proxy]
host = "127.0.0.1"
port = 8888
```
