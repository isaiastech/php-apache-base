# php-apache-base

Imagem base personalizada com PHP 8.3 + Apache, ideal para projetos PHP modernos com MySQL.

## Recursos
- PHP 8.3
- Apache com mod_rewrite ativado
- Extensões mysqli, PDO, pdo_mysql
- `php.ini` configurado para desenvolvimento

## Como usar

1. Clone este repositório:

```bash
git clone https://github.com/seu-usuario/php-apache-base.git
```

2. Em seu projeto, adicione o seguinte ao `docker-compose.yml`:

```yaml
services:
  apache:
    build:
      context: .
      dockerfile: ../php-apache-base/Dockerfile
    volumes:
      - ./meu-codigo:/var/www/html
      - ./php.ini:/usr/local/etc/php/php.ini
    ports:
      - "8080:80"
```

3. Rode:

```bash
docker-compose up --build
```

## Alternativa: publicar no Docker Hub

```bash
docker build -t seu-usuario/php-apache-base:8.3 .
docker push seu-usuario/php-apache-base:8.3
```

Depois use a imagem no `docker-compose.yml`:

```yaml
image: seu-usuario/php-apache-base:8.3
```
✅ Soluções para corrigir as permissões da pasta production
🔧 1. Ajustar permissões no host (fora do container)
Se a pasta foi criada com root, você pode ajustar manualmente com:

sudo chown -R $USER:$USER ./production
Ou, se quiser dar permissão total (não recomendado para produção):

sudo chmod -R 777 ./public

✅ Passos para rodar

Crie esse docker-compose.yml na raiz do projeto.

Execute no terminal:

docker-compose up --build

Acesse:

Sua app: http://localhost:8000

phpMyAdmin: http://localhost:8081

