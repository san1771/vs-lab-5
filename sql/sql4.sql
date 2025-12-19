CREATE TABLE cathedrals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(2048) NOT NULL,
    chief VARCHAR(512) NOT NULL
);

ALERT TABLE groups
ADD COLUMN cathedral_id INT;

INSERT INTO cathedrals (name, chief)
VALUES ('Кафедра информационных технологий', 'Васильева Наталья Васильевна'),
       ('Математическая экономика и прикладная информатика', 'Матвеева Нюргуяна Николаевна');

SELECT * FROM cathedrals;

UPDATE groups
SET cathedral_id = 1
WHERE groups.id = 1;
UPDATE groups
SET cathedral_id = 1
WHERE groups.id = 2;
UPDATE groups
SET cathedral_id = 1
WHERE groups.id = 3;
UPDATE groups
SET cathedral_id = 2
WHERE groups.id = 4;

SELECT * FROM groups
WHERE groups.cathedral_id = 1;