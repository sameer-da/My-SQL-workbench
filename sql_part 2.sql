-- Q1

select * from employee where deptno=10 and salary > 3000;



-- Q2 (a)
select count(*) from students where marks between 50 and 80;



-- Q2 (b)
select count(*) from students where marks between 80 and 100;



-- Q3
select distinct city from station where id%2=0;


-- Q4
select count(city) - count(distinct city) from station;



-- Q5(a)
select distinct(city) from station where left(city,1) in ('a','e','i','o','u');


-- Q5(b)
select distinct(city) from station where left(city,1) and right(city,1) in ('a','e','i','o','u');




-- Q5(c)
select distinct(city) from station where left(city,1) not in ('a','e','i','o','u');




-- Q5(d)
select distinct(city) from station where left(city,1) or right(city,1) not in ('a','e','i','o','u');



-- Q6
select first_name,last_name from emp where salary > 2000 and hire_date - sysdate() < 36 
order by salary desc;


-- Q7
select deptno,sum(salary) as total_salary from employee group by deptno;



-- Q8
select count(*) from city where population > 100000;



-- Q9
select sum(population) from city where district= 'california';



-- Q10
select countrycode,avg(population) as average_population from city group by countrycode;




-- Q11
select od.customernumber,customername,ordernumber,status,comments from orders od 
 left join
customers cu on od.customerNumber=cu.customerNumber where status='disputed';










