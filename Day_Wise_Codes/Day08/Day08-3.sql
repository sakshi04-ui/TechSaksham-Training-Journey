use wit;
select * from emp;

start transaction;

delete from emp where eid in (2,3);

select * from emp;

rollback;

delete from emp where eid in (2,3);

commit;

select * from emp;

rollback;

select * from emp;

start transaction ;

insert into emp values(1,'abc','developer',6);

savepoint a;

insert into emp values(2,'abc','developer',6);

savepoint b;

insert into emp values(3,'abc','developer',6);

savepoint c;

 select * from emp;

rollback to savepoint c;

select * from emp;

rollback to savepoint b;

select * from emp;
