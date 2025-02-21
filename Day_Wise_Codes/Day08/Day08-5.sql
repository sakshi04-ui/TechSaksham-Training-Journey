-- Learning Nested subquery and subquery
 use wit;
 
  alter table emp change bid salary float;
  
update emp set salary= 40000;


update emp set salary= 30000 where eid=2;


update emp set salary= 36000 where eid=3;


update emp set salary= 50000 where eid=4;


update emp set salary= 55000 where eid=5;


update emp set salary= 58000 where eid=6;


update emp set salary= 68000 where eid=7;


update emp set salary= 38000 where eid=8;

-- --Finding maximum salary
select * from emp where salary = (select max(salary) from emp); 

-- Finding second maximum salary
 select * from emp where salary = (select max(salary) from emp where salary <(select max(salary) from emp));
 
-- Any/in/all  
select * from emp where salary > any (select salary from emp where salary > (select avg(salary) from emp));
 
select * from emp where salary  in (select salary from emp where salary > (select avg(salary) from emp));

select * from emp where salary > all (select salary from emp where salary > (select avg(salary) from emp));

-- Second smallest salary
select * from emp where salary = (select min(salary) from emp where salary >(select min(salary) from emp));

-- Smallest salary
select * from emp where salary = (select min(salary) from emp);
 