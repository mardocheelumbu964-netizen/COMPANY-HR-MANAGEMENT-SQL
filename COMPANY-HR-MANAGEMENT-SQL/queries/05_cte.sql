USE company_hr;

-- Department salary summary
WITH department_salary AS (
    SELECT
        department_id,
        AVG(current_salary) AS avg_salary,
        SUM(current_salary) AS total_salary,
        COUNT(*) AS employee_count
    FROM employees
    GROUP BY department_id
)
SELECT
    d.department_name,
    ds.employee_count,
    ROUND(ds.avg_salary,2) AS average_salary,
    ds.total_salary
FROM department_salary ds
JOIN departments d ON ds.department_id = d.department_id
ORDER BY ds.total_salary DESC;

-- Employees above department average
WITH department_average AS (
    SELECT
        department_id,
        AVG(current_salary) AS avg_salary
    FROM employees
    GROUP BY department_id
)
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    e.current_salary,
    ROUND(da.avg_salary,2) AS department_average
FROM employees e
JOIN department_average da
    ON e.department_id = da.department_id
WHERE e.current_salary > da.avg_salary;
