create database  assessment;
use assessment;
create table WORKER
(
worker_id int primary key auto_increment,
first_name varchar(99),
last_name varchar(99),
salary int,
joining_date datetime,
department varchar(30)
);
insert into worker(first_name,last_name,salary,joining_date,department)
values("monica","arora",100000,"2014/02/20 9:00","HR"),
("niharika","verma",80000,"2014/06/11 9:00","admin"),
("vishal","singhal",300000,"2014/02/20 9:00","HR"),
("amitabh","singh",500000,"2014/02/20 9:00","admin"),
("vivek","bahti",500000,"2014/06/11 9:00","admin"),
("vipul","diwan",200000,"2014/06/11 9:00","accountant"),
("satish","kumar",75000,"2014/01/20 9:00","accountant"),
("geetika","chauhan",90000,"2014/04/11 9:00","admin");

-- Q.1 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
-- Ascending and DEPARTMENT Descending.
select * from worker order by first_name asc,department desc; 

-- Q.2 Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
-- from the Worker table.
Select * from worker where first_name in ("satish","vipul");

-- Q.3 Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
-- contains six alphabets. 
select * from worker where first_name like "_____h";

-- Q.4 . Write an SQL query to print details of the Workers whose SALARY lies between 1. 
select * from worker where salary between 100000 and 300000;

-- Q.5  Write an SQL query to fetch duplicate records having matching data in some fields of a table.-- 
select count(department) as "department" ,count(joining_date) as "joining_date",count(salary) as "salary" from worker 
group by department,salary having count(joining_date)>1 or count(salary)>1;

-- 	Q.6 Write an SQL query to show the top 6 records of a table. 
 select * from worker order by salary desc limit 6;

-- Q.7 Write an SQL query to fetch the departments that have less than five people in them. 
select department,count(department) as "total members" from worker 
group by department
having count(department)<5;

-- Q.8 Write an SQL query to show all departments along with the number of people in there.
select department,count(department) as "total members" from worker
GROUP BY DEPARTMENT;

-- Q.9Write an SQL query to print the name of employees having the highest salary in each
-- department. 
