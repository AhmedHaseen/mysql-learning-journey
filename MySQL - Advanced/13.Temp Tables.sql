-- Temporary Table

create temporary table temp_table
(
first_name varchar(50),
last_name varchar(50),
gender varchar(50)
);

select * from temp_table;

insert into temp_table (first_name , last_name , gender) values
("Haseen" , "Ahmed", "Male"),("Afridi",'Khan','Male');

select * from temp_table;

-- Temp table creation mtd 2
select * from employee_salary;

-- query data that have salary greater thsn or equal to 50k using temp table
create temporary table temp_salary_50k
select * from employee_salary
where salary >= 50000;

select * from temp_salary_50k;