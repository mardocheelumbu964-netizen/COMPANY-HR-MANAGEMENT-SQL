USE company_hr;

INSERT INTO locations (location_name, city, state) VALUES
('Bangalore HQ','Bangalore','Karnataka'),
('Mysore Office','Mysore','Karnataka'),
('Chennai Office','Chennai','Tamil Nadu'),
('Hyderabad Office','Hyderabad','Telangana');

INSERT INTO departments (department_name, location_id, annual_budget) VALUES
('IT',1,25000000),
('HR',1,9000000),
('Finance',1,12000000),
('Sales',2,18000000),
('Operations',3,22000000),
('Marketing',4,15000000);

INSERT INTO job_positions (position_title,min_salary,max_salary) VALUES
('Software Developer',40000,120000),
('Data Analyst',45000,130000),
('HR Executive',30000,90000),
('Finance Analyst',40000,110000),
('Sales Executive',30000,100000),
('Operations Manager',60000,160000),
('Marketing Specialist',35000,110000),
('Department Manager',70000,200000);

INSERT INTO employees
(first_name,last_name,email,phone,gender,date_of_birth,hire_date,department_id,position_id,manager_id,current_salary)
VALUES
('Arun','Kumar','arun.kumar@company.com','9000000001','Male','1994-02-10','2019-01-15',1,8,NULL,145000),
('Priya','Sharma','priya.sharma@company.com','9000000002','Female','1997-06-18','2021-03-12',1,2,1,78000),
('Rahul','Verma','rahul.verma@company.com','9000000003','Male','1996-11-05','2020-07-20',1,1,1,72000),
('Sneha','Patel','sneha.patel@company.com','9000000004','Female','1998-01-22','2022-02-10',1,1,1,65000),
('Vikram','Rao','vikram.rao@company.com','9000000005','Male','1992-09-14','2018-05-03',2,8,NULL,110000),
('Anjali','Mehta','anjali.mehta@company.com','9000000006','Female','1999-04-25','2023-01-16',2,3,5,52000),
('David','Wilson','david.wilson@company.com','9000000007','Male','1991-08-09','2017-10-01',3,8,NULL,125000),
('Sarah','Johnson','sarah.johnson@company.com','9000000008','Female','1997-12-12','2021-08-11',3,4,7,69000),
('Daniel','Lee','daniel.lee@company.com','9000000009','Male','1995-03-30','2020-06-17',4,8,NULL,118000),
('Olivia','White','olivia.white@company.com','9000000010','Female','1998-07-07','2022-09-19',4,5,9,57000),
('James','Hall','james.hall@company.com','9000000011','Male','1993-10-21','2019-04-22',5,6,NULL,130000),
('Sophia','Allen','sophia.allen@company.com','9000000012','Female','1999-05-16','2024-01-08',5,1,11,50000),
('Michael','Brown','michael.brown@company.com','9000000013','Male','1996-01-11','2022-11-02',6,7,NULL,72000),
('Emily','Davis','emily.davis@company.com','9000000014','Female','1997-03-19','2023-05-15',6,7,13,56000),
('John','Smith','john.smith@company.com','9000000015','Male','1995-06-28','2021-12-01',1,1,1,69000),
('Maria','Thomas','maria.thomas@company.com','9000000016','Female','1998-08-02','2024-02-05',2,3,5,48000),
('Kevin','Martin','kevin.martin@company.com','9000000017','Male','1994-04-13','2020-03-09',3,4,7,73000),
('Laura','Garcia','laura.garcia@company.com','9000000018','Female','1996-09-27','2022-06-21',4,5,9,61000),
('Robert','Clark','robert.clark@company.com','9000000019','Male','1993-12-30','2019-11-18',5,6,11,85000),
('Grace','Lewis','grace.lewis@company.com','9000000020','Female','2000-01-17','2025-01-06',6,7,13,45000);

INSERT INTO salary_history (employee_id,salary,effective_date,reason) VALUES
(1,125000,'2021-01-01','Promotion'),
(1,145000,'2024-01-01','Annual revision'),
(2,65000,'2023-01-01','Annual revision'),
(2,78000,'2025-01-01','Performance increase'),
(3,60000,'2023-01-01','Annual revision'),
(3,72000,'2025-01-01','Annual revision'),
(4,58000,'2024-01-01','Annual revision'),
(4,65000,'2025-01-01','Performance increase'),
(5,95000,'2022-01-01','Promotion'),
(5,110000,'2025-01-01','Annual revision'),
(7,105000,'2022-01-01','Promotion'),
(7,125000,'2025-01-01','Annual revision'),
(9,100000,'2022-01-01','Promotion'),
(9,118000,'2025-01-01','Annual revision'),
(11,110000,'2022-01-01','Promotion'),
(11,130000,'2025-01-01','Annual revision');

