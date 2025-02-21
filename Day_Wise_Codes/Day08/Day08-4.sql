use wit;

create table hospital(hid int primary key, hname varchar(255), hlocation varchar(200));

create table patient(pid int primary key, pname varchar(255), paddress varchar(255), pdisease varchar(200));

create table payments (payid int primary key, pamount int , pid int , hid int, foreign key(pid) references patient(pid), foreign key(hid) references hospital(hid));

create table admit(aid int primary key, pid int, hid int , payid int, foreign key(pid) references patient(pid), foreign key(hid) references hospital(hid), foreign key(payid) references payments(payid));

insert into patient values(1, 'Sakshi' , 'Solapur', 'Cough'), (2, 'Shravani' , 'Solapur', 'fever') , (3, 'Shreya' , 'Pune', 'cold'), (4, 'Avira' , 'CSN', 'Typhoid');

insert into hospital values(200, 'ABC Hosp', 'Solapur'), (201, 'DEF Hosp', 'Solapur'), (202, 'GHI Hosp', 'Pune'), (203, 'GHI Hosp', 'Mumbai');

insert into payments values (5001 , 5000, 2, 201), (5002 , 4000, 1, 203);

insert into admit values(2001 , 2 ,201, 5001), (2002, 1, 203, 5002 );

-- to select only those hospital who has admitted a patient 
select * from hospital right join admit on hospital.hid = admit.hid inner join patient on patient.pid = admit.pid;

-- to select all hosp but null values if patient is not admitted there
select * from hospital left join admit on hospital.hid = admit.hid left join patient on patient.pid = admit.pid; 

-- now update this query to display only important values