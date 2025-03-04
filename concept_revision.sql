


use salaries; 

show tables;

select * from employees;

select emp_no, department, salary,min(salary) , max(salary) over(partition by department) from employees;
select department , count(*) over(partition by department) from employees;
select emp_no , department , salary, sum(salary) over(partition by department) , sum(salary) over() from employees;

select emp_no , department , salary , sum(salary) over(partition by department order by salary desc) , sum(salary) over(partition by department) from employees;

select emp_no , department , salary , rank() over(partition by department order by salary desc) as overall_salary_rank from employees;



-- lag

select emp_no , department , salary ,lag(salary) over(partition by department order by salary desc) from employees;

with AVERAGEDEPARTMENT as (select department , avg(salary) as avg_salary from employees group by department)

select department , avg_salary from AVERAGEDEPARTMENT where avg_salary > 5000;




