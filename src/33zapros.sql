create table groups
(
    id         serial primary key,
    group_name varchar
);
create table courses
(
    id          serial primary key,
    course_name varchar,
    start_date  date,
    group_id    int references groups (id)
);
create table students
(
    id            serial primary key,
    first_name    varchar,
    last_name     varchar,
    gender        varchar,
    email         varchar,
    date_of_birth date,
    groups_id     int references groups (id)

);
create table mentors
(
    id             serial primary key,
    first_name     varchar,
    last_name      varchar,
    gender         varchar,
    email          varchar,
    specialization varchar,
    experience     int,
    course_id      int references courses (id)
);
create table lessons
(
    id          serial primary key,
    lesson_name varchar,
    course_id   int references courses (id)
);
insert into groups(group_name)
values ('Java 9'),
       ('JS 9'),
       ('Java 12'),
       ('JS 12'),
       ('Java 13'),
       ('JS 13');
insert into courses (course_name, start_date, group_id)
values ('Java 9 core', '2023-01-03', 1),
       ('JS 9 core', '2023-01-03', 2),
       ('Java 12 core', '2023-10-03', 3),
       ('JS 12 core', '2023-10-03', 4),
       ('Java 13 core', '2024-01-08', 5),
       ('JS 13 core', '2024-01-08', 6),
       ('Technical English', '2024-01-08', 1),
       ('Python', '2024-01-08', 6);
insert into lessons(lesson_name, course_id)
values ('Loops', 1),
       ('HTML', 2),
       ('Methods', 3),
       ('CSS', 4),
       ('Collections', 5),
       ('React', 6);
insert into mentors (first_name, last_name, gender, email, specialization, experience, course_id)
values ('Datka', 'Mamatzhanova', 'Female', 'datka@gmail.com', 'java', 2, 1),
       ('Ulan', 'Kubanychbekov', 'Male', 'ulan@gmail.com', 'java', 3, 3),
       ('Aizat', 'Duisheeva', 'Female', 'aizat@gmail.com', 'java', 1, 5),
       ('Elizar', 'Aitbek uulu', 'Male', 'elizar@gmail.com', 'js', 1, 2),
       ('Aziat', 'Abdimalikov', 'Male', 'aziat@gmail.com', 'js', 1, 4),
       ('Alisher', 'Jumanov', 'Male', 'alisher@gmail.com', 'js', 1, 6);

insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (1, 'Knox', 'Jacquot', 'kjacquot0@addthis.com', 'Male', '2004-04-12', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (2, 'Dewain', 'Hunt', 'dhunt1@trellian.com', 'Male', '2003-04-13', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (3, 'Jarrett', 'Iianon', 'jiianon2@chronoengine.com', 'Male', '2005-05-05', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (4, 'Merry', 'Niezen', 'mniezen3@canalblog.com', 'Male', '1999-04-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (5, 'Nollie', 'Pellingar', 'npellingar4@usgs.gov', 'Female', '2003-05-06', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (6, 'Eveleen', 'Moukes', 'emoukes5@amazon.co.uk', 'Female', '1996-03-03', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (7, 'Nollie', 'Becker', 'nbecker6@is.gd', 'Male', '1994-02-04', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (8, 'Nadine', 'Robilart', 'nrobilart7@walmart.com', 'Female', '2000-06-06', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (9, 'Dex', 'Prugel', 'dprugel8@arizona.edu', 'Male', '2001-03-04', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (10, 'Phyllis', 'Baroche', 'pbaroche9@state.gov', 'Female', '2004-04-04', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (11, 'Bernadette', 'Dulson', 'bdulsona@altervista.org', 'Female', '2004-04-04', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (12, 'Earlie', 'Pledge', 'epledgeb@jimdo.com', 'Male', '1993-12-04', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (13, 'Luigi', 'Standish', 'lstandishc@army.mil', 'Male', '1998-11-13', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (14, 'Cody', 'McLeoid', 'cmcleoidd@yahoo.com', 'Male', '2000-10-10', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (15, 'Heall', 'Dolligon', 'hdolligone@squidoo.com', 'Male', '2003-09-09', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (16, 'Isiahi', 'Somerscales', 'isomerscalesf@eepurl.com', 'Male', '1995-05-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (17, 'Matthieu', 'Spolton', 'mspoltong@so-net.ne.jp', 'Male', '1995-03-30', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (18, 'Esme', 'Brockway', 'ebrockwayh@hexun.com', 'Female', '1997-08-08', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (19, 'Erroll', 'Cutforth', 'ecutforthi@wisc.edu', 'Male', '2002-03-30', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (20, 'Gordon', 'Thieme', 'gthiemej@japanpost.jp', 'Male', '1994-04-04', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (21, 'Dom', 'Arnecke', 'darneckek@google.fr', 'Male', '2000-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (22, 'Raven', 'Yarrall', 'ryarralll@vimeo.com', 'Female', '2009-05-05', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (23, 'Emery', 'McSporon', 'emcsporonm@reverbnation.com', 'Male', '1990-12-20', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (24, 'Der', 'Caville', 'dcavillen@csmonitor.com', 'Male', '2003-03-20', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (25, 'Erich', 'Lorroway', 'elorrowayo@bizjournals.com', 'Male', '2000-08-07', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (26, 'Edan', 'Brayne', 'ebraynep@prweb.com', 'Male', '2008-12-23', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (27, 'Garald', 'Puddle', 'gpuddleq@taobao.com', 'Male', '1990-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (28, 'Orelee', 'Hoggan', 'ohogganr@e-recht24.de', 'Female', '1999-03-29', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (29, 'Dion', 'Kepp', 'dkepps@boston.com', 'Female', '2000-12-13', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, groups_id)
values (30, 'Winna', 'Ganders', 'wganderst@artisteer.com', 'Female', '2001-11-11', 6);

------------------------------------------------------------------------------------------- TODO 1
select * from groups; -- было вывести все записи таблицы groups
--TODO 2  -----------------------------------------------------------------------------------------
select count(*)  as count_of_groups from groups; -- количество групп тоесть их записей
-- TODO 3 -----------------------------------------------------------------------------------------
select  group_name, course_name from groups left join  courses c  on  groups.id = c.group_id;-- вывел группы и их курсы
--TODO 4  -----------------------------------------------------------------------------------------
select * from  courses  join  groups on  groups.id = courses.group_id  where start_date between '2020-01-01' and '2023-03-03'; --выводит курсы которые начались  с2020 по 2023
--TODO 5  -----------------------------------------------------------------------------------------
select first_name,date_of_birth, group_name from students inner join groups on students.groups_id = groups.id where date_of_birth between '1980-01-01' and  '2004-12-12'; --выводит имена дату рождения студентов которые родились с 1980 по 2004
--TODO 6  -----------------------------------------------------------------------------------------
select concat(students.first_name,students.last_name) as full_name, age(current_date,students.date_of_birth), students.email,groups.group_name from students inner join  groups on students.groups_id=groups.id where groups.id=3; -- выведось полное имя возраст почта и имя группы и где их айди равны 3
--TODO 7  -----------------------------------------------------------------------------------------
select  * from courses join groups on courses.group_id = groups.id where group_name = 'Java 13'; --выводит студентов с айди с названием группы датой начала айди группы



--TODO 8 -------------------------------------------------------------------------------------------
select groups.group_name,count(students.id) from groups left join students on groups.id = students.groups_id group by groups.group_name; --выводит кол-во студентов во всех группах
--TODO 9 -------------------------------------------------------------------------------------------
select groups.group_name, count(students.id) from groups  join students on groups.id = students.groups_id group by  groups.group_name having count(students.id) > 4; -- тоже самое что и с предедущим но выводит только те у которых больше 4 студентиков
--TODO 10 -------------------------------------------------------------------------------------------
select students.id, students.first_name, students.gender, groups.group_name from students join groups on students.groups_id = groups.id where groups.id = 4 order by students.first_name desc; --проссихолит сортировка групп где у студентов айди равна 4 и еще по убыванию

-- TODO ЗАПРОСЫ COURSES
-- TODO 1👇 --- Отобразить все курсы
SELECT * FROM courses;

-- TODO 2👇 --- Отобразить все уроки курса 'Technical English'
SELECT * FROM lessons WHERE course_id = (SELECT id FROM courses WHERE lesson_name = 'Technical English');

-- TODO 3👇 --- Вывести количество всех студентов в курсе с id = 4
SELECT COUNT(*) AS student_count FROM students WHERE students.id = 4;

-- TODO 4👇 --- Отобразить имя, адрес электронной почты, специализацию наставника и название курса, где id курса = 2
SELECT mentors.first_name, mentors.email, mentors.specialization, course_name AS course_name
FROM mentors
         JOIN courses ON mentors.course_id = courses.id
WHERE courses.id = 2;

-- TODO 5👇 --- Посчитать количество наставников в каждом курсе
SELECT course_id, COUNT(*) AS mentor_count FROM mentors GROUP BY course_id;

-- TODO 6👇 --- Группировать и посчитать наставников в каждом курсе, выводить только те курсы, где более 2 наставников
SELECT course_id, COUNT(*) AS mentor_count FROM mentors GROUP BY course_id HAVING COUNT(*) > 2;

-- TODO 7👇 --- Отобразить название, дату начала курса и полное имя наставника для всех курсов, которые начались с 2011 по 2023 годы
SELECT course_name AS course_name, courses.start_date, first_name AS mentor_name
FROM courses
         JOIN mentors ON courses.id = mentors.course_id
WHERE courses.start_date BETWEEN '2011-01-01' AND '2023-12-31';

-- TODO 8👇 --- Отобразить имя, адрес электронной почты и возраст студентов курса 'Java 13 core'
SELECT students.name AS student_name, students.email AS student_email, students.age AS student_age
FROM students JOIN courses ON students.id = courses.id WHERE courses.name = 'Java 13 core';

-- TODO 9👇 --- Найти курс, где нет ни одного наставника
SELECT * FROM courses WHERE id NOT IN (SELECT DISTINCT course_id FROM mentors);

-- TODO 10👇 --- Отобразить курсы, где нет ни одного урока
SELECT * FROM courses WHERE id NOT IN (SELECT DISTINCT course_id FROM lessons);

-- TODO 11👇 --- Отобразить курсы, где нет ни одного студента
SELECT * FROM courses WHERE id NOT IN (SELECT DISTINCT courses.id FROM students);

--TODO ЗАПРОСЫ СТУДЕНТОВ

--TODO 1👇 ---. Вывести общее количество студентов
SELECT COUNT(*) AS total_students FROM students;

--TODO 2👇 --- Вывести имя, почту и пол студента, айди группы которого равна 2
SELECT students.first_name, students.email, students.gender FROM students WHERE students.groups_id = 2;

--TODO 3👇 ---. Вывести группу студента, айди которого равна 4
SELECT groups.group_name FROM students  JOIN groups ON students.groups_id = groups.id WHERE students.id = 4;

--TODO 4👇 — Сгруппируйте студентов по gender и выведите общее количество gender
SELECT students.gender, COUNT(*) AS total_by_gender FROM students GROUP BY students.gender;

--TODO 5👇 — Найдите студента с айди 8 и обновите его данные
UPDATE students SET first_name = 'NewFirstName', last_name = 'NewLastName', email = 'newemail@example.com', gender = 'Male', date_of_birth = '2003-02-20' WHERE students.id = 8;

--TODO 6👇 — Найдите самого старшего студента курса, айди которого равна 5
SELECT students.first_name, students.last_name, students.date_of_birth FROM students JOIN courses ON students.groups_id = courses.group_id WHERE courses.id = 5 ORDER BY students.date_of_birth limit 1;

--TODO 7👇 — Добавьте уникальное ограничение на столбец email в таблице students
ALTER TABLE students ADD CONSTRAINT unique_email UNIQUE (email);

--TODO 8👇 — Добавьте check constraint gender в столбец таблицы mentors
ALTER TABLE mentors ADD CONSTRAINT check_gender CHECK (gender IN ('Male', 'Female'));

--TODO 9👇 — Добавьте check constraint gender в столбец таблицы students
ALTER TABLE students ADD CONSTRAINT check_gender CHECK (gender IN ('Male', 'Female'));

--TODO ЗАПРОСЫ МЕНТОРОВ


-- TODO 1👇 — Вывести имя, почту и специализацию ментора группы 'Java-9'
SELECT mentors.first_name, mentors.email, mentors.specialization
FROM mentors
         JOIN courses ON mentors.course_id = courses.id
         JOIN groups ON courses.group_id = groups.id
WHERE groups.group_name = 'Java 9';

-- TODO 3👇 — Вывести всех менторов, чей опыт превышает 1 год
SELECT * FROM mentors WHERE experience > 1;

-- TODO 4👇 — Вывести ментора у которого нет курса
SELECT * FROM mentors WHERE course_id IS NULL;

-- TODO 5👇 — Вывести айди, имя ментора и его студентов
SELECT mentors.id, mentors.first_name, students.first_name
FROM mentors
         JOIN courses ON mentors.course_id = courses.id
         JOIN students ON students.groups_id = courses.group_id;

-- TODO 6👇 — Посчитать сколько студентов у каждого ментора, и вывести полное имя ментора и количество его студентов
SELECT mentors.first_name || ' ' || mentors.last_name AS full_name, COUNT(students.id) AS student_count
FROM mentors
         JOIN courses ON mentors.course_id = courses.id
         JOIN students ON students.groups_id = courses.group_id
GROUP BY mentors.id;

-- TODO 7👇 — Вывести ментора у которого нет студентов
SELECT mentors.first_name, mentors.last_name
FROM mentors
         LEFT JOIN courses ON mentors.course_id = courses.id
         LEFT JOIN students ON students.groups_id = courses.group_id
WHERE students.id IS NULL;

-- TODO 8👇 — Вывести ментора у которого студентов больше чем 2
SELECT mentors.first_name, mentors.last_name
FROM mentors
         JOIN courses ON mentors.course_id = courses.id
         JOIN students ON students.groups_id = courses.group_id
GROUP BY mentors.id
HAVING COUNT(students.id) > 2;

-- TODO 9👇 — Вывести курсы ментора с айди 5
SELECT courses.course_name
FROM mentors
         JOIN courses ON mentors.course_id = courses.id
WHERE mentors.id = 5;

-- TODO 10👇 — Вывести все уроки ментора, айди которого равен 5
SELECT lessons.lesson_name
FROM mentors
         JOIN courses ON mentors.course_id = courses.id
         JOIN lessons ON lessons.course_id = courses.id
WHERE mentors.id = 5;

--TODO АПРОСЫ УРОКОВ

-- TODO 1👇 — Вывести все уроки
SELECT * FROM lessons;

-- TODO 2👇 — Получить все уроки студента, айди которого равен 2
SELECT lessons.lesson_name
FROM students
         JOIN groups ON students.groups_id = groups.id
         JOIN courses ON groups.id = courses.group_id
         JOIN lessons ON lessons.course_id = courses.id
WHERE students.id = 2;

-- TODO 3👇 — Посчитать уроки каждой группы и вывести название группы и количество уроков, где количество уроков больше чем 2
SELECT groups.group_name, COUNT(lessons.id) AS lesson_count
FROM groups
         JOIN courses ON groups.id = courses.group_id
         JOIN lessons ON lessons.course_id = courses.id
GROUP BY groups.id
HAVING COUNT(lessons.id) > 2;

-- TODO 4👇 — Отсортировать уроки студента по названию, где айди студента равна 7
SELECT lessons.lesson_name
FROM students
         JOIN groups ON students.groups_id = groups.id
         JOIN courses ON groups.id = courses.group_id
         JOIN lessons ON lessons.course_id = courses.id
WHERE students.id = 7
ORDER BY lessons.lesson_name;

-- TODO 5👇 — Получить все уроки курса, где название курса 'Python kids'
SELECT lessons.lesson_name
FROM courses
         JOIN lessons ON lessons.course_id = courses.id
WHERE courses.course_name = 'Python kids';

-- TODO 6👇 — Получить все уроки ментора, айди которого равен 5
SELECT lessons.lesson_name
FROM mentors
         JOIN courses ON mentors.course_id = courses.id
         JOIN lessons ON lessons.course_id = courses.id
WHERE mentors.id = 5;

























