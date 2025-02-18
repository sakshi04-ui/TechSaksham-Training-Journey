create database wit;

use wit;

create table Student(Id int primary key, Name varchar(255), Age int, Roll int );

show tables;

desc Student;

alter table Student change name first_name varchar(200);

desc Student;

alter table Student add column last_name varchar(200) after first_name;

drop table Student;

show tables;

create table student (first_name varchar(200),
last_name varchar(200),
age int,
roll int);

show tables;

desc student;

alter table student add column Id int primary key first;

desc student;

alter table student modify age int check(age<=20);

alter table student modify age int check(age<=20) not null;
alter table student rename to student_data;

desc student;
desc student_data;

alter table student_data drop column roll;
alter table student_data modify last_name int;

alter table student_data modify last_name varchar(200);

insert into student_data values
(1,'Sakshi','Bhandari',18);

insert into student_data values
(2,'Vaish','Chavan',14),(3,'Bhumi','Kasliwal',16),(4,'Siddhi','Agarkar',4),(5,'Saleha','Ansari',13),(6,'Jiya','Boru',10),(7,'Sami','Shiru',9),(8,'Sweety','Bamb',8),(9,'Aadi','Gugale',3),(10,'Yash','Bhandu',16);

select * from student_data;

insert into student_data(Id,first_name,age) values(11,'Abc',2);

update student_data set last_name = "zzzzz" where Id = 11;

truncate table student_data;

