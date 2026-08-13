USE company_hr;

SELECT * FROM employees;

SELECT employee_id, first_name, last_name, current_salary
FROM employees
ORDER BY current_salary DESC;

SELECT *
FROM employees
WHERE employment_status = 'Active';

SELECT department_name, annual_budget
FROM departments
ORDER BY annual_budget DESC;

SELECT project_name, budget, status
FROM projects
ORDER BY budget DESC;
