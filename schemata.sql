CREATE TABLE titles(
	title_id VARCHAR(8) NOT NULL,
	title VARCHAR(52) NOT NULL,
	PRIMARY KEY(title_id)
);

CREATE TABLE employees(
	emp_no INT NOT NULL,
	employee_title_id VARCHAR(8) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(26) NOT NULL,
	last_name VARCHAR(26) NOT NULL,
	sex CHAR(1),
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(employee_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments(
	dept_no VARCHAR(6) NOT NULL,
	dept_name VARCHAR(52) NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE dep_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(6) NOT NULL,
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dep_manager(
	dept_no VARCHAR(6) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

COPY titles
FROM '/Users/chelseaball/Public/titles.csv'
DELIMITER ',' CSV HEADER;

COPY employees
FROM '/Users/chelseaball/Public/employees.csv'
DELIMITER ',' CSV HEADER;

COPY departments
FROM '/Users/chelseaball/Public/departments.csv'
DELIMITER ',' CSV HEADER;

COPY dep_emp
FROM '/Users/chelseaball/Public/dept_emp.csv'
DELIMITER ',' CSV HEADER;

COPY dep_manager
FROM '/Users/chelseaball/Public/dept_manager.csv'
DELIMITER ',' CSV HEADER;

COPY salaries
FROM '/Users/chelseaball/Public/salaries.csv'
DELIMITER ',' CSV HEADER;