SELECT employee_id, first_name, last_name, NVL(commission_pct, 0) as comm
FROM hr.employees
WHERE department_id = 50 AND ROWNUM <= 100;