INSERT INTO attendance (employee_id,attendance_date,status,overtime_hours) VALUES
(1,'2026-08-01','Present',2),(2,'2026-08-01','Present',1),
(3,'2026-08-01','Present',0),(4,'2026-08-01','Absent',0),
(5,'2026-08-01','Present',2),(6,'2026-08-01','Present',0),
(7,'2026-08-01','Present',1),(8,'2026-08-01','Absent',0),
(9,'2026-08-01','Present',2),(10,'2026-08-01','Present',0),
(11,'2026-08-01','Present',1),(12,'2026-08-01','Present',0),
(13,'2026-08-01','Present',2),(14,'2026-08-01','Absent',0),
(15,'2026-08-01','Present',1),(16,'2026-08-01','Present',0),
(17,'2026-08-01','Present',0),(18,'2026-08-01','Present',1),
(19,'2026-08-01','Present',0),(20,'2026-08-01','Present',2);

INSERT INTO leave_requests
(employee_id,leave_type,start_date,end_date,status,reason) VALUES
(4,'Sick','2026-07-10','2026-07-11','Approved','Fever'),
(8,'Casual','2026-07-15','2026-07-16','Approved','Personal work'),
(12,'Annual','2026-08-10','2026-08-12','Pending','Family trip'),
(16,'Sick','2026-06-05','2026-06-06','Approved','Medical appointment'),
(20,'Casual','2026-07-20','2026-07-21','Approved','Personal work');

INSERT INTO performance_reviews
(employee_id,review_date,rating,goals_score,teamwork_score,comments) VALUES
(1,'2026-03-31',4.80,5.00,4.70,'Excellent leadership'),
(2,'2026-03-31',4.50,4.60,4.40,'Strong analytical skills'),
(3,'2026-03-31',4.20,4.30,4.10,'Very good developer'),
(4,'2026-03-31',3.60,3.50,3.70,'Needs consistency'),
(5,'2026-03-31',4.70,4.80,4.60,'Strong HR leadership'),
(6,'2026-03-31',4.00,4.10,3.90,'Good progress'),
(7,'2026-03-31',4.90,5.00,4.80,'Excellent financial leadership'),
(8,'2026-03-31',4.30,4.40,4.20,'Reliable analyst'),
(9,'2026-03-31',4.60,4.70,4.50,'Strong sales leader'),
(10,'2026-03-31',3.90,4.00,3.80,'Meets expectations'),
(11,'2026-03-31',4.80,4.90,4.70,'Excellent operations leadership'),
(12,'2026-03-31',4.10,4.20,4.00,'Good performance'),
(13,'2026-03-31',4.40,4.50,4.30,'Creative marketer'),
(14,'2026-03-31',3.80,3.90,3.70,'Needs development'),
(15,'2026-03-31',4.30,4.40,4.20,'Good technical work'),
(17,'2026-03-31',4.50,4.60,4.40,'Strong financial work'),
(18,'2026-03-31',4.20,4.30,4.10,'Good sales results'),
(19,'2026-03-31',4.00,4.10,3.90,'Reliable operations'),
(20,'2026-03-31',3.70,3.60,3.80,'New employee');

INSERT INTO skills (skill_name) VALUES
('SQL'),('Python'),('Java'),('Excel'),('Power BI'),
('Leadership'),('Communication'),('Machine Learning'),('Project Management');

INSERT INTO employee_skills VALUES
(1,1,'Expert'),(1,6,'Expert'),(1,9,'Advanced'),
(2,1,'Advanced'),(2,5,'Advanced'),(2,7,'Advanced'),
(3,1,'Advanced'),(3,2,'Intermediate'),(3,3,'Advanced'),
(4,1,'Intermediate'),(4,2,'Intermediate'),(4,7,'Advanced'),
(5,6,'Expert'),(5,7,'Expert'),(5,9,'Advanced'),
(6,4,'Advanced'),(6,7,'Advanced'),
(7,1,'Advanced'),(7,4,'Expert'),(7,6,'Advanced'),
(8,1,'Advanced'),(8,4,'Advanced'),(8,5,'Intermediate'),
(9,6,'Expert'),(9,7,'Advanced'),(9,9,'Advanced'),
(10,7,'Advanced'),(10,4,'Advanced'),
(11,6,'Expert'),(11,9,'Expert'),(11,7,'Advanced'),
(12,1,'Intermediate'),(12,2,'Intermediate'),
(13,5,'Advanced'),(13,7,'Advanced'),
(14,4,'Advanced'),(14,7,'Advanced'),
(15,1,'Advanced'),(15,3,'Intermediate'),
(17,1,'Advanced'),(17,4,'Advanced'),
(18,7,'Advanced'),(18,5,'Intermediate'),
(19,9,'Intermediate'),(19,6,'Intermediate'),
(20,4,'Intermediate'),(20,7,'Intermediate');

