create database restaurant;
use restaurant;
create table MenuCategory(
 menu_id integer primary key,
    category varchar (20) not null
);
create table Menu(
    item_id integer primary key,
    item_name varchar (20) not null,
    item_price integer check(item_price>0) not null,
    menu_id integer not null,
    foreign key (menu_id) references MenuCategory (menu_id) on delete cascade
);
create table Employee(
    emp_id integer primary key,
    emp_name varchar (20) not null,
    age integer check(age>18) not null,
    salary integer not null,
    hire_date date not null,
    job varchar (20) not null,
    dept_id integer,
    foreign key (dept_id) references Department (dept_id) on delete cascade
    );
    create table Department(
    dept_id integer primary key,
    dept_name varchar (20) not null
);
insert into MenuCategory values (101, 'starters');
insert into MenuCategory values (102, 'drinks');
insert into MenuCategory values (103, 'main course');
insert into MenuCategory values (104, 'dessert');

insert into menu values (201, 'paneer tikka', 80, 101);
insert into menu values (202, 'aloo tikki', 40, 101);
insert into menu values (203, 'rasmalai', 80, 104);
insert into menu values (204, 'chilli paneer', 80, 101);
insert into menu values (205, 'gulab jamun', 80, 104);
insert into menu values (206, 'cheese rolls', 80, 101);
insert into menu values (207, 'kulfi', 80, 104);
insert into menu values (208, 'burger', 80, 101);
insert into menu values (209, 'frankie', 80, 101);
insert into menu values (210, 'jeera rice', 80, 103);
insert into menu values (211, 'rogan josh', 80, 103);
insert into menu values (212, 'tandoori naan', 80, 103);
insert into menu values (213, 'chhole bhature', 80, 103);
INSERT INTO Menu VALUES (214, 'Veg Biryani', 120, 103);
INSERT INTO Menu VALUES (215, 'Chicken Biryani', 180, 103);
INSERT INTO Menu VALUES (216, 'Masala Dosa', 100, 103);
INSERT INTO Menu VALUES (217, 'Butter Naan', 40, 103);
INSERT INTO Menu VALUES (218, 'Paneer Butter Masala', 160, 103);
INSERT INTO Menu VALUES (219, 'Lassi', 50, 102);
INSERT INTO Menu VALUES (220, 'Cold Coffee', 70, 102);
INSERT INTO Menu VALUES (221, 'Mint Mojito', 90, 102);
INSERT INTO Menu VALUES (222, 'Virgin Pina Colada', 110, 102);
INSERT INTO Menu VALUES (223, 'Hot Chocolate', 150, 102);
INSERT INTO Menu VALUES (224, 'Spring Rolls', 120, 101);
INSERT INTO Menu VALUES (225, 'Samosa Chaat', 80, 101);
INSERT INTO Menu VALUES (226, 'Hara Bhara Kebab', 130, 101);
INSERT INTO Menu VALUES (227, 'Cheese Balls', 150, 101);
INSERT INTO Menu VALUES (228, 'Fruit Custard', 90, 104);
INSERT INTO Menu VALUES (229, 'Brownie Ice Cream', 200, 104);
INSERT INTO Menu VALUES (230, 'Jalebi with Rabri', 120, 104);
INSERT INTO Menu VALUES (231, 'Phirni', 100, 104);
INSERT INTO Menu VALUES (232, 'Ice Cream Sundae', 180, 104);

insert into department values (301, 'sanitation');
insert into department values (302, 'maintenance');
insert into department values (303, 'security');
insert into department values (304, 'waitstaff');
insert into department values (305, 'accounting');
insert into department values (306, 'catering');




select * from employee;
select * from department;
select * from menu;

INSERT INTO Employee VALUES (401, 'satish', 26, 20000, '2001-02-03', 'waiter', 304);
INSERT INTO Employee VALUES (402, 'rahul', 29, 25000, '2002-09-05', 'chef', 306);
INSERT INTO Employee VALUES (403, 'ashwin', 23, 19500, '2001-05-03', 'waiter', 306);
INSERT INTO Employee VALUES (404, 'ramesh', 42, 40000, '1995-05-24', 'manager', 305);
INSERT INTO Employee VALUES (405, 'surya', 34, 25000, '2004-09-21', 'cashier', 305);
INSERT INTO Employee VALUES (406, 'kirti', 32, 56000, '2005-11-14', 'guard', 303);
INSERT INTO Employee VALUES (407, 'dhwani', 26, 41000, '2006-10-17', 'valet', 303);
INSERT INTO Employee VALUES (408, 'sam', 28, 32000, '2002-01-10', 'guard', 303);
INSERT INTO Employee VALUES (409, 'srija', 27, 35000, '2001-11-19', 'waiter', 306);
INSERT INTO Employee VALUES (410, 'pritam', 21, 33500, '2009-11-27', 'cleaner', 301);
INSERT INTO Employee VALUES (411, 'Anjali', 28, 31000, '2018-06-15', 'waiter', 304);
INSERT INTO Employee VALUES (412, 'Amit', 36, 45000, '2015-04-22', 'manager', 305);
INSERT INTO Employee VALUES (413, 'Rajesh', 40, 52000, '2012-10-10', 'chef', 306);
INSERT INTO Employee VALUES (414, 'Priya', 24, 28000, '2020-12-05', 'valet', 303);
INSERT INTO Employee VALUES (415, 'Deepak', 31, 27000, '2017-02-20', 'guard', 303);
INSERT INTO Employee VALUES (416, 'Meena', 29, 29000, '2019-09-01', 'cashier', 305);
INSERT INTO Employee VALUES (417, 'Nikhil', 25, 23000, '2021-03-14', 'cleaner', 301);
INSERT INTO Employee VALUES (418, 'Suman', 32, 34000, '2016-07-19', 'chef', 306);
INSERT INTO Employee VALUES (419, 'Kavya', 27, 31000, '2018-11-11', 'waiter', 304);
INSERT INTO Employee VALUES (420, 'Manoj', 38, 49000, '2014-05-25', 'manager', 305);
INSERT INTO Employee VALUES (421, 'Vinay', 26, 32000, '2020-06-30', 'guard', 303);
INSERT INTO Employee VALUES (422, 'Arjun', 35, 43000, '2016-03-18', 'cashier', 305);
INSERT INTO Employee VALUES (423, 'Neha', 30, 37000, '2017-08-28', 'valet', 303);
INSERT INTO Employee VALUES (424, 'Rohit', 33, 41000, '2015-12-16', 'chef', 306);
INSERT INTO Employee VALUES (425, 'Shruti', 26, 26000, '2021-01-09', 'cleaner', 301);
INSERT INTO Employee VALUES (426, 'Tarun', 41, 50000, '2010-10-22', 'manager', 305);
INSERT INTO Employee VALUES (427, 'Pooja', 23, 25000, '2022-07-12', 'waiter', 304);
INSERT INTO Employee VALUES (428, 'Karan', 34, 47000, '2013-04-06', 'chef', 306);
INSERT INTO Employee VALUES (429, 'Asha', 39, 49000, '2014-05-03', 'guard', 303);
INSERT INTO Employee VALUES (430, 'Vikram', 28, 35500, '2019-06-17', 'cashier', 305);



