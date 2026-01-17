-- CTEs function (Common Table Expression)
select * from employee_demographics;
select * from employee_salary;

select gender, avg(salary),max(salary),min(salary),count(salary)
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender;

-- use CTE
with CTE_Example as
(
select gender, avg(salary) as avg_salary,max(salary) as max_salary,min(salary) as min_salary,count(salary) as gender_count
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender)
select * from CTE_Example
;
-- ctes use case - calculate the avg salary of both gender
with CTE_Example as
(
select gender, avg(salary) as avg_salary,max(salary) as max_salary,min(salary) as min_salary,count(salary) as gender_count
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender)
select avg(avg_salary) as Avg_Salary from CTE_Example
;

-- get above same output using subquery
select avg(avg_salary) as Total_AVG
from(
select gender, avg(salary) as avg_salary,max(salary) as max_salary,min(salary) as min_salary,count(salary) as gender_count
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender)
example_table
;

-- use multiplle ctes
with CTE_Example as
(
select employee_id, gender,birth_date
from employee_demographics
where birth_date > '1980-02-02'
),
CTE_Example2 as
(
select employee_id, salary
from employee_salary
where salary > 50000
)
select  * from
CTE_Example
join CTE_Example2
	on CTE_Example.employee_id = CTE_Example2.employee_id;
-- overwrite CTEs column name / rename CTEs output column
with CTE_Example (Gender, Avg_Salary, Max_Salary, Min_Salary,Total_Count) as
(
select gender, avg(salary) as avg_salary,max(salary) as max_salary,min(salary) as min_salary,count(salary) as gender_count
from employee_demographics as dem
join employee_salary as sal
	on dem.employee_id = sal.employee_id
group by gender)
select * from CTE_Example
;
