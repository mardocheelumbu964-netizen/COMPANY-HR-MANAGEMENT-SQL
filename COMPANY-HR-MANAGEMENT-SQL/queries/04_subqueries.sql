USE company_hr;

-- Employees earning above company average
SELECT employee_id, first_name, last_name, current_salary
FROM employees
WHERE current_salary > (
    SELECT AVG(current_salary) FROM employees
);

-- Highest-paid employee
SELECT *
FROM employees
WHERE current_salary = (
    SELECT MAX(current_salary) FROM employees
);

-- Employees earning above their department average
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    e.department_id,
    e.current_salary
FROM employees e
WHERE e.current_salary > (
    SELECT AVG(e2.current_salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);

-- Departments with average salary above 70000
SELECT department_name
FROM departments
WHERE department_id IN (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING AVG(current_salary) > 70000
);
