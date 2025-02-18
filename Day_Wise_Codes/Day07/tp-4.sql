#Ecommerce

use wit;

create table users(uid int primary key auto_increment,uname varchar(200));

create table products(pid int primary key auto_increment, pname varchar(200), pprice float);

create table cart(cid int primary key auto_increment, pid int ,uid int, foreign key(pid) references products(pid), foreign key(uid) references users(uid));

create table payment(payid int primary key auto_increment, amount float, pid int, uid int, foreign key(pid) references products(pid), foreign key(uid) references users(uid));

create table shaddress(aid int primary key auto_increment, full_address varchar(255), uid int, foreign key(uid) references users(uid));

create table orders(oid int primary key auto_increment, payid int, pid int, uid int, aid int, foreign key(pid) references products(pid), foreign key(uid) references users(uid), foreign key(payid) references payment(payid), foreign key(aid) references shaddress(aid));

desc users;
desc products;
desc cart;
desc payment;
desc shaddress;
desc orders;

insert into users values(400,'user1'),(401,'user2'),(402,'user3'),(403,'user4');

insert into products values(1,'laptop',66000),(2,'iphone16',125000),(3,'head phone',2000),(4,'canon-camera',100000);

insert into cart values(201,3,402);

select * from cart;

select * from users inner join cart on users.uid = cart.uid;
select * from users inner join cart on users.uid = cart.uid inner join products on cart.pid = products.pid;
select users.uid, users.uname, products.pname, products.pprice from users inner join cart on users.uid = cart.uid inner join products on cart.pid = products.pid;

insert into shaddress values(501,'wit solapur',401);
insert into payment values(901,66500,1,401);

insert into orders values(301,901,1,401,501);
select * from users inner join payment on users.uid = payment.uid;
select * from users inner join payment on users.uid = payment.uid inner join products on products.pid = payment.pid;
select * from users inner join payment on users.uid = payment.uid inner join products on products.pid = payment.pid inner join orders on orders.payid = payment.payid;
select * from users inner join payment on users.uid = payment.uid inner join products on products.pid = payment.pid inner join orders on orders.payid = payment.payid inner join shaddress on shaddress.aid = orders.aid;