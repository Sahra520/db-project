--get me all info who is working as IT_PROG or SA_REP
select * from EMPLOYEES where JOB_ID in ('IT_PROG', 'SA_REP');

--how many employees are working as IT_PROG or SA_REP
select count(*) from EMPLOYEES where JOB_ID in ('IT_PROG', 'SA_REP');

--get me how many employees making more than 8000
select count(*) from EMPLOYEES where salary > 8000;

--how many unique first name we have?
select count(distinct FIRST_NAME) from EMPLOYEES;

--get me all employees information based on who is making more salary to low salary
select * from EMPLOYEES order by SALARY desc;
--desc 9-0 Z-A
--asc 0-9 A-Z

--get me all employee info order by alphabetical based on firstname
select * from EMPLOYEES order by FIRST_NAME asc;

--get me all employee info order by alphabetical based on firstname
select * from EMPLOYEES order by FIRST_NAME;
--NOTE: default order type is asc if you don't specify after column name
--if remove 'asc'  default order by A-Z

--get me all employees whose first_name is starts with C
select * from EMPLOYEES where FIRST_NAME like 'C%';
--Curtis, Charles, Christopher, Clara

select * from EMPLOYEES where FIRST_NAME like 'C____';
--Clara, because each underscore representing one char,and we put here 4 _

--get me 5 letter first_names where the middle char is 'Z'
select * from EMPLOYEES where FIRST_NAME like '__z__';
--Mozhe, Hazel
select * from EMPLOYEES where FIRST_NAME like '%z%';
----Mozhe, Hazel, Elizabeth

--get me first_name where second char is 'u'
select * from EMPLOYEES where FIRST_NAME like '_u%';
--"* U %"

--find me minimum salary
select min(SALARY) from EMPLOYEES;

--find me maximum salary
select max(SALARY)from EMPLOYEES;

--find me average salary
select avg(SALARY) from EMPLOYEES;
--6461.831775700934579439252336448598130841

--round
select round(avg(SALARY),2) from EMPLOYEES;
--6461.83

--round
select round(avg(SALARY)) from EMPLOYEES;
--6462 no decimal

select sum(SALARY) from EMPLOYEES;
--691416

