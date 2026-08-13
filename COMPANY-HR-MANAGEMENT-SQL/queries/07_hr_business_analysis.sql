USE company_hr;

-- 1. Highest salary by department
SELECT
    d.department_name,
    MAX(e.current_salary) AS highest_salary
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY highest_salary DESC;

-- 2. Employee salary increase percentage
WITH salary_changes AS (
    SELECT
        employee_id,
        MIN(salary) AS old_salary,
        MAX(salary) AS latest_salary
    FROM salary_history
    GROUP BY employee_id
)
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    old_salary,
    latest_salary,
    ROUND((latest_salary-old_salary)/old_salary*100,2) AS increase_percent
FROM salary_changes sc
JOIN employees e ON sc.employee_id = e.employee_id
WHERE latest_salary > old_salary
ORDER BY increase_percent DESC;

-- 3. Attendance summary
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    SUM(a.status='Present') AS present_days,
    SUM(a.status='Absent') AS absent_days,
    SUM(a.overtime_hours) AS overtime_hours
FROM employees e
LEFT JOIN attendance a ON e.employee_id = a.employee_id
GROUP BY e.employee_id, employee_name
ORDER BY absent_days DESC;

-- 4. Employees with low performance
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    pr.rating
FROM performance_reviews pr
JOIN employees e ON pr.employee_id = e.employee_id
WHERE pr.rating < 4.0
ORDER BY pr.rating;

-- 5. Employees working on more than one project
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    COUNT(pa.project_id) AS project_count
FROM employees e
JOIN project_assignments pa ON e.employee_id = pa.employee_id
GROUP BY e.employee_id, employee_name
HAVING COUNT(pa.project_id) > 1;

-- 6. Project budget summary
SELECT
    p.project_name,
    c.client_name,
    p.budget,
    p.status
FROM projects p
LEFT JOIN clients c ON p.client_id = c.client_id
ORDER BY p.budget DESC;

-- 7. Total payroll by department
SELECT
    d.department_name,
    SUM(pr.gross_salary) AS gross_payroll
FROM payroll pr
JOIN employees e ON pr.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY gross_payroll DESC;

-- 8. Employees with no project assignment
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name
FROM employees e
LEFT JOIN project_assignments pa ON e.employee_id = pa.employee_id
WHERE pa.employee_id IS NULL;

-- 9. Most common skills
SELECT
    s.skill_name,
    COUNT(es.employee_id) AS employees_with_skill
FROM skills s
JOIN employee_skills es ON s.skill_id = es.skill_id
GROUP BY s.skill_name
ORDER BY employees_with_skill DESC;

-- 10. Department headcount and payroll
SELECT
    d.department_name,
    COUNT(DISTINCT e.employee_id) AS headcount,
    SUM(e.current_salary) AS annualized_salary_cost
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY annualized_salary_cost DESC;
