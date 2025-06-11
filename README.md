# Ambiente PHP com Docker

Este projeto configura um ambiente de desenvolvimento PHP completo utilizando Docker, incluindo:

- PHP 8.2 + Apache
- MySQL 5.7
- phpMyAdmin

---

## 📦 Serviços

### 🧰 PHP + Apache
- Localhost: `http://localhost:8080`
- Código-fonte na pasta `/src`

### 🐬 MySQL
- Porta: `3307`
- Banco: `meu_banco`
- Usuário: `user`
- Senha: `senha`

### 🗃️ phpMyAdmin
- Acesso: `http://localhost:8081`
- Servidor: `db`
- Usuário: `root`
- Senha: `root`

---

## 🚀 Como usar

### 1. Pré-requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### 2. Subir o ambiente
``Configurar o arquivo .env

No terminal, execute:

```bash
docker-compose up --build
```

Isso criará e iniciará os containers `php-app`, `mysql-db` e `phpmyadmin`.

---

## 📁 Estrutura do projeto

```
meu-projeto/
│
├── docker-compose.yml
├── Dockerfile
├── README.md
├── src/
│   └── index.php
└── docker/
    └── apache/
        └── default.conf
```

---

## 🧪 Testando

Acesse no navegador:  
- `http://localhost:8080` → Sua aplicação PHP  
- `http://localhost:8081` → Interface phpMyAdmin

---

## 🛑 Parar os containers

Para parar o ambiente:

```bash
docker-compose down
```

---

## ✅ Exemplo simples

O arquivo `src/index.php` exibe uma mensagem simples para testar o ambiente:

```php
<?php
echo "Ambiente PHP com Docker funcionando!";
```

---

## ✍️ Autor

Criado por [isaiasTech].  
Atualizado para utilizar PHP 8.2 com segurança.
