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