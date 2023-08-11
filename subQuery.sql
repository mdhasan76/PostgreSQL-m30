SELECT * from employees_data WHERE salary=(
    SELECT max(salary) from employees_data
);

SELECT name, (
    select avg(salary) from employees_data
) from employees_data;

select dept_id , avg_salary from (
    select dept_id, avg(salary) as avg_salary from employees_data GROUP BY dept_id
) as TEMPTable 
JOIN department d on dept_id = d.deptId;


-- view 
CREATE VIEW view_name as SELECT name from employees_data;
SELECT name, count(*) from view_name GROUP BY name;