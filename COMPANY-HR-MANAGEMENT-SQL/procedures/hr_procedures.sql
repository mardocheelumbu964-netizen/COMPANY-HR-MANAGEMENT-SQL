USE company_hr;

DROP PROCEDURE IF EXISTS GetEmployeesByDepartment;
DROP PROCEDURE IF EXISTS GetDepartmentSalarySummary;
DROP PROCEDURE IF EXISTS GetEmployeePayroll;

DELIMITER //

CREATE PROCEDURE GetEmployeesByDepartment(IN p_department_id INT)
BEGIN
    SELECT
        employee_id,
        CONCAT(first_name,' ',last_name) AS employee_name,
        current_salary
    FROM employees
    WHERE department_id = p_department_id
    ORDER BY current_salary DESC;
END //

CREATE PROCEDURE GetDepartmentSalarySummary(IN p_department_id INT)
BEGIN
    SELECT
        d.department_name,
        COUNT(e.employee_id) AS employee_count,
        ROUND(AVG(e.current_salary),2) AS average_salary,
        SUM(e.current_salary) AS total_salary
    FROM departments d
    LEFT JOIN employees e ON d.department_id = e.department_id
    WHERE d.department_id = p_department_id
    GROUP BY d.department_name;
END //

CREATE PROCEDURE GetEmployeePayroll(IN p_employee_id INT)
BEGIN
    SELECT *
    FROM payroll
    WHERE employee_id = p_employee_id
    ORDER BY pay_month DESC;
END //

DELIMITER ;

-- Examples:
-- CALL GetEmployeesByDepartment(1);
-- CALL GetDepartmentSalarySummary(1);
-- CALL GetEmployeePayroll(1);