-- Display total number of employees in each department--
select dept_id, count(*) from employee group by dept_id;

-- Display total salary expense from department --
select dept_id, sum(salary) from employee group by dept_id;

-- Display total number of employees by job --
select job, count(*) from employee group by job;
select job, count(emp_id) from employee group by job;

-- Display total salary expense by job --
select job, sum(salary) from employee group by job;

-- Display average salary by job--
select job, avg(salary) from employee group by job;

-- Display max salary of each dept;
select dept_id, max(salary) from employee group by dept_id;
select dept_id, max(salary) as highest_salary from employee group by dept_id; 

-- Display min, max, and avg salary from each dept--
select dept_id, max(salary) as max_salary, min(salary) as min_salary, avg(salary) as avg_salary from employee group by dept_id;

-- Display departments where the total salary expense exceeds 50,000--
select dept_id, salary from employee where salary>50000;

-- Display departments who have more than 3 employees--
select dept_id, count(*) from employee group by dept_id having count(*)>3;

-- Display jobs with an average salary less than 35000--
select job, avg(salary) from employee group by job having avg(salary)<35000;

-- Display all employee names in capital letters--
select upper(emp_name) from employee;

-- Display names with first letter in capital letter and age--
select initcap(emp_name), age from employee;

-- Display all employees from 304 dept--
select * from employee where dept_id = 304;

-- Display employees having salary between 20000-30000--
select * from employee where salary between 20000 and 30000;
select * from employee where salary >20000 and salary <30000;
select * from employee where salary >=20000 and salary <=30000;

-- Display employees having their names starting from letter 'S';
select * from employee where upper(emp_name) like 'S%';

-- Display employees having their names of only 5 letters;
select * from employee where emp_name like '_____';
select * from employee where length(emp_name) = 5;

-- Display all the employees in the descending order of their salary;
select * from employee order by salary desc;

-- Display total amount of salary earned by every employee;--
select sum(salary) from employee;
select sum(salary) as total_salary from employee;

-- Dsiplay total number of employees--
select count(emp_id) from employee;

-- Display average amount of salary--
select avg(salary) from employee;

-- Display the employee that is earning the max salary--
select * from employee order by salary desc;

-- Display names in asc order--
select * from employee order by emp_name asc;

-- Add an experience column in Employee table--
alter table employee add experience integer not null;

select * from employee;

-- Delete experience column in employee table--
alter table employee drop column experience;

-- Change the data type of experience column to decimal (10,2)--
alter table employee modify experience decimal (10,2);

-- Rename the column experience to experience_years--
alter table employee change experience experience_years integer;

-- Add a check constraint to column experience that it should be > or = to 0--
alter table employee add constraint chk_exp check (experience_years >=0);

-- Delete a check constraint created above--
alter table employee drop constraint chk_exp;

-- Update satish salary from 20K to 23K--
update employee set salary = 23000 where emp_ID = 401;

-- Change name and salary of emp_ID 401--
update employee set emp_name = 'ravi' , salary = 28000 where emp_ID = 401;

-- Increase chef's salary by 500--
update employee set salary = salary + 500 where upper (job) = 'CHEF';

select * from menucategory;

-- SUB QUERIES --

-- Find the menu item with the lowest price--

select * from menu where item_price = (select min(item_price) from menu);

-- Select the employee with the earliest hire date--
select * from employee where hire_date = (select min(hire_date) from employee);

-- Find the job title of the highest paid employee--
select * from employee where salary = (select max(salary) from employee);

-- Get the department name of the employee with minimum age--
select dept_name from department where dept_id = (select dept_id from employee where age = (select min(age) from employee));

-- Find the category name of the most expensive menu item-- 
select category from menucategory where menu_id = (select menu_id from menu where item_price = (select max(item_price) from menu));

-- select min,max, and avg salary per department--
select dept_id, min(salary), max(salary), avg(salary) from employee group by dept_id;