INSERT INTO clients (client_name,industry,city) VALUES
('TechNova Solutions','Technology','Bangalore'),
('GreenMart Retail','Retail','Mysore'),
('FinEdge Capital','Finance','Mumbai'),
('HealthPlus','Healthcare','Hyderabad'),
('AutoCore','Automotive','Chennai');

INSERT INTO projects
(project_name,client_id,department_id,project_manager_id,start_date,end_date,budget,status) VALUES
('ERP Modernization',1,1,1,'2026-01-01','2026-12-31',8500000,'Active'),
('HR Analytics Platform',1,2,5,'2026-02-01','2026-10-31',4200000,'Active'),
('Finance Reporting System',3,3,7,'2026-01-15','2026-09-30',5000000,'Active'),
('Sales CRM Upgrade',2,4,9,'2026-03-01','2026-11-30',6200000,'Active'),
('Warehouse Automation',5,5,11,'2026-01-10','2026-12-15',9000000,'Active'),
('Digital Marketing Campaign',4,6,13,'2026-04-01','2026-08-31',3000000,'Completed');

INSERT INTO project_assignments VALUES
(1,1,'Project Manager','2026-01-01',40,800),
(1,2,'Data Analyst','2026-01-10',60,700),
(1,3,'Developer','2026-01-10',80,1000),
(1,4,'Developer','2026-02-01',70,900),
(2,5,'Project Manager','2026-02-01',40,600),
(2,6,'HR Analyst','2026-02-05',80,700),
(2,16,'HR Executive','2026-02-05',60,500),
(3,7,'Project Manager','2026-01-15',40,650),
(3,8,'Finance Analyst','2026-01-20',80,900),
(3,17,'Finance Analyst','2026-01-20',70,750),
(4,9,'Project Manager','2026-03-01',40,700),
(4,10,'Sales Executive','2026-03-05',80,800),
(4,18,'Sales Executive','2026-03-05',70,700),
(5,11,'Project Manager','2026-01-10',40,850),
(5,12,'Developer','2026-01-15',70,900),
(5,19,'Operations Manager','2026-01-15',60,800),
(6,13,'Project Manager','2026-04-01',40,500),
(6,14,'Marketing Specialist','2026-04-05',80,650),
(6,20,'Marketing Specialist','2026-04-05',70,550);

INSERT INTO payroll
(employee_id,pay_month,basic_salary,overtime_pay,bonus,deductions,gross_salary,net_salary,payment_status) VALUES
(1,'2026-07-01',145000,5000,10000,15000,160000,145000,'Paid'),
(2,'2026-07-01',78000,2500,5000,8000,85500,77500,'Paid'),
(3,'2026-07-01',72000,0,3000,7000,75000,68000,'Paid'),
(4,'2026-07-01',65000,0,0,6500,65000,58500,'Paid'),
(5,'2026-07-01',110000,5000,8000,12000,123000,111000,'Paid'),
(6,'2026-07-01',52000,0,2000,5000,54000,49000,'Paid'),
(7,'2026-07-01',125000,3000,9000,13000,137000,124000,'Paid'),
(8,'2026-07-01',69000,1000,3000,7000,73000,66000,'Paid'),
(9,'2026-07-01',118000,5000,7000,12000,130000,118000,'Paid'),
(10,'2026-07-01',57000,0,2000,6000,59000,53000,'Paid'),
(11,'2026-07-01',130000,4000,8000,14000,142000,128000,'Paid'),
(12,'2026-07-01',50000,0,1000,5000,51000,46000,'Paid'),
(13,'2026-07-01',72000,1500,3000,7000,76500,69500,'Paid'),
(14,'2026-07-01',56000,0,1000,5500,57000,51500,'Paid'),
(15,'2026-07-01',69000,2000,2000,7000,73000,66000,'Paid'),
(16,'2026-07-01',48000,0,1000,4800,49000,44200,'Paid'),
(17,'2026-07-01',73000,1000,3000,7500,77000,69500,'Paid'),
(18,'2026-07-01',61000,2000,2000,6500,65000,58500,'Paid'),
(19,'2026-07-01',85000,1000,4000,8500,90000,81500,'Paid'),
(20,'2026-07-01',45000,0,1000,4500,46000,41500,'Paid');
