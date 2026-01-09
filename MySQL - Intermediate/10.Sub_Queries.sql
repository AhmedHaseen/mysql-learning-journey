-- Sub Qureis
select *
from employee_demographics
;

select * 
from employee_salary
;
#Now let's say we wanted to look at employees who actually work in the Parks and Rec Department, we could join tables together or we could use a subquery
#We can do that like this:
select *
from employee_demographics
where employee_id in
			( select employee_id
				from employee_salary
                where dept_id = 1);

-- use select statement
select first_name,salary,
	( select avg(salary)
		from employee_salary) as avg_salary
from employee_salary
;
-- use from statement
select gender, avg(max_age) as max_age
from
(select gender, avg(age) as avg_age,
 max(age) as max_age,
 min(age) as min_age
 ,count(age) as age_count
from employee_demographics
group by gender)
as Agg_table
group by gender
;
