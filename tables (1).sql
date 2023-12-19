DROP TABLE IF EXISTS 'student_marks';
DROP TABLE IF EXISTS 'student';
DROP TABLE IF EXISTS 'group';
CREATE TABLE student_marks (
student_id INTEGER REFERENCES 'student' (id) NOT NULL,
math_mark_average FLOAT,
physics_mark_average FLOAT,
python_mark_average FLOAT);
INSERT INTO 'student_marks' VALUES(1,5,5,5);
INSERT INTO 'student_marks' VALUES(16,5,5,5);
INSERT INTO 'student_marks' VALUES(19,5,5,5);
INSERT INTO 'student_marks' VALUES(31,2,2,2);
CREATE TABLE student (
id INTEGER PRIMARY KEY ,
name VARCHAR(255),
group_id INTEGER REFERENCES 'group' (id) NOT NULL);
INSERT INTO 'student' VALUES(1,'Федос',6);
INSERT INTO 'student' VALUES(16,'Я',6);
INSERT INTO 'student' VALUES(19,'друг из бин2308',8);
INSERT INTO 'student' VALUES(31,'шошкин',6);
CREATE TABLE 'group' (
id INTEGER PRIMARY KEY,
name VARCHAR(255) NOT NULL,
description VARCHAR(255));
INSERT INTO 'group' VALUES(6,'БВТ2306','Информатика и вычислительная техника');
INSERT INTO 'group' VALUES(8,'БИН2308','Системы связи и коммуникаций (СиСС)');
