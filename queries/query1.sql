-- This query retrieves employee details, calculating commission, for a specific department.
-- It filters for employees in department 50 and limits the result set to 500 records.

SELECT employee_id, first_name, last_name, IFNULL(commission_pct, 0) AS commission_amount
FROM hr.employees
WHERE department_id = 50
LIMIT 500;
