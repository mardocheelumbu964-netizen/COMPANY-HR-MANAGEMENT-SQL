USE company_hr;

CREATE TABLE locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL,
    city VARCHAR(80) NOT NULL,
    state VARCHAR(80),
    country VARCHAR(80) DEFAULT 'India'
);

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    location_id INT,
    annual_budget DECIMAL(14,2) DEFAULT 0
);

CREATE TABLE job_positions (
    position_id INT AUTO_INCREMENT PRIMARY KEY,
    position_title VARCHAR(100) NOT NULL,
    min_salary DECIMAL(12,2),
    max_salary DECIMAL(12,2)
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    phone VARCHAR(20),
    gender VARCHAR(20),
    date_of_birth DATE,
    hire_date DATE NOT NULL,
    department_id INT,
    position_id INT,
    manager_id INT NULL,
    employment_status VARCHAR(30) DEFAULT 'Active',
    current_salary DECIMAL(12,2) NOT NULL
);

CREATE TABLE salary_history (
    salary_history_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    salary DECIMAL(12,2) NOT NULL,
    effective_date DATE NOT NULL,
    reason VARCHAR(150)
);

CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    overtime_hours DECIMAL(5,2) DEFAULT 0
);

CREATE TABLE leave_requests (
    leave_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    leave_type VARCHAR(40) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Pending',
    reason VARCHAR(255)
);

CREATE TABLE performance_reviews (
    review_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    review_date DATE NOT NULL,
    rating DECIMAL(3,2) NOT NULL,
    goals_score DECIMAL(3,2),
    teamwork_score DECIMAL(3,2),
    comments VARCHAR(255)
);

CREATE TABLE skills (
    skill_id INT AUTO_INCREMENT PRIMARY KEY,
    skill_name VARCHAR(80) NOT NULL UNIQUE
);

CREATE TABLE employee_skills (
    employee_id INT NOT NULL,
    skill_id INT NOT NULL,
    skill_level VARCHAR(30) NOT NULL,
    PRIMARY KEY (employee_id, skill_id)
);

CREATE TABLE clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    client_name VARCHAR(120) NOT NULL,
    industry VARCHAR(100),
    city VARCHAR(80)
);

CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(150) NOT NULL,
    client_id INT,
    department_id INT,
    project_manager_id INT,
    start_date DATE,
    end_date DATE,
    budget DECIMAL(14,2),
    status VARCHAR(30) DEFAULT 'Planned'
);

CREATE TABLE project_assignments (
    project_id INT NOT NULL,
    employee_id INT NOT NULL,
    role_name VARCHAR(100),
    assigned_date DATE,
    allocation_percent DECIMAL(5,2),
    hours_allocated INT,
    PRIMARY KEY (project_id, employee_id)
);

CREATE TABLE payroll (
    payroll_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    pay_month DATE NOT NULL,
    basic_salary DECIMAL(12,2),
    overtime_pay DECIMAL(12,2) DEFAULT 0,
    bonus DECIMAL(12,2) DEFAULT 0,
    deductions DECIMAL(12,2) DEFAULT 0,
    gross_salary DECIMAL(12,2),
    net_salary DECIMAL(12,2),
    payment_status VARCHAR(30) DEFAULT 'Paid'
);
