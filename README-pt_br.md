# API de Gerenciamento de Tarefas
[English (US)](./README.md)

Uma API REST para gerenciar tarefas (Criar, Ler, Atualizar, Deletar), construída com Java e o framework Spring Boot. Este projeto é uma demonstração de práticas modernas de desenvolvimento backend, incluindo arquitetura em camadas, princípios RESTful e integração com banco de dados.

---

## Tecnologias Utilizadas

* **Java 24:** A linguagem de programação principal.
* **Spring Boot 3:** O framework principal para construir o servidor web e gerenciar os componentes.
* **Spring Data JPA:** Para interação com o banco de dados e mapeamento objeto-relacional (ORM).
* **Banco de Dados H2:** Um banco de dados em memória para desenvolvimento e testes.
* **Gradle:** A ferramenta para build do projeto e gerenciamento de dependências.
* **Docker:** Para containerizar a aplicação e facilitar o deploy.

---

## Como Executar

### Usando Docker

1.  **Pré-requisito:** Docker precisa estar instalado.

2.  **Construa e execute o container:**
    ```bash
    # Constrói a imagem Docker
    docker build -t task-api .

    # Executa a aplicação dentro de um container
    docker run -p 8080:8080 task-api
    ```
    A API estará disponível em `http://localhost:8080`.

### Usando Gradle

#### **Pré-requisitos:**
* Java Development Kit (JDK) 17 ou superior.
* Gradle instalado (ou use o Gradle Wrapper incluído no projeto).

#### **Execute a aplicação:**
1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/lealdavi/Task-API.git](https://github.com/lealdavi/Task-API.git)
    cd Task-API
    ```

2.  **Construa a aplicação:**
    ```bash
    ./gradlew build
    ```

3.  **Execute a aplicação:**
    ```bash
    ./gradlew bootRun
    ```
    A API estará disponível em `http://localhost:8080`.

---

## Endpoints da API

A URL base para todos os endpoints é `/api/tasks`.

| Método | Endpoint             | Descrição                                   |
| :----- | :------------------- | :------------------------------------------ |
| `GET`    | `/`                  | Recupera a lista de todas as tarefas.       |
| `GET`    | `/{id}`              | Recupera uma única tarefa pelo seu ID.      |
| `POST`   | `/`                  | Cria uma nova tarefa.                       |
| `PUT`    | `/{id}`              | Atualiza uma tarefa existente pelo seu ID.  |
| `DELETE` | `/{id}`              | Deleta uma tarefa pelo seu ID.              |
