SELECT * FROM COUNTRIES;
---reads all column from employees table
select * from EMPLOYEES;
select * from JOBS;

select * from DEPARTMENTS;

select FIRST_NAME from EMPLOYEES;
--get onl firstname column from employees table

--display city names
select CITY from LOCATIONS;
select * from LOCATIONS;

--get me first name, last name, and salary
select FIRST_NAME,LAST_NAME, SALARY from EMPLOYEES;

--get me street address and postal code
select STREET_ADDRESS,POSTAL_CODE from LOCATIONS;

select * from EMPLOYEES;
select EMAIL from EMPLOYEES where FIRST_NAME='Steven' and LAST_NAME='King';

--for the remove duplicated values we use 'distinct' keyword
select distinct FIRST_NAME from EMPLOYEES;



