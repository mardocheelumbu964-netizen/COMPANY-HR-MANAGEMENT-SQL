USE company_hr;

CREATE OR REPLACE VIEW vw_employee_directory AS
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    e.email,
    d.department_name,
    p.position_title,
    e.hire_date,
    e.employment_status,
    e.current_salary
FROM employees e
LEFT JOIN departments d ON e.department_id = d.department_id
LEFT JOIN job_positions p ON e.position_id = p.position_id;

CREATE OR REPLACE VIEW vw_department_salary_summary AS
SELECT
    d.department_id,
    d.department_name,
    COUNT(e.employee_id) AS employee_count,
    ROUND(AVG(e.current_salary),2) AS average_salary,
    SUM(e.current_salary) AS total_salary
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

CREATE OR REPLACE VIEW vw_project_summary AS
SELECT
    p.project_id,
    p.project_name,
    c.client_name,
    d.department_name,
    p.budget,
    p.status,
    COUNT(pa.employee_id) AS assigned_employees
FROM projects p
LEFT JOIN clients c ON p.client_id = c.client_id
LEFT JOIN departments d ON p.department_id = d.department_id
LEFT JOIN project_assignments pa ON p.project_id = pa.project_id
GROUP BY
    p.project_id,p.project_name,c.client_name,d.department_name,p.budget,p.status;

CREATE OR REPLACE VIEW vw_employee_performance AS
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    d.department_name,
    pr.rating,
    pr.goals_score,
    pr.teamwork_score
FROM employees e
JOIN performance_reviews pr ON e.employee_id = pr.employee_id
LEFT JOIN departments d ON e.department_id = d.department_id;
