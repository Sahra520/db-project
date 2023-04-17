select * from TESTERS;
select * from developers;

--syntax:
/*
 select column1, column2...from table1
 union
 select column1, column2...from table2;
 */
select ID_NUMBER, NAMES, SALARY from TESTERS
                                union
        select ID_NUMBER, NAMES, SALARY from DEVELOPERS;

--or--
select * from TESTERS
union
select * from DEVELOPERS;

--"union" operator removes all duplicate rows unless the "union all" is used
--example
select NAMES from TESTERS
union
select NAMES from DEVELOPERS;
--here union sorted and removed duplicate name which was Steven


--we often use the UNION operator to combine data from similar tables that are not perfectly normalized
select * from TESTERS
union all
select * from DEVELOPERS;

-----------------------------------------------

-- --MINUS set operator returns records from first query that is not present in second query
--It will only return values(from first query) that are not common in 2 query

----minus-----
select * from DEVELOPERS
minus
select * from TESTERS ;


-------------------------------------------
--INTERSECT
-------------------------------------------
select NAMES from DEVELOPERS
intersect
select NAMES from TESTERS;
--STEVEN

--how to find duplicate names in employees table
select FIRST_NAME, count(*) from EMPLOYEES group by FIRST_NAME having count(*) > 1;


