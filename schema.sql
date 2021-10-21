DROP DATABASE IF EXISTS doingsdone_db;
CREATE DATABASE doingsdone_db
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
USE doingsdone_db;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    password CHAR(60) NOT NULL,
    created_at DATETIME,
    updated_at DATETIME
);
CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    created_at DATETIME,
    updated_at DATETIME
);
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(1024) NOT NULL,
    deadline_date DATETIME,
    status BIT(1) DEFAULT 0 NOT NULL,
    project_id INT NULL,
    FOREIGN KEY (project_id) REFERENCES projects(id),
    file_url VARCHAR(2048) NULL,
    created_at DATETIME,
    updated_at DATETIME
);
