-- Where clause
select * from employee_salary
where salary <= 50000;

select * from 
employee_demographics
where gender = 'female'
;

select * from 
employee_demographics
where birth_date > '1985-02-02'
;

-- AND OR NOT  -- Logical operators
select * from 
employee_demographics
where birth_date > '1985-02-02'
or
not gender = 'male'
;

select * from 
employee_demographics
where (first_name = 'leslie' AND age = 44) or age>55
;


-- Like statement
-- % and _
select * from 
employee_demographics
where first_name like 'A__%'
;

select * from 
employee_demographics
where birth_date like  '1988%'
;