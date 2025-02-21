create table sub(Id int primary key auto_increment, sname varchar(200), tid int);

insert into sub values (1,'English',6),(2,'Hindi',7),(3,'Physics',8),(4,'Chemistry',9),(5,'Biology',10),(6,'Sakshi',null),(7,'Saransh',null),(8,'Shreya',null),(9,'Shravani',null),(10,'Avira',null);

select a.sname as subject, b.sname as teacher from sub as a, sub as b WHERE a.tid = b.id;

-- we dont need to write self join instead we just use where command-- 
