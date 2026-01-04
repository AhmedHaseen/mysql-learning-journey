-- string function

-- 1. length()
select length('Three');

select first_name, length(first_name) as name_length
from employee_demographics
order by name_length
;

-- 2.upper()
select upper('lower_case to upper') as upper_case;
select first_name, upper(first_name) as name_capital
from employee_demographics
;

-- 3.lower()
select lower('BIG') as lower_case;

-- 4.trim()
select trim('             I am Has            ') as trim;
select ltrim('             I am Has            ') as trim;
select rtrim('             I am Has            ') as trim;

-- 4.left(), right()
select first_name, left(first_name,4) as short_name
from
employee_demographics
;

select first_name, right(first_name,4) as short_name
from
employee_demographics
;

-- 5.substring()

select first_name, last_name,
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics
;

-- 6. replace() - 3 paramenters total
select first_name ,
replace(first_name, 'a','z') as modified_name
from employee_demographics
;

-- 7. locate
select locate('l' ,'Haseen');



-- concat() - combine string
select first_name, last_name,
concat(first_name,' ' , last_name) as full_name
from
employee_demographics
;

