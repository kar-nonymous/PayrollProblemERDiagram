/*UC 8:
Added column of phone number, address and department*/
use payroll_service;
/*Altering the table*/
alter table employee_payroll add PhnNo varchar(250);
alter table employee_payroll add Address varchar(250) default 'Homeless';
alter table employee_payroll add Department varchar(150) not null default 'Null';

/*UC 9:
Added columns of basic pay, deductions, taxable pay, income tax and net pay*/
use payroll_service;
/*Renaming the salary column to basicPay*/
EXEC sp_RENAME 'employee_payroll.Salary' , 'BasicPay', 'COLUMN';
/*Altering the table*/
alter table employee_payroll add Deductions decimal;
alter table employee_payroll add TaxablePay decimal;
alter table employee_payroll add IncomeTax decimal;
alter table employee_payroll add NetPay decimal;
select * from employee_payroll;

/*UC 10:
Make employee part of multiple departments*/
use payroll_service;
/*Adding additional data to table*/
update employee_payroll set PhnNo=7206183244, Address='Techman City', Department='Sales', BasicPay=72000, Deductions=5000, TaxablePay=60000, NetPay=44000 where EmpName='Kartikeya';
/*Adding multiple department values for a single person*/
insert into employee_payroll values('Kartikeya',72000,'2020-09-18','M',7206183244,'Marketing','Techman City',5000,60000,2000,44000);