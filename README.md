# Bank API Project
Java RESTful API created for practicing.

## Classes Diagram

```mermaid
classDiagram
  class User {
    -String name
    -Account account
    -Feature[] features
    -Card card
    -News[] news
  }

  class Account {
    -String number
    -String agency
    -Number balance
    -Number limit
  }

  class Feature {
    -String icon
    -String description
  }

  class Card {
    -String number
    -Number limit
  }

  class News {
    -String icon
    -String description
  }

  User "1" *-- "1" Account
  User "1" *-- "1..N" Feature
  User "1" *-- "1" Card
  User "1" *-- "1..N" News
```

## Docker Deployment Instructions

### Prerequisites

- Docker installed on your machine
- Docker Compose installed on your machine

### Build and Run Docker Containers

1. Clone the repository:
   ```sh
   git clone https://github.com/aldair-gc/bank-dev.git
   cd bank-dev
   ```

2. Build and run the Docker containers:
   ```sh
   docker-compose up --build
   ```

### Configure Environment Variables for PostgreSQL

The `docker-compose.yml` file sets the following environment variables for the PostgreSQL service:

- `POSTGRES_DB=bank_dev`
- `POSTGRES_USER=bank_dev_user`
- `POSTGRES_PASSWORD=bank_dev_password`

The Java application service uses the following environment variables to connect to the PostgreSQL database:

- `PGHOST=database`
- `PGPORT=5432`
- `PGDATABASE=bank_dev`
- `PGUSER=bank_dev_user`
- `PGPASSWORD=bank_dev_password`

### Access the Application

Once the Docker containers are up and running, you can access the application at:
```
http://localhost:8080
```
