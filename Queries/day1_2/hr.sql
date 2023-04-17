--get me average salary for IT_PROG
select avg(SALARY) from EMPLOYEES where JOB_ID='IT_PROG';

select JOB_ID, avg(SALARY) from EMPLOYEES group by JOB_ID;

select JOB_ID, avg(SALARY), count(*), sum(SALARY) from EMPLOYEES group by JOB_ID;

--get me unique job_id
select distinct JOB_ID from EMPLOYEES;

select * from EMPLOYEES;

--get me job_id's where their avg salary is more than 5000
select JOB_ID, avg(SALARY), count(*),
       sum(SALARY) from EMPLOYEES group by JOB_ID having avg(SALARY) > 5000;

select * from EMPLOYEES where SALARY > 5000;
