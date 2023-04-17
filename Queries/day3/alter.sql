select * from SCRUMTEAM_SAHRA;
--adding new column
ALTER table SCRUMTEAM_SAHRA add salary integer;

--update existing employees salary
update SCRUMTEAM_SAHRA set salary = 100000 where EMPL_ID = 1;
update SCRUMTEAM_SAHRA set salary = 110000 where EMPL_ID = 2;
update SCRUMTEAM_SAHRA set salary = 150000 where EMPL_ID = 3;
update SCRUMTEAM_SAHRA set salary = 100000 where EMPL_ID = 5;


--rename the column
Alter table SCRUMTEAM_SAHRA rename column salary to annual_salary;


--delete, drop(remove) column
alter table SCRUMTEAM_SAHRA drop column annual_salary;


--how to change table name?
alter table SCRUMTEAM_SAHRA rename to agileTeamSahra;

alter table agileTeamSahra rename to scrumteam_sahra;

select * from agileTeamSahra;

commit;

--truncate, if we want to delete all data from the table,
--but still keep the table structure, we use truncate

truncate table scrumteam_sahra;


--if we want to delete the table and data together
drop table scrumteam_sahra;

select * from scrumteam_sahra;
-- table or view does not exist

