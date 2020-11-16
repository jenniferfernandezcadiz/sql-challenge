-- list the following details of each employee: emp_no, last_name, first_name, gender and salary 

select employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary 
from employees
left join salaries on
employees.emp_no=salaries.emp_no;

-- list the employees who were hired in 1986
select first_name,last_name, hire_date
from employees
where hire_date between '1986-01-01' and '1987-01-01';

-- list the manager of each dept with the following info: dept_no,dept_name, manager's employee number, last_name, first_name, start and end dates

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date 
from departments 
join dept_manager 
on departments.dept_no = dept_manager.dept_no
join employees 
on dept_manager.emp_no=employees.emp_no;

-- List the department of each employee with the following info: emp_no, last_name, first_name, dept_name

select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
from employees
join dept_emp 
on employees.emp_no=dept_emp.emp_no
join departments 
on dept_emp.dept_no=departments.dept_no; 


-- list all employees whose first name is "Hercules" and last name begin with "B".
select employees.first_name, employees.last_name 
from employees
where first_name = 'Hercules' and last_name like 'B%';


-- List all employees in the Sales department, including their emp_no, last_name, first_name and dept_no 
select employees.emp_no, employees.first_name, employees.last_name, departments.dept_no
from employees 
join dept_emp
on employees.emp_no = dept_emp.emp_no
join departments
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

-- List all employees in Sales and Development departments, including emp_no, last_name, first_name, and dept_name 
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
on employees.emp_no=dept_emp.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e how many employees share each last name 

select last_name, count(last_name) as "Count" from employees
group by last_name 
order by count(last_name) desc; 













