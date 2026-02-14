-- models/employees.sql

{{ config(
    materialized='table'
) }}

SELECT 
    id,
    first_name,
    last_name,
    department,
    salary
FROM 
    {{ ref('source_employees') }}
