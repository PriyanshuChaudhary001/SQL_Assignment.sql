create database if not exists TGH;
use tgh;


create table employee(
emp_id int primary key auto_increment,
name varchar(15) ,
department varchar(15) ,
salary decimal(10,2) ,
age int ,
city varchar(15)
);

select * from employee;
insert into employee values
(1,'Rahul','IT',60000,28,'Delhi'),
(2,'Neha','HR',45000,32,'Mumbai'),
(3,'Amit','IT',80000,35,'Delhi'),
(4,'Priya','Finance',70000,29,'Pune'),
(5,'Karan','HR',40000,25,'Delhi')
;


# WHERE Clause Questions

# IT department ke employees dikhao.

select * from employee where department ='IT';

# 2- Salary 50000 se zyada walon ka data nikalo.

select * from employee where salary >50000;

# 3- Delhi city ke employees dikhao.

select * from employee where city='Delhi';

# 4- Age 30 se kam employees list karo.

select * from employee where age <30;

# 5- Salary 60000 aur 80000 ke beech wale employees dikhao.

select * from employee where salary> 60000 and salary<80000;

# AND / OR Clause Questions.

# 6- IT department AND salary > 70000 wale employees.

select * from employee where department ='IT' and salary >70000;

# 7- HR OR Finance department ke employees.

select * from employee where department ='HR' or department ='Finance';

# 8- City Delhi AND age > 30.

select * from employee where city ='Delhi' or age>30;

# 9- Salary < 50000 OR age < 28.

select * from employee where salary < 50000 or age<28 ;

# 10- IT department AND city Delhi AND salary > 50000.

select * from employee where department ='IT' and city ='Delhi' and salary>50000;

# ORDER BY Clause Questions.

# 11- Employees ko salary ke according ascending order me dikhao.

select * from employee order by salary asc;

# 12- Employees ko salary ke according descending order me dikhao.

select * from employee order by salary desc;

#13- Employees ko age ke according sort karo.

select * from employee  order by age;

#14- Department ke basis par sort karo, phir salary descending.

select * from employee order by department , salary;

# 15- Delhi city ke employees ko salary descending order me dikhao.

select * from employee where city ='Delhi' order by salary desc;

# 16-  Har department ka total number of employees nikalo.

select department,count(name) from employee group by department ;

# 17- Har department ka average salary nikalo.

select department, avg(salary) from employee group by department;

# 18- City-wise employee count nikalo.

select city,count(city) from employee group by city;

# 19- Department-wise maximum salary find karo.

select department ,max(salary) from employee group by department ;

# 20- City-wise minimum salary nikalo.

select city,min(salary) from employee group by city;

# HAVING Clause Questions

# 21- Sirf un departments ko dikhao jinka average salary > 60000.

select department from employee group by department having  avg(salary)>60000;

# 22- Sirf un cities ko dikhao jahan employees > 1.

select city,count(name) from employee group by city having count(name)>1;

# 23- Departments jahan maximum salary > 70000.

select department from employee group by department having max(salary) >70000;

# 24- City-wise group banao aur sirf wahi dikhao jahan average age > 30.

select city,avg(salary) from employee group by city having avg(salary)>30;

# 25- Department-wise total salary dikhao jahan total salary > 100000.

select department,sum(salary)  from employee group by department having sum(salary)>100000;

# LIMIT Clause Questions.
# 26- Top 3 highest paid employees dikhao.


select name,salary from employee  order by salary desc limit 3;

# 27- First 2 records dikhao.

select * from employee limit 2 ;

# 28- Salary descending order me sirf top 1 employee.

select * from employee salary order by salary desc limit 1;

# 29- HR department ke first 2 employees.

select * from employee where department='HR' limit 2;

# 30- Lowest salary wale 3 employees.

select * from employee order by salary limit 3;

# OFFSET Clause Questions.

# 31-  Salary descending order me 2nd highest salary wala employee.


select * from employee order by salary  desc limit 1 offset 1;

# 32- First 2 records skip karke next 2 records dikhao.

select * from employee limit 2 offset 2;

# 33- Top 5 salaries me se 3rd aur 4th employee.

select * from employee order by salary desc limit 2  offset 2;

# 34- IT department ke first record skip karke next record dikhao.

select * from employee where department ='IT' limit 1 offset 1;

# 35- Age ascending order me first 1 skip karke next 3 dikhao.

select * from employee order by age limit 3 offset 1 ;  


# Mixed Clauses (Real Interview Type).

# 36-  Department-wise average salary nikalo aur sirf wahi dikhao jahan avg salary > 50000, order by avg salary desc.

select department,avg(salary)  from employee group by department  having avg(salary)>50000 order by avg(salary) desc ;  

# 37- Delhi city ke employees ka department-wise count dikhao.

select department,count(name) from employee where city='Delhi' group by department ;

# 38- HR ya IT department ke employees ko salary descending order me dikhao, sirf top 2.

select * from employee where department='HR' or department='IT' order by salary desc limit 2 ;

# 39- City-wise employee count dikhao jahan count > 1.

select city,count(*) from employee group by city having  count(*)>1; 

# 40- Highest paid employee from each department find karo.

select department,max(salary) from employee group by department; 

