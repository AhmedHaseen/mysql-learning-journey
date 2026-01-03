-- union
select first_name,last_name
from employee_demographics
union all
select first_name,last_name
from employee_salary
;
select * from employee_demographics;
select * from employee_salary;

-- select above 40 years man & women and high paid salary persons to cut parking facilities

select first_name,last_name, 'old man' as label
from employee_demographics
where age > 40 and gender = 'Male'
union
select first_name,last_name, 'old woman' as label
from employee_demographics
where age > 40 and gender = 'Female'
union
select first_name,last_name, 'High paid' as label
from employee_salary
where salary > 70000
order by first_name,last_name;