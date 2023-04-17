--find the highest 14th salary
select min(SALARY) from (select * from EMPLOYEES order by SALARY desc )where ROWNUM < 15;

--find employee info who is making 14th highest salary
select * from EMPLOYEES where SALARY = 10500;


select * from EMPLOYEES where SALARY =
                      (select min(SALARY) from (select * from EMPLOYEES order by SALARY desc )where ROWNUM < 15);

--distinct is removing duplicates
--or---
select * from EMPLOYEES where SALARY =
     (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 15);



--list salary high to low without duplicate values
select distinct SALARY from EMPLOYEES order by SALARY desc;

--Here I cut my list from 14
select * from (select distinct SALARY from EMPLOYEES order by SALARY desc) where rownum < 15;

--find the highest 14th salary (removing duplicate values)
select min (SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where rownum < 15;

--find employee information who is making 14th highest salary(without duplicates)
select * from EMPLOYEES where SALARY =
      (select min (SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where rownum < 15);



