SELECT count(*) --emp_no, last_name, first_name, sex 
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date
FROM employees
WHERE to_char(hire_date, 'YYYY') = '1986';

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dep_manager dm
ON d.dept_no = dm.dept_no
	JOIN employees e
	ON e.emp_no = dm.emp_no;
	
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dep_emp de
ON e.emp_no = de.emp_no
	JOIN departments d
	ON de.dept_no = d.dept_no;
	
SELECT first_name, last_name, sex FROM employees
WHERE UPPER(first_name) = 'HERCULES'
	AND last_name LIKE 'B%';
	
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM departments d
JOIN dep_emp de
ON d.dept_no = de.dept_no
	JOIN employees e
	ON de.emp_no = e.emp_no
WHERE dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM departments d
JOIN dep_emp de
ON d.dept_no = de.dept_no
	JOIN employees e
	ON de.emp_no = e.emp_no
WHERE dept_name IN ('Sales', 'Development');

SELECT last_name, count(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;