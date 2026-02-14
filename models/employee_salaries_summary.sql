-- models/employee_salaries_summary.sql

{{ config(
    materialized='table'
) }}

SELECT 
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary,
    SUM(salary) AS total_salary
FROM 
    {{ ref('employees') }}
GROUP BY 
    department
