show databases;
create database wit;

use wit;

create table user(uid int primary key auto_increment, uname varchar(200) not null);
create table product(pid int primary key auto_increment ,ppname varchar(200) , pprice float);
CREATE TABLE cart (cid INT PRIMARY KEY AUTO_INCREMENT, pid INT, uid INT, FOREIGN KEY (pid) REFERENCES product(pid) ON DELETE CASCADE ON UPDATE CASCADE, FOREIGN KEY (uid) REFERENCES user(uid) );
create table payment(payid int primary key auto_increment , amount float , pid int , uid int , foreign key(pid) references product(pid), foreign key(uid) references user(uid));
create table shaddress(aid int primary key auto_increment, full_address varchar(255), uid int, foreign key(uid) references user(uid));
create table orderr(oid int primary key auto_increment, payid int , pid int , uid int, aid int, foreign key(payid) references payment(payid), foreign key(pid) references product(pid) , foreign key(uid) references user(uid), foreign key(aid) references shaddress(aid));
insert into user values(400, 'user1'),(401,'user2'),(402,'user3'),(403,'user4');
insert into product values (1,'laptop',66000), (2,'iphone16',125000),(3,'headphones',2000),(4,'canon-camera',100000);
insert into cart values(201,3,403);
select * from user inner join cart on user.uid = cart.uid;
select * from user inner join cart on user.uid = cart.uid inner join product on cart.pid = product.pid;
select user.uid, user.uname , product.ppname , product.pprice from user inner join cart on user.uid = cart.uid inner join product on cart.pid = product.pid;
insert into shaddress values(501,'wit solapur',401);
insert into payment values(901,66500,1,401);
insert into orderr values(301,901,1,401,501);
select * from user inner join payment on user.uid = payment.uid;
select * from user inner join payment on user.uid = payment.uid inner join product on product.pid = payment.pid;
select * from user inner join payment on user.uid = payment.uid inner join product on product.pid = payment.pid inner join orderr on orderr.payid = payment.payid;
select * from user inner join payment on user.uid = payment.uid inner join product on product.pid = payment.pid inner join orderr on orderr.payid = payment.payid inner join shaddress on orderr.aid = shaddress.aid;

select * from product left join payment on product.pid = payment.pid;
insert into payment values(1,45000,null,null);
select * from product right join payment on product.pid = payment.pid;
select * from user cross join product;
