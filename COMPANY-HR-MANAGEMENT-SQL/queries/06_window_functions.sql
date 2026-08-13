USE company_hr;

-- Salary ranking across the company
SELECT
    employee_id,
    CONCAT(first_name,' ',last_name) AS employee_name,
    current_salary,
    RANK() OVER (ORDER BY current_salary DESC) AS salary_rank
FROM employees;

-- Salary ranking within each department
SELECT
    employee_id,
    CONCAT(first_name,' ',last_name) AS employee_name,
    department_id,
    current_salary,
    DENSE_RANK() OVER (
        PARTITION BY department_id
        ORDER BY current_salary DESC
    ) AS department_salary_rank
FROM employees;

-- Top 2 employees in each department
WITH ranked_employees AS (
    SELECT
        employee_id,
        first_name,
        last_name,
        department_id,
        current_salary,
        ROW_NUMBER() OVER (
            PARTITION BY department_id
            ORDER BY current_salary DESC
        ) AS rn
    FROM employees
)
SELECT *
FROM ranked_employees
WHERE rn <= 2;

-- Salary history comparison
SELECT
    employee_id,
    effective_date,
    salary,
    LAG(salary) OVER (
        PARTITION BY employee_id
        ORDER BY effective_date
    ) AS previous_salary
FROM salary_history;
