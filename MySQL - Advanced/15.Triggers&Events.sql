-- Triggers & Events


-- Triggers

-- syntax
-- CREATE TRIGGER trigger_name
--     BEFORE|AFTER INSERT|UPDATE|DELETE
--     ON table_name
--     FOR EACH ROW
-- BEGIN
--     -- SQL statements
-- END;


select * from employee_demographics;
select * from employee_salary;

delimiter $$
 create trigger employee_insert
	after insert on employee_salary
    for each row
begin
	insert into employee_demographics (employee_id , first_name, last_name)
    values (new.employee_id, new.first_name, new.last_name);
end $$

delimiter ;

insert into employee_salary (employee_id , first_name, last_name, occupation, salary,dept_id)
values (13,"Ahm",'Has','DA',20000,null);

select * from employee_salary;

-- Events

select * from employee_demographics;

delimiter $$
create event delete_young
on schedule every 30 second
do
begin
	delete 
    from employee_demographics
    where age <30;
end $$

delimiter ;

-- DROP EVENT delete_young;          -- delete event
