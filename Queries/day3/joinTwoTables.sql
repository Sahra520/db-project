select * from CUSTOMER;

select * from ADDRESS;

select FIRST_NAME, LAST_NAME, ADDRESS, PHONE from CUSTOMER
                join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--join is "inner join by default"

select FIRST_NAME, LAST_NAME, ADDRESS.ADDRESS_ID, ADDRESS, PHONE from CUSTOMER
               join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, CUSTOMER.ADDRESS_ID, ADDRESS, PHONE from CUSTOMER
                         join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


--left join
select FIRST_NAME, LAST_NAME, CUSTOMER.ADDRESS_ID, ADDRESS, PHONE from CUSTOMER
                     left join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


--right join
select FIRST_NAME, LAST_NAME, CUSTOMER.ADDRESS_ID, ADDRESS, PHONE from CUSTOMER
          right join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;


--full outer join
select * from EMPLOYEES;

select * from DEPARTMENTS;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME from  EMPLOYEES e
    join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME from  EMPLOYEES e left
    join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

------------------------------------------------------------

select * from EMPLOYEES;
select * from DEPARTMENTS;

select FIRST_NAME,LAST_NAME, DEPARTMENT_NAME from EMPLOYEES e left
    join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, customer.ADDRESS_ID adress, phone from CUSTOMER left outer join
    ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID where CUSTOMER.ADDRESS_ID is null ;

--------------------------------------------------------------------

--full outer join
select * from CUSTOMER full outer join ADDRESS on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where CUSTOMER_ID is null or ADDRESS.ADDRESS_ID is null;




