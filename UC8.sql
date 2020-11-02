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

