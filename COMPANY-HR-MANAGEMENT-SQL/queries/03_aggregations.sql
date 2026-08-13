USE company_hr;

-- Employee count by department
SELECT
    d.department_name,
    COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY employee_count DESC;

-- Salary statistics by department
SELECT
    d.department_name,
    COUNT(e.employee_id) AS employees,
    ROUND(AVG(e.current_salary),2) AS average_salary,
    MIN(e.current_salary) AS minimum_salary,
    MAX(e.current_salary) AS maximum_salary,
    SUM(e.current_salary) AS total_salary
FROM departments d
JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Performance by department
SELECT
    d.department_name,
    ROUND(AVG(pr.rating),2) AS average_rating
FROM performance_reviews pr
JOIN employees e ON pr.employee_id = e.employee_id
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY average_rating DESC;

-- Skill popularity
SELECT
    s.skill_name,
    COUNT(es.employee_id) AS employee_count
FROM skills s
LEFT JOIN employee_skills es ON s.skill_id = es.skill_id
GROUP BY s.skill_name
ORDER BY employee_count DESC;

-- Payroll cost
SELECT
    SUM(gross_salary) AS total_gross_payroll,
    SUM(net_salary) AS total_net_payroll,
    SUM(deductions) AS total_deductions
FROM payroll;
