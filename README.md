
---

# 🛒 VendaJá - Plataforma de Marketplace Online

## 📌 Descrição

O **VendaJá** é uma plataforma web de marketplace que permite a diferentes vendedores publicarem produtos e a compradores visualizarem, pesquisarem e entrarem em contacto com os mesmos.

O sistema simula um ambiente real de comércio digital, integrando frontend e backend para gestão de utilizadores, produtos e comunicação.

---

## 🎯 Objetivos

* Desenvolver uma aplicação web completa
* Implementar sistema de autenticação
* Permitir cadastro e gestão de produtos
* Criar interação entre compradores e vendedores
* Aplicar boas práticas de desenvolvimento em equipa com Git

---

## 🚀 Funcionalidades

* 🔐 Registo e login de utilizadores
* 📦 Cadastro, edição e remoção de produtos
* 🛒 Visualização de produtos (loja)
* 🔍 Pesquisa e filtros
* 💬 Contacto com vendedor (WhatsApp ou mensagens)
* 📊 Dashboard do vendedor

---

## 🧱 Tecnologias Utilizadas

### Frontend:

* HTML5
* CSS3
* JavaScript

### Backend:

* PHP

### Base de Dados:

* MySQL

### Ferramentas:

* Git & GitHub
* Live Server / XAMPP

---

## 📂 Estrutura do Projeto

```
project/
│
├── index.html
├── README.md
│
├── css/
├── js/
├── pages/
│
├── api/
├── config/
├── database/
```
**Estrutura do Banco:**
-`categorias`: categorias dos produtos
-`usuarios`: dados dos clientes
-`produtos`: produtos co fk para usariios e categorias
-`pedidos`: pedidos com fk para usuarios e produtos
---

## ⚙️ Como Executar o Projeto
**VendaJá** 
### API + Banco de Dados 
**1 Configurar o banco de dados:**
 Importar 'database/vendaja.sql' no phpMyAdmin para criar o banco  com dados.

**2. Rodar a API:**
```bash
cd api
npm install
node server.js
```
**3.Testar:**
API rodando em 'http://localhost:3000'
** Rotas disponíveis:**
-`GET /`--> Status da API
-`GET` /produtos--> Lista todos os produtos do banco

### 🔹 Requisitos:

* XAMPP ou outro servidor local
* Navegador (Chrome, Edge, etc.)

### 🔹 Passos:

1. Clonar o repositório:

```
git clone <link-do-repositorio>
```

2. Colocar o projecto na pasta:

```
htdocs (XAMPP)
```

3. Iniciar o servidor Apache e MySQL

4. Aceder no navegador:

```
http://localhost/nome-do-projecto
```

---

## 👥 Equipa

* 👑 M1 — Estrutura base & Git
* 🔐 M2 — Autenticação
* 📦 M3 — Gestão de produtos
* 🛒 M4 — Loja (visualização)
* 💬 M5 — Contacto / mensagens
* 🎨 M6 — Design e UX
* 🗄️ M7 — Backend & Base de Dados

---

## 🔄 Fluxo do Sistema

1. Utilizador regista-se / faz login
2. Vendedor adiciona produtos
3. Produtos são exibidos na loja
4. Comprador visualiza e entra em contacto

### API + Banco de dados
**1. Configurar o banco:**
Importar 'database/vendaja.sql' no phpMyAdmin para criar o banco  com os dados

**2. Rodar a API:**
```bash
cd api
npm install
node server.js
---

## 📸 Demonstração

*(Adicionar prints do sistema aqui)*

---

## ⚠️ Observações

* Projeto académico
* Algumas funcionalidades podem ser simuladas
* Foco principal no aprendizado e prática

---

## 🧠 Conclusão

O **VendaJá** representa a implementação de um sistema de marketplace funcional, permitindo consolidar conhecimentos em desenvolvimento web, integração frontend-backend e trabalho colaborativo.

---

## 📌 Autor

Projeto desenvolvido por estudantes no âmbito da disciplina de Programação Web.

---

# 🔥 AGORA FAZ ISSO

👉 Cola isso no teu `README.md` no GitHub
👉 Adiciona prints depois
👉 Mete o link do repositório

---

# ⚡ SE QUISERES MELHORAR AINDA MAIS

Posso te dar:

👉 badges tipo profissional (build, status)
👉 versão em inglês
👉 README com imagens reais do vosso sistema
👉 ou versão estilo startup 😎

---


