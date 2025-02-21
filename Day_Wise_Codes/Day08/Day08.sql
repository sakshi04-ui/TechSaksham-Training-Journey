CREATE TABLE emp (
    eid INT PRIMARY KEY,
    ename VARCHAR(20),
    designation VARCHAR(200),
    bid INT
);

-- --Inserting Values into table--  
insert into emp values (1,'John','dev',6), (2,'Abc','dev',6),(3,'rocky','dev',6),(4,'bhai','dev',6), (5,'rahul','tester',8), (6,'xyz','d-manager',9), (7,'shelar','tester',8), (8,'tom','t-manager',9),(9,'akshay','CEO',null);

select * from emp;

select a.ename, b.ename from emp as a, emp as b where a.eid = b.bid;

select a.ename as employee, a.designation ,b.ename as manager,b.designation from emp as a, emp as b WHERE a.bid = b.eid;

 
 