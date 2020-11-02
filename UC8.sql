/*UC 8:
Added column of phone number, address and department*/
use payroll_service;
/*Altering the table*/
alter table employee_payroll add PhnNo varchar(250);
alter table employee_payroll add Address varchar(250) default 'Homeless';
alter table employee_payroll add Department varchar(150) not null default 'Null';
