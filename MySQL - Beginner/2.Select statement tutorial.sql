select * 
from parks_and_recreation.employee_demographics;


select first_name,
last_name,
age,
(age + 10)*10
#PEMDAS  - P:paranthesis, E:exponentiation,M:multip, d:div,A:addi,S:subtr
from parks_and_recreation.employee_demographics;

select distinct  first_name,gender
from parks_and_recreation.employee_demographics;