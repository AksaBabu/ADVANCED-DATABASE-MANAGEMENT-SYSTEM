show databases;

Use Job;


/* Write a query to display all the countries. */
 select country_name from Countries;


/* Write a query to display specific columns like email and phone number for all the
employees. */
select email, phone_number from Employees;



/* Write a query to display the data of employee whose last name is “Fay”. */
select * from Employees where lastname like "Fay";



/* Write a query to find the hire date for employees whose last name is “Grant” or “Whalen”. */
select hire_date from Employees where lastname like "Grant" OR lastname like "Whalen";



/* Write a query to display name of the employee who is shipping clerk */
select Employees.firstname, Employees.lastname from Employees join Jobs where Employees.job_id=Jobs.job_id and Jobs.job_title like "shipping clerk";



/* Write a query to get all the employees who work for department 8. */
select * from Employees where department_id=8;



/* Write a query to display the departments in the descending order. */
select  department_name from Department order by department_name desc;



/* Write a query to display all the employees whose last name starts with “K”. */
select * from Employees where lastname like "K%";



/*Display name of the employees whose hire dates are between 1995 and 1997. */
select firstname from Employees where hire_date between "1995-01-01" and "1997-12-30";



/* Write a query to display jobs where the maximum salary is less than 5000. */
select job_title from Jobs where max_salary<5000;




/* Write a query to display email address in lower case. */
select lcase(email) from Employees;




/* Write a query to display name of the employees who were hired in 1995. */
select firstname, lastname from Employees where hire_date between "1995-01-01" and "1995-12-31";




/* Write a query to insert an employee “Paul Newton” in department 11 */
INSERT INTO Employees(employee_id,firstname,lastname,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES (207,'Paul','Newton','paul.newton@sqltutorial.org','515.123.8181','1994-06-07',1,8300.00,205,11);



/* Write a query to delete the shipping department. */
delete from Department where department_name like "shipping";










