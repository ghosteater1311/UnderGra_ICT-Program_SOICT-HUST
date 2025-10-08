---Ex2:
---4.1
SELECT e.first_name, 
	e.last_name, e.salary, 
	(e.salary * 0.15) AS pf 
FROM employees e 
WHERE (e.salary * 0.15) > 1000;
---4.2
SELECT e.first_name, 
	e.last_name, 
	e.salary, 
	(e.salary * 0.15) AS pf, 
	j.job_title 
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id;
---7
SELECT MAX(salary) AS max_salary, 
	MIN(salary) AS min_salary 
FROM employees;
---8
SELECT AVG(salary) AS average_salary, 
	COUNT(*) AS number_of_employees 
FROM employees;
---15
SELECT TRIM(e.first_name) 
FROM employees e;
---17
SELECT e.first_name 
FROM employees e 
WHERE e.first_name ~ '[0-9]';

---Ex4:
---3
SELECT e.first_name,
    e.last_name,
    j.job_title AS job,
    e.department_id,
    d.department_name
FROM employees e 
JOIN jobs j ON e.job_id = j.job_id
JOIN departments d ON e.department_id = d.department_id 
JOIN locations l ON d.location_id = l.location_id
WHERE l.city = 'London';
---7
SELECT e.employee_id,
	j.job_title,
	jh.start_date,
	jh.end_date,
	d.department_id,
	(jh.end_date - jh.start_date) AS days_worked
FROM employees e
JOIN job_history jh ON e.employee_id = jh.employee_id
JOIN jobs j ON jh.job_id = j.job_id
JOIN departments d ON jh.department_id = d.department_id
WHERE d.department_id = 90;
	


















