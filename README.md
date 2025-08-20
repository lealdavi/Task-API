# Task Management API
[Português (BR)](./README.pt-br.md)


A REST API for managing tasks (Create, Read, Update, Delete), built with Java and the Spring Boot framework. This project is a demonstration of modern backend development practices, including a layered architecture, RESTful principles, and database integration.

---

## Technologies Used

* **Java 24:** The core programming language.
* **Spring Boot 3:** The main application framework for building the web server and managing components.
* **Spring Data JPA:** For database interaction and object-relational mapping (ORM).
* **H2 Database:** An in-memory database for development and testing.
* **Gradle:** The project build and dependency management tool.
* **Docker:** For containerizing the application for easy deployment.

---

## How to Run

### Using Docker
#### **Prerequisite:** 
Docker must be installed

#### **Build and run the container:**
    ```bash
    # Build the Docker image
    docker build -t task-api .

    # Run the application inside a container
    docker run -p 8080:8080 task-api
    ```
    The API will be available at `http://localhost:8080`.
### Using Gradle

#### **Prerequisites:**
* Java Development Kit (JDK) 17 or later.
* Gradle installed (or use the included Gradle Wrapper).

#### **Steps**

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/lealdavi/Task-API.git](https://github.com/lealdavi/Task-API.git)
    cd Task-API
    ```

2.  **Build the application:**
    ```bash
    ./gradlew build
    ```

3.  **Run the application:**
    ```bash
    ./gradlew bootRun
    ```
    The API will be available at `http://localhost:8080`.

---

## API Endpoints

The base URL for all endpoints is `/api/tasks`.

| Method | Endpoint             | Description                                   |
| :----- | :------------------- | :-------------------------------------------- |
| `GET`    | `/`                  | Retrieves a list of all tasks.                |
| `GET`    | `/{id}`              | Retrieves a single task by its ID.            |
| `POST`   | `/`                  | Creates a new task.                           |
| `PUT`    | `/{id}`              | Updates an existing task by its ID.           |
| `DELETE` | `/{id}`              | Deletes a task by its ID.                     |
