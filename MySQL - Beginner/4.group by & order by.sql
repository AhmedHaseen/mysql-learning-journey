select * from employee_demographics;

select gender, avg(age)
from employee_demographics
group by gender
;

select gender, avg(age), max(age), min(age), count(age)
from employee_demographics
group by gender
;