-- Использовался диалект PostgreSQL

DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS parents;

CREATE TABLE parents (
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL,
    created_at TIMESTAMP NOT NULL
);

CREATE TABLE students (
    id INTEGER NOT NULL PRIMARY KEY,
    name VARCHAR NOT NULL,
    created_at TIMESTAMP NOT NULL,
    parent_id INTEGER REFERENCES parents(id)
);

-- INSERT into parents (id, name, created_at) VALUES (1, 'Марина', '2001-10-12');
-- INSERT into parents (id, name, created_at) VALUES (2, 'Николай', '2002-10-12');
-- INSERT into parents (id, name, created_at) VALUES (3, 'Марина', '2003-10-12');
-- INSERT into parents (id, name, created_at) VALUES (4, 'Марина', '2004-10-12');
-- INSERT into parents (id, name, created_at) VALUES (5, 'Сергей', '2005-10-12');

-- INSERT into students (id, name, created_at, parent_id) VALUES (1, 'Иван', '2001-05-11', 1);
-- INSERT into students (id, name, created_at, parent_id) VALUES (2, 'Настя', '3002-11-10', 1);
-- INSERT into students (id, name, created_at, parent_id) VALUES (3, 'Валера', '3003-11-10', 3);
-- INSERT into students (id, name, created_at, parent_id) VALUES (4, 'Иван', '3004-11-10', 4);
-- INSERT into students (id, name, created_at) VALUES (5, 'Стас', '3005-11-10');

-- 8.a
SELECT COUNT(*)
    FROM students;

-- 8.b
SELECT COUNT(*)
    FROM students
        WHERE name = 'Иван';

-- 8.c
SELECT COUNT(*)
    FROM students
        WHERE created_at > '2020-01-09';
        
-- 9.a
SELECT COUNT(*)
    FROM students
        WHERE parent_id IS NOT NULL;

-- 9.b
SELECT COUNT(*)
    FROM students LEFT JOIN parents on students.parent_id = parents.id
        WHERE parents.name = 'Марина'
        
-- 9.c
SELECT COUNT(*)
    FROM students
        WHERE parent_id IS NULL;