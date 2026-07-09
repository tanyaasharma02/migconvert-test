SELECT d.department_name, SUM(e.salary) as total_sal
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING SUM(e.salary) > 50000;
