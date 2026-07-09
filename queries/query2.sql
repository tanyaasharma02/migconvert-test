SELECT
    d.department_name,
    IFNULL(e.commission_pct * e.salary, 0) AS commission_amount,
    SUM(e.salary) AS total_salary
FROM
    hr.employees e
JOIN
    hr.departments d ON e.department_id = d.department_id
GROUP BY
    d.department_name
HAVING
    SUM(e.salary) > 50000;
