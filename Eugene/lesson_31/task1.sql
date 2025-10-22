-- Task 1
SELECT e.first_name, e.last_name, e.department_id, d.depart_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Task 2
SELECT e.first_name, e.last_name, d.depart_name, l.city, l.state_province
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id;

-- Task 3
SELECT e.first_name, e.last_name, e.department_id, d.depart_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.department_id IN (80, 40);

-- Task 4
SELECT department_id, depart_name
FROM departments

-- Task 5
SELECT e.first_name AS employee_first_name, m.first_name AS manager_first_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;

-- Task 6
SELECT j.job_title, e.first_name || ' ' || e.last_name AS full_name, (j.max_salary - e.salary) AS salary_difference
FROM employees e
JOIN jobs j ON e.job_id = j.job_id;

-- Task 7
SELECT j.job_title, AVG(e.salary) AS average_salary
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
GROUP BY j.job_title;

-- Task 8
SELECT e.first_name || ' ' || e.last_name AS full_name, e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE l.city = 'London';

-- Task 9
SELECT d.depart_name, COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.depart_name;