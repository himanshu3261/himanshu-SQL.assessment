create database school;
use school;
create table student
(
stdid int primary key,
stdname varchar(99),
sex varchar(10),
percentage int,
class int,
sec varchar(1),
stream varchar(20),
dob date
);
insert into student
(stdid,stdname,sex,percentage,class,sec,stream,dob)
values
(1001,"surekha joshi","female",82,12,"A","science","1998/3/8"),
(1002,"maahi agarwal","female",56,11,"C","commerce","2008/11/23"),
(1003,"sanam verma","male",59,11,"C","commerce","2006/6/29"),
(1004,"rohit kumar","male",63,11,"C","commerce","1997/11/5"),
(1005,"dipesh pulkit","male",78,11,"B","science","2003/9/14"),
(1006,"jahanvi puri","female",60,11,"B","commerce","2008/11/7"),
(1007,"sanam kumar","male",23,12,"F","commerce","1998/3/8"),
(1008,"sahil saras","male",56,11,"C","commerce","2008/11/7"),
(1009,"akshra agarwal","female",72,12,"B","commerce","1996/10/1"),
(1010,"stuti mishra","female",39,11,"F","science","2008/11/23"),
(1011,"harsh agarwal","male",42,11,"C","science","1998/3/8"),
(1012,"nikunj agarwal","male",49,12,"C","commerce","1998/6/28"),
(1013,"akriti saxena","female",89,12,"A","science","2008/11/23"),
(1014,"tani rastogi","female",82,12,"A","science","2008/11/23");

-- 1 To display all the records form STUDENT table. SELECT * FROM student 
SELECT * FROM STUDENT;

-- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB FROM student  
 SELECT STDNAME,DOB FROM STUDENT;
 
 -- 3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM STUDENT WHERE PERCENTAGE >= 80;

-- 4. To display student name, stream and percentage where percentage of student is more than 80 
SELECT STDNAME,STREAM,PERCENTAGE FROM STUDENT WHERE PERCENTAGE>80;

-- 5. To display all records of science students whose percentage is more than 75 form student table. 
SELECT * FROM STUDENT WHERE PERCENTAGE>75 AND STREAM="SCIENCE";
