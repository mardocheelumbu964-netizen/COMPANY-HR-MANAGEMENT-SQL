USE company_hr;

-- Employees with departments and positions
SELECT
    e.employee_id,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    d.department_name,
    p.position_title,
    e.current_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN job_positions p ON e.position_id = p.position_id;

-- Employee and manager
SELECT
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    CONCAT(m.first_name,' ',m.last_name) AS manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;

-- Projects with clients and managers
SELECT
    p.project_name,
    c.client_name,
    CONCAT(e.first_name,' ',e.last_name) AS project_manager,
    p.budget,
    p.status
FROM projects p
LEFT JOIN clients c ON p.client_id = c.client_id
LEFT JOIN employees e ON p.project_manager_id = e.employee_id;

-- Employees assigned to projects
SELECT
    p.project_name,
    CONCAT(e.first_name,' ',e.last_name) AS employee_name,
    pa.role_name,
    pa.allocation_percent
FROM project_assignments pa
JOIN projects p ON pa.project_id = p.project_id
JOIN employees e ON pa.employee_id = e.employee_id;
