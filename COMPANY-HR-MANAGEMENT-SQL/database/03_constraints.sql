USE company_hr;

ALTER TABLE departments
    ADD CONSTRAINT fk_department_location
    FOREIGN KEY (location_id) REFERENCES locations(location_id);

ALTER TABLE employees
    ADD CONSTRAINT fk_employee_department
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    ADD CONSTRAINT fk_employee_position
    FOREIGN KEY (position_id) REFERENCES job_positions(position_id),
    ADD CONSTRAINT fk_employee_manager
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id);

ALTER TABLE salary_history
    ADD CONSTRAINT fk_salary_employee
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id);

ALTER TABLE attendance
    ADD CONSTRAINT fk_attendance_employee
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id);

ALTER TABLE leave_requests
    ADD CONSTRAINT fk_leave_employee
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id);

ALTER TABLE performance_reviews
    ADD CONSTRAINT fk_review_employee
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id);

ALTER TABLE employee_skills
    ADD CONSTRAINT fk_employee_skill_employee
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    ADD CONSTRAINT fk_employee_skill_skill
    FOREIGN KEY (skill_id) REFERENCES skills(skill_id);

ALTER TABLE projects
    ADD CONSTRAINT fk_project_client
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    ADD CONSTRAINT fk_project_department
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    ADD CONSTRAINT fk_project_manager
    FOREIGN KEY (project_manager_id) REFERENCES employees(employee_id);

ALTER TABLE project_assignments
    ADD CONSTRAINT fk_assignment_project
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    ADD CONSTRAINT fk_assignment_employee
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id);

ALTER TABLE payroll
    ADD CONSTRAINT fk_payroll_employee
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id);
