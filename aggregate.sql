-- ## Get avarege salary 
SELECT AVG(salary) as avarege_salary from employees_data;


-- ## Get total salary
SELECT dept_id, SUM(salary) as total_salary from employees_data  GROUP BY dept_id ;

-- ## Grouping aggregate 
SELECT d.dept_name ,AVG(e.salary), SUM(salary), MAX(salary)  from employees_data e FULL JOIN department d on e.dept_id = d.deptid GROUP BY d.dept_name HAVING d.dept_name = 'Marketing';

-- ## Grouping aggregate 
SELECT d.dept_name ,AVG(e.salary), SUM(salary), MAX(salary)  from employees_data e FULL JOIN department d on e.dept_id = d.deptid GROUP BY d.dept_name HAVING AVG(e.salary) < 70000;

-- ## reverse way of grouping aggregate 
SELECT d.deptid, sum(salary), max(salary), count(*) from department d FULL join employees_data e on e.dept_id  = d.deptid GROUP BY d.deptId;
