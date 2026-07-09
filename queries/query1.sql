SELECT employee_id, first_name, last_name, IFNULL(commission_pct, 0) as commission_amount
FROM hr.employees
WHERE department_id = 50
LIMIT 100
