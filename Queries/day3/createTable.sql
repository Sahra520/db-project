/*
 create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional),
        colName3 DataType Constraints
        ...
 );
 */
 --colName means column name
CREATE table ScrumTeam_Sahra(
        Empl_ID integer primary key,
        FirstName varchar(30) not null,
        LastName varchar(30),
        JobTitle varchar(20)
);
select * from ScrumTeam_Sahra;
/*
INSERT INTO tableName (column1, column2,...)
VALUES (value1, value2 .....)
 */

insert into ScrumTeam_Sahra (Empl_ID, FirstName, LastName, JobTitle)
 values (1,'Severus','Snape','Tester');

select * from ScrumTeam_Sahra;
insert into ScrumTeam_Sahra values (1,'Severus','Snape','Tester');
insert into ScrumTeam_Sahra values (2, 'Harold', 'Finch', 'Developer');
insert into ScrumTeam_Sahra values (3, 'Szahra', 'Noor', 'SDET');
insert into ScrumTeam_Sahra values (4, 'Phoebe', 'Buffay', 'ScrumMaster');
insert into ScrumTeam_Sahra values (5, 'Michael', 'Scofield', 'PO');

select * from ScrumTeam_Sahra;


/*
 Update table_name
 set column1 = value1,
 column2 = value2...
 where condition;
 */

UPDATE ScrumTeam_Sahra
set JOBTITLE = 'Tester'
where EMPL_ID = 4;


/*
 delete from table_name
 where condition;
 */

delete from ScrumTeam_Sahra
where EMPL_ID = 4;


select * from ScrumTeam_Sahra;

commit;
--commit - means saving changes - permanently
