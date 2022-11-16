select employee_name,employees.id, salary1.month_salary  
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary1
on employee_salary.salary_id = salary1.id;

select employee_name,employees.id, salary1.month_salary  
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary1
on employee_salary.salary_id = salary1.id
where month_salary < 2000;

select employee_name,employees.id, salary1.month_salary  
from employees join employee_salary
on employees.id = employee_salary.employee_id
left join salary1
on employee_salary.salary_id = salary1.id
;

select employees.employee_name, employee_salary.salary_id salary1, salary1.month_salary 
from employees join employee_salary
on employees.id = employee_salary.employee_id
left join salary1
on employee_salary.salary_id = salary1.id
where month_salary is null;

select employees.employee_name, employee_salary.salary_id salary1, salary1.month_salary 
from employees join employee_salary
on employees.id = employee_salary.employee_id
left join salary1
on employee_salary.salary_id = salary1.id
where month_salary is null;

select employees.employee_name, roles1.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles_employee.role_id = roles1.id;

select employees.employee_name, roles1.role_name 
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles_employee.role_id = roles1.id
where role_name like '%Java%';

select employees.employee_name, roles1.role_name
from employees join roles_employee
on roles_employee.employee_id = employees.id
join roles1
on roles1.id = roles_employee.role_id
where roles1.role_name like '%Python%';

select employees.employee_name, roles1.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id 
where roles1.role_name like '% QA engineer';

select employees.employee_name, roles1.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
where roles1.role_name like '%Manual%';

select employees.employee_name, roles1.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
where roles1.role_name like '%Automation%';

select employees.employee_name, salary1.month_salary
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where roles1.role_name like '%Junior%';


select employees.employee_name, salary1.month_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary1
on salary1.id  = employee_salary.salary_id
join roles_employee
on roles_employee.employee_id = employees.id
join roles1
on roles1.id = roles_employee.role_id
where roles1.role_name like '%Middle%';


select employees.employee_name, salary1.month_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary1
on salary1.id = employee_salary.salary_id
join roles_employee
on roles_employee.employee_id = employees.id
join roles1
on roles1.id = roles_employee.role_id 
where roles1.role_name like '%Senior%';

select salary1.month_salary
from salary1 join employee_salary
on salary1.id = employee_salary.salary_id
join employees
on employees.id = employee_salary.employee_id
join roles_employee
on roles_employee.employee_id = employees.id
join roles1
on roles1.id = roles_employee.role_id
where roles1.role_name like '%Java%';

select salary1.month_salary
from salary1 join employee_salary
on salary1.id = employee_salary.salary_id
join employees
on employees.id = employee_salary.employee_id
join roles_employee
on roles_employee.employee_id = employees.id
join roles1
on roles1.id = roles_employee.role_id
where roles1.role_name like '%Python%';

select employees.employee_name, salary1.month_salary
from salary1 join employee_salary
on salary1.id = employee_salary.salary_id
join employees
on employees.id = employee_salary.employee_id
join roles_employee
on roles_employee.employee_id = employees.id
join roles1
on roles1.id  = roles_employee.role_id 
where roles1.role_name like '%Junior Python%';

select employees.employee_name, salary1.month_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary1
on salary1.id = employee_salary.salary_id
join roles_employee
on roles_employee.employee_id = employees.id
join roles1
on roles1.id = roles_employee.role_id
where roles1.role_name like '%Middle JavaScript%';

select employees.employee_name, roles1.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where roles1.role_name like '%Junior% QA%';

select AVG(salary1.month_salary)
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where roles1.role_name like '%Junior%';

select SUM(salary1.month_salary)
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where roles1.role_name like '%JavaScript%';

select MIN(salary1.month_salary)
from employees join employee_salary
on employees.id = employee_salary.employee_id
join roles_employee
on roles_employee.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
join roles1
on roles1.id = roles_employee.role_id
where roles1.role_name like '%QA%';

select MAX(salary1.month_salary)
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where roles1.role_name like '%QA%';

select COUNT(roles1.role_name)
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where roles1.role_name like '%QA%';

select COUNT(roles1.role_name)
from employees join roles_employee
on employees.id = roles_employee.role_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where roles1.role_name like '%Middle%';

select COUNT(roles1.role_name)
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where roles1.role_name like '%developer%';

select SUM(salary1.month_salary)
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where roles1.role_name like '%developer%';

select employees.employee_name, roles1.role_name, salary1.month_salary
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
order by salary1.month_salary;

select employees.employee_name, roles1.role_name, salary1.month_salary
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where salary1.month_salary between 1700 and 2300;

select employees.employee_name, roles1.role_name, salary1.month_salary
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where salary1.month_salary < 2300;

select employees.id, roles1.role_name, salary1.month_salary
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles1
on roles1.id = roles_employee.role_id
join employee_salary
on employee_salary.employee_id = employees.id
join salary1
on salary1.id = employee_salary.salary_id
where salary1.month_salary = 1100 and 1500;