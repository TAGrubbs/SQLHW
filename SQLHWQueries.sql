SELECT e.emp_no, e.first_name, e.last_name, e.gender, s.salary
FROM "Employees" e
INNER JOIN "Salaries" s ON
e.emp_no=s.emp_no;

SELECT * FROM "Employees"
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

select dm.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name, dm.from_date, dm.to_date
from "Dept_Manager" dm
inner join "Employees" e on dm.emp_no=e.emp_no
inner join "Departments" d on dm.dept_no=d.dept_no;

select e.emp_no,  e.last_name, e.first_name, d.dept_name
from "Dept_Emp" de
inner join "Employees" e on de.emp_no=e.emp_no
inner join "Departments" d on de.dept_no=d.dept_no;

select * from "Employees"
where first_name = 'Hercules' and last_name like 'B%';

select e.emp_no, e.first_name, e.last_name, d.dept_name
from "Dept_Emp" de
inner join "Departments" d on de.dept_no=d.dept_no
inner join "Employees" e on de.emp_no=e.emp_no
where dept_name = 'Sales';

select e.emp_no, e.first_name, e.last_name, d.dept_name
from "Dept_Emp" de
inner join "Departments" d on de.dept_no=d.dept_no
inner join "Employees" e on de.emp_no=e.emp_no
where dept_name = 'Sales' or dept_name = 'Development'
select * from "Departments";

SELECT last_name, COUNT(emp_no) AS "Total_of_Name"
FROM "Employees"
GROUP BY last_name
ORDER BY "Total_of_Name" DESC;