use wit;

create table user(uid int primary key auto_increment, uname varchar(200), location varchar(200));

create table product(pid int primary key auto_increment, pname varchar(200), pprice float,uid int, foreign key(uid) references user(uid));

insert into user values(100,'tom cruise','LA');

INSERT INTO user (uname, location) VALUES
('John Doe', 'New York'),
('Jane Smith', 'Los Angeles'),
('Mark Johnson', 'Chicago'),
('Emily Davis', 'San Francisco'),
('Michael Brown', 'Miami');

select * from user;

insert into product values(1,'Laptop',66000,102);
insert into product values(2,'Headphones',200,102);

select * from product;

select * from user, product where user.uid = product.uid;
select user.uid, user.uname, user.location, product.pname,product.pprice from user inner join product on user.uid = product.uid;


desc user;
desc product;