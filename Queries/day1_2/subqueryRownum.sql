--how to find employees information who is making high salary in the company

--get me the  highest salary
select max(SALARY) from EMPLOYEES;

--highest salary employee information
select * from EMPLOYEES where SALARY=24000;

--or

--subquery
select * from EMPLOYEES where SALARY=(select max(SALARY) from EMPLOYEES);


--find second highest salary
--get highest salary first
select max(SALARY) from EMPLOYEES ;


--highest salary after 24000
select max(SALARY) from EMPLOYEES where SALARY < 24000;


--one shoot combining two queries
select max(SALARY) from EMPLOYEES where SALARY <
                                        (select max(SALARY) from EMPLOYEES);

--employee information of who is making second highest salary?
select * from EMPLOYEES where SALARY =(select max(SALARY) from EMPLOYEES where SALARY <
               (select max(SALARY) from EMPLOYEES)) ;



select * from EMPLOYEES order by SALARY desc;

select * from EMPLOYEES where ROWNUM <= 11;


--list the employees who is making top 10 salary

--get the first 10 people then order them high to low based on salary
select * from EMPLOYEES where ROWNUM < 11 order by SALARY desc;

--order all employees based on salary high to low then display only first 10 result
select * from (select * from EMPLOYEES order by SALARY desc ) where ROWNUM < 11;

--order all employees based on salary low to high then display only first 10 result
select * from (select * from EMPLOYEES order by SALARY asc ) where ROWNUM < 11;








