
# CRUD Spring Boot Application

This project is a simple CRUD (Create, Read, Update, Delete) application built with Spring Boot. It uses GraalVM for native image compilation and includes Docker Compose configurations to run Prometheus and Grafana for monitoring purposes.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup and Installation](#setup-and-installation)
    - [GraalVM Setup](#graalvm-setup)
    - [Docker Setup](#docker-setup)
- [Running the Application](#running-the-application)
    - [Build and Run with GraalVM](#build-and-run-with-graalvm)

- [Monitoring with Prometheus and Grafana](#monitoring-with-prometheus-and-grafana)
- [Endpoints](#endpoints)
- [Contributing](#contributing)


## Prerequisites

- JDK 11 or higher
- GraalVM
- Docker and Docker Compose

## Setup and Installation

### GraalVM Setup

1. Download and install [GraalVM](https://www.graalvm.org/docs/getting-started/).
2. Install the native-image tool:

    ```sh
    gu install native-image
    ```

### Docker Setup

Ensure Docker and Docker Compose are installed. You can download them from [Docker's official site](https://www.docker.com/get-started).

## Running the Application

### Build and Run with GraalVM

1. Clone the repository:

    ```sh
    git clone https://github.com/NashTech-Labs/graalVm-crud-springboot.git
    cd graalVm-crud-springboot
    ```

2. Build the native image:

    ```sh
    ./mvnw package -Pnative
    ```

3. Run the application:

    ```sh
    ./target/crud-springboot-app.exe
    ```

### Run with Docker Compose

1. Build the Docker image:

    ```sh
    docker build -t crud-springboot-app .
    ```

2. Run the Docker Compose setup:

    ```sh
    docker-compose up -d
    ```

## Monitoring with Prometheus and Grafana

The Docker Compose file includes configurations for Prometheus and Grafana. These tools will allow you to monitor the application's performance and metrics.

Run the Docker Compose setup:

    ```sh
    docker-compose up -d
    ```
1. Access Grafana at `http://localhost:3000`.
2. Login with the default credentials (`admin` / `admin`).
3. Add Prometheus as a data source:
    - URL: `http://prometheus:9090`
4. Import dashboards to visualize the application's metrics.

## Endpoints

- `GET /api/items` - Retrieve all items
- `GET /api/items/{id}` - Retrieve an item by ID
- `POST /api/items` - Create a new item
- `PUT /api/items/{id}` - Update an existing item
- `DELETE /api/items/{id}` - Delete an item

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any changes.



