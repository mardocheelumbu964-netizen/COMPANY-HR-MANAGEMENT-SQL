USE company_hr;

CREATE TABLE IF NOT EXISTS payroll_audit (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    payroll_id INT,
    employee_id INT,
    old_net_salary DECIMAL(12,2),
    new_net_salary DECIMAL(12,2),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TRIGGER IF EXISTS trg_payroll_update_audit;

DELIMITER //

CREATE TRIGGER trg_payroll_update_audit
AFTER UPDATE ON payroll
FOR EACH ROW
BEGIN
    IF OLD.net_salary <> NEW.net_salary THEN
        INSERT INTO payroll_audit
        (payroll_id,employee_id,old_net_salary,new_net_salary)
        VALUES
        (OLD.payroll_id,OLD.employee_id,OLD.net_salary,NEW.net_salary);
    END IF;
END //

DELIMITER ;
