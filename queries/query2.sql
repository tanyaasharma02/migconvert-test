-- File: department_salary_report.sql
-- Description: Calculates total salary for each department, filtering for departments with a total salary greater than 50000.
-- Author: [Author's Name/Team]
-- Date: [YYYY-MM-DD]
-- Last Modified: [YYYY-MM-DD]

SELECT d.department_name, SUM(e.salary) as total_sal
FROM hr.employees e
JOIN hr.departments d ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING SUM(e.salary) > 50000;
