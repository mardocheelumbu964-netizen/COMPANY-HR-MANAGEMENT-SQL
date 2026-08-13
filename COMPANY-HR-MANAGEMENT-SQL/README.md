# Company Management & HR Analytics System

A complete MySQL portfolio project for a medium-sized company.

## Project Overview

This database manages employees, departments, managers, job positions, salaries,
attendance, leave, performance, skills, projects, clients, locations,
project assignments and payroll.

The project demonstrates practical SQL skills from database design through
advanced business analytics.

## Main Modules

- Employee Management
- Department Management
- Job Positions
- Company Locations
- Managers
- Salary History
- Attendance
- Leave Management
- Employee Performance
- Skills & Employee Skills
- Clients
- Projects
- Project Assignments
- Payroll

## SQL Skills Demonstrated

- DDL and DML
- Primary and Foreign Keys
- UNIQUE, NOT NULL and CHECK constraints
- One-to-many and many-to-many relationships
- INNER JOIN
- LEFT JOIN
- Self JOIN
- GROUP BY / HAVING
- CASE
- Subqueries
- Common Table Expressions (CTEs)
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- LAG()
- Views
- Stored Procedures
- Triggers
- Indexes
- Business KPI analysis

## Project Structure

```text
Complete_Company_HR_SQL_Project/
├── README.md
├── database/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_constraints.sql
│   └── 04_insert_sample_data.sql
├── queries/
│   ├── 01_basic_queries.sql
│   ├── 02_joins.sql
│   ├── 03_aggregations.sql
│   ├── 04_subqueries.sql
│   ├── 05_cte.sql
│   ├── 06_window_functions.sql
│   └── 07_hr_business_analysis.sql
├── views/
│   └── hr_reporting_views.sql
├── procedures/
│   └── hr_procedures.sql
├── triggers/
│   └── hr_triggers.sql
├── indexes/
│   └── performance_indexes.sql
└── reports/
    └── business_questions.md
```

## How to Run

Use MySQL 8.0+.

Run these database files in order:

1. `01_create_database.sql`
2. `02_create_tables.sql`
3. `03_constraints.sql`
4. `04_insert_sample_data.sql`

Then run the query, view, procedure and trigger files.

## Business Questions

The project answers questions such as:

1. Who are the highest-paid employees?
2. Which department has the highest salary cost?
3. Which employees earn above their department average?
4. Who are the top performers?
5. Which employees have poor attendance?
6. Which skills are most common?
7. Which projects have the highest budgets?
8. Which employees work on multiple projects?
9. What is monthly payroll expenditure?
10. Which departments have the highest average salary?
11. Which employees have received salary increases?
12. Which employees are approaching their anniversary?
13. What is the average performance score by department?
14. Which projects are over budget?
15. What is the total company payroll?



## Author

Mardochee Lumbu
