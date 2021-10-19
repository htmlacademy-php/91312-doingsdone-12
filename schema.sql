CREATE DATABASE doingsdone_db
    DEFAULT CHARACTER SET utf8
    DEFAULT COLLATE utf8_general_ci;
USE doingsdone_db;
CREATE TABLE users (
    CREATE INDEX (128) uk_email (email),
    name VARCHAR(128) NOT NULL,
    email VARCHAR(128) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now()
);
CREATE TABLE projects (
    id  INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL UNIQUE,
    user_id INT NOT NULL,
    -- Here, I am trying to enforce point 5.1 "Связи: автор: пользователь, создавший проект;"
    FOREIGN KEY (user_id) REFERENCES users(name),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now()
);
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    -- Here, I am trying to enforce point 5.2 from SRS (Связи:автор: пользователь, создавший задачу;)
    FOREIGN KEY (user_id) REFERENCES users(name),
    deadline_date TIMESTAMP,
    status BIT(1) DEFAULT 0 NOT NULL,
    project_id INT NOT NULL,
    -- Here, I am trying to enforce point 5.2 from SRS (проект: проект, которому принадлежит задача.)
    FOREIGN KEY (project_id) REFERENCES projects(title),
    file_url VARCHAR(2048) NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE now()
);
