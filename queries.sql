INSERT INTO users (email, name, password, created_at) 
VALUES ('a.hachunc@gmail.com', 'Артём', '1234', '2021-10-17 22:57:12'),
('htmlacademy@gmail.com','Кот','54321','2021-10-17 22:57:12');

INSERT INTO projects (title) VALUES ('Входящие'), ('Учеба'), ('Работа'), ('Домашние дела'), ('Авто');

INSERT INTO tasks (title, created_at, updated_at, status)
VALUES ('Собеседование в IT компании', '2021-08-03 23:59:00', '2021-08-03 23:59:00', 0),
       ('Выполнить тестовое задание', '2021-08-03 23:59:00', '2021-08-03 23:59:00', 0),
       ('Сделать задание первого раздела', '2021-08-03 23:59:00', '2021-08-03 23:59:00', 0),
       ('Встреча с другом', '2021-08-03 23:59:00', '2021-08-03 23:59:00', 0),
       ('Купить корм для кота', '2021-08-03 23:59:00', '2021-08-03 23:59:00', 0),
       ('Заказать пиццу', '2021-08-03 23:59:00', '2021-08-03 23:59:00', 0);

SELECT id, title, user_id, created_at, updated_at 
FROM projects WHERE id = 1;
SELECT id, title, deadline_date, project_id, file_url, created_at, updated_at 
FROM tasks WHERE title = 3;
UPDATE tasks SET status='1' WHERE id = 1;
UPDATE tasks SET title = 'Сделать задачу' WHERE id = 1;