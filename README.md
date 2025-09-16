## Ishga tushirish

1. Loyiha papkasiga kiring:

```bash
cd /path/to/project
```

```bash
docker-compose up -d
```


## ngnix

```bash
server {
    listen 80;
    server_name wedrive.uz;
    location = / {
        return 302 /docs/haydovchilar_bilan_shartnoma;
    }
    location /static/ {
        alias /offerta/staticfiles/;
    }
    location /media/ {
        alias /offerta/media/;
    }
    location / {
        proxy_pass http://web:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```