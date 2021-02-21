# SQL-challenge

Include in thiis repository:

QuickDBF-FreeDiagram.png is an ERD diagram of the table in my EmployeesSQL database

schemata.sql includes all my table creations 
queries.sql has queries for the following: 
List the following details of each employee: employee number, last name, first name, sex, and salary.

List first name, last name, and hire date for employees who were hired in 1986.

List the manager of each department with the following information: department number, department name, the manager’s employee number, last name, first name.

List the department of each employee with the following information: employee number, last name, first name, and department name.

List first name, last name, and sex for employees whose first name is “Hercules” and last names begin with “B.”

List all employees in the Sales department, including their employee number, last name, first name, and department name.

List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Bonus.ipynb uses SQL Alchemy to extract data from the salaries, employees and titles tables. 
The first figure is a histogram of employee salaries
The second figure is the average salary for each employee title
(Note* config file that contains username and password to connect to postgres is not included)
