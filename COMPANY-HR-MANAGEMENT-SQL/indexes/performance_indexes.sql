USE company_hr;

CREATE INDEX idx_employee_department
ON employees(department_id);

CREATE INDEX idx_employee_salary
ON employees(current_salary);

CREATE INDEX idx_attendance_employee_date
ON attendance(employee_id, attendance_date);

CREATE INDEX idx_payroll_employee_month
ON payroll(employee_id, pay_month);

CREATE INDEX idx_project_department
ON projects(department_id);

CREATE INDEX idx_project_assignment_employee
ON project_assignments(employee_id);

-- Check query execution plans with:
-- EXPLAIN SELECT * FROM employees WHERE department_id = 1;
-- EXPLAIN SELECT * FROM payroll WHERE employee_id = 1 AND pay_month = '2026-07-01';
