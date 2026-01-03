-- Joins
select * from employee_demographics;

select *
from employee_salary;

select 
*  from employee_demographics em
join employee_salary sal
on em.employee_id = sal.employee_id
;

-- show selected columns
select em.employee_id, em.first_name, salary, dept_id
 from employee_demographics em
join employee_salary sal
on em.employee_id = sal.employee_id
;

-- Outer Join
-- 1.Left Outer Join
select em.employee_id, em.first_name, salary, dept_id
 from employee_demographics em
left join employee_salary sal
on em.employee_id = sal.employee_id
;

-- 2. Right outer join
select em.employee_id, em.first_name, salary, dept_id
 from employee_demographics em
right join employee_salary sal
on em.employee_id = sal.employee_id
;


-- self join
select emp1.employee_id,emp1.first_name as first_name_santa,
emp1.last_name as laast_name_santa,
emp2.employee_id,emp2.first_name,
emp2.last_name
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id + 1 = emp2.employee_id
;
select * 
from parks_departments;

-- multiple table joi together
select *
from employee_demographics emp
join employee_salary sal
on emp.employee_id = sal.employee_id
inner join parks_departments as pd
on sal.dept_id = pd.department_id
;