CREATE DATABASE doingsdone_db
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;

USE doingsdone_db;

CREATE TABLE users (
    CREATE UNIQUE INDEX uk_email (email),
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now()
);

CREATE TABLE projects (
    id  INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL UNIQUE,
    user_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now()
);

CREATE TABLE tasks (
    email VARCHAR(100) NOT NULL,
    CREATE UNIQUE INDEX uk_email (email),
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    date_add TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    date_deadline TIMESTAMP,
    status BIT(1) DEFAULT 0 NOT NULL,
    project_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now()

);

CREATE INDEX search_by_name
ON users (name);
CREATE INDEX search_by_projects
ON projects (title);
CREATE INDEX search_by_tasks
ON tasks (title);