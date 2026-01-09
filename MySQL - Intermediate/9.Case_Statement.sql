-- Case statement
select * from 
employee_demographics
;
select first_name , last_name,
age ,
CASE
	when age <= 30 then 'young'
end as age_category
from employee_demographics
;
-- multiple conditions
select first_name , last_name,
age ,
CASE
	when age <= 30 then 'young'
    when age between 31 and 50 then 'old'
    when age >=50 then 'Nearly_Retaired'
end as age_category
from employee_demographics
;

select * from
employee_salary
;
select *
from parks_departments
;

-- pay increase & bonus
-- <50000 = 5% increase
-- >=50000 = 7% increase
-- Finance dep = 10% bonus
select first_name, last_name, salary,
case
	when salary < 50000 then salary *0.05
    when salary >= 50000 then salary *0.07
end as Increment,
case
	when dept_id =6 then salary *0.1
end as Bonus,
-- final salary
salary
+ case
	when salary < 50000 then salary *0.05
    else salary *0.07
end
+ case
    when dept_id =6 then salary *0.1
    else 0
end as New_Salary
from employee_salary
;