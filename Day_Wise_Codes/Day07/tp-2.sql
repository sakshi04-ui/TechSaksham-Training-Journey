use wit;

create table employee(Id int primary key auto_increment, Name varchar(200), dateOfJoining Date, Salary float, Age int, City varchar(100));

INSERT INTO employee (Name, dateOfJoining, Salary, Age, City) VALUES  
('Rahul Sharma', '2020-05-10', 50000, 28, 'Mumbai'),  
('Priya Mehta', '2019-08-15', 60000, 30, 'Delhi'),  
('Amit Verma', '2021-02-20', 45000, 26, 'Bangalore'),  
('Neha Singh', '2018-11-30', 75000, 35, 'Pune'),  
('Rajesh Kumar', '2022-06-25', 40000, 24, 'Chennai');  

alter table employee auto_increment = 100;

INSERT INTO employee (Name, dateOfJoining, Salary, Age, City) VALUES  
('Sanjay Patil', '2017-03-15', 55000.00, 32, 'Hyderabad'),  
('Meera Joshi', '2020-09-10', 62000.75, 29, 'Ahmedabad'),  
('Vikram Rao', '2018-07-22', 47000.50, 27, 'Kolkata'),  
('Anjali Deshmukh', '2019-12-05', 80000.25, 34, 'Surat'),  
('Rohan Kapoor', '2021-05-18', 42000.00, 25, 'Jaipur'); 

delete from employee where Id >= 103;

delete from employee where Id in (2,4);

INSERT INTO employee (Name, dateOfJoining, Salary, Age, City) VALUES  
('Arjun Nair', '2019-06-12', 58000.00, 30, 'Mumbai'),  
('Sneha Iyer', '2021-04-25', 62000.50, 28, 'Chennai'),  
('Kunal Desai', '2018-10-08', 49000.75, 31, 'Pune'),  
('Pooja Malhotra', '2022-01-15', 53000.25, 26, 'Delhi');  

truncate table employee;

INSERT INTO employee (Name, dateOfJoining, Salary, Age, City) VALUES  
('Aarav Mehta', '2020-07-12', 57000.00, 29, 'Mumbai'),  
('Ishita Sharma', '2019-09-18', 61000.50, 30, 'Delhi'),  
('Rohan Deshpande', '2018-11-05', 48000.75, 27, 'Pune'),  
('Neelam Joshi', '2021-03-22', 75000.25, 35, 'Ahmedabad'),  
('Varun Kapoor', '2022-06-10', 53000.00, 26, 'Bangalore'),  
('Kavita Nair', '2017-02-28', 66000.75, 33, 'Chennai'),  
('Aniket Verma', '2019-12-12', 45000.50, 28, 'Jaipur'),  
('Swati Choudhary', '2020-08-15', 71000.25, 32, 'Kolkata'),  
('Manoj Patil', '2016-05-20', 59000.00, 36, 'Hyderabad'),  
('Pallavi Saxena', '2023-01-05', 52000.50, 25, 'Surat');  

Select * from employee where name like 'A%';
Select * from employee where name like 'A%a';
Select * from employee where name like 'A__________a';
select * from employee;
Select * from employee where name like '_a%';

select name from employee;
select Max(Salary) as MaximumSalary from employee;
select Min(Salary) as MaximumSalary from employee;
select Avg(Salary) as AverageSalary from employee;
select Sum(Salary) as TotalSalary from employee;
select Count(Id) as No_of_entries from employee;

Select Salary as MaxSalary from employee order by Salary Desc limit 1; 
Select Salary as MaxSalary from employee order by Salary Desc limit 1 offset 2; 

desc employee;
