--how can we rename the column that we displayed
select FIRST_NAME as "Given_name", LAST_NAME as "surname" from EMPLOYEES;

--text functions, string manipulation
--java first_name + "last name"
--in sql concat is ||
select FIRST_NAME||' '||LAST_NAME as "full_name" from EMPLOYEES;


--Task
--add @gmail.com(domain) and name new column to full_email
select EMAIL from EMPLOYEES;
select EMAIL||'@gmail.com' as "full_email" from EMPLOYEES;

--making all lowercase
select lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--making all uppercase
select upper(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

--length(value)
select FIRST_NAME, length(FIRST_NAME) as "length_name" from EMPLOYEES;

select FIRST_NAME, length(FIRST_NAME) as "length_name"
                        from EMPLOYEES order by "length_name" desc;


--substr(colName,begIndex,NumberOfChar)--substring
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials" from EMPLOYEES;


--combine all of them
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
       FIRST_NAME||' '||LAST_NAME as "full_name",
                lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;


--to save this list
create view EmailList_Szahra as
    select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
                                FIRST_NAME||' '||LAST_NAME as "full_name",
                                         lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;


select "full_name" from EMAILLIST_SZAHRA;

--to remove view
drop view EMAILLIST_SZAHRA;







