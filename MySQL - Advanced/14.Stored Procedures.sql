-- Stored Procedures


-- A simple query for expllain stored procedure concept
select * from
employee_salary
where salary >= 50000;

-- Now put this simple query in to stored procedure

create procedure large_salaries()
select * from
employee_salary
where salary >= 50000;


-- call the stored procedure 
call large_salaries();


-- stored procedure  with multiple quries  -use  delimiter change

DELIMITER $$

CREATE PROCEDURE salary_comparision()
BEGIN
    SELECT *
    FROM employee_salary
    WHERE salary >= 50000;

    SELECT * 
    FROM employee_salary
    WHERE salary < 50000;
END $$

DELIMITER ;
call salary_comparision();


-- use parameters
delimiter $$
CREATE PROCEDURE salary_table(p_employee_id int)
BEGIN
    SELECT salary
    FROM employee_salary
    where employee_id = p_employee_id;
    
END $$

DELIMITER ;
call salary_table(1);
