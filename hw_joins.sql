--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name from employees join employee_salary on employees.id = id_employees;

--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary from employees join employee_salary on employees.id = id_employees 
join salary_1 on id_salary_1 = salary_1.id 
where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary, id_employees from employee_salary join salary_1 on id_salary_1 = salary_1.id;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary, id_employees from employee_salary join salary_1 on id_salary_1 = salary_1.id where monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.
select  employee_name, monthly_salary  from employee_salary right join employees on id_employees = employees.id 
left  join salary_1 on id_salary_1 = salary_1.id
where id_salary_1 is null;

--6. Вывести всех работников с названиями их должности.
select employee_name, role_name from roles_employee join employees on id_employee = employees.id 
join roles_1 on id_role = roles_1.id;

--7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name from roles_employee right join employees on id_employee = employees.id 
left join roles_1 on id_role = roles_1.id
where role_name like '%Java developer'; 

--8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name from roles_employee join employees on id_employee = employees.id 
join roles_1 on id_role = roles_1.id 
where role_name like '%Python developer';

--9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name from roles_employee join employees on id_employee = employees.id
join roles_1 on id_role = roles_1.id 
where role_name like '%QA engineer';

--10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from roles_employee join employees on id_employee = employees.id 
join roles_1 on id_role = roles_1.id 
where role_name like '%Manual QA engineer';

--11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name from roles_employee join employees on id_employee = employees.id 
join roles_1 on id_role = roles_1.id 
where role_name like '%Automation QA engineer';

--12. Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary from employee_salary join employees on id_employees = employees.id 
join salary_1 on id_salary_1 = salary_1.id
join roles_employee on employees.id = id_employee
join roles_1 on id_role = roles_1.id
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select employee_name, monthly_salary from employee_salary join employees on id_employees = employees.id 
join salary_1 on id_salary_1 = salary_1.id
join roles_employee on employees.id = id_employee
join roles_1 on id_role = roles_1.id
where role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary from employee_salary join employees on id_employees = employees.id 
join salary_1 on id_salary_1 = salary_1.id
join roles_employee on employees.id = id_employee
join roles_1 on id_role = roles_1.id
where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков
select monthly_salary from salary_1  join employee_salary on id_salary_1 = salary_1.id
join employees on id_employees = employees.id 
join roles_employee on id_employee = employees.id
join roles_1 on roles_1.id = id_role
where role_name like '%Java developer%';

--16. Вывести зарплаты Python разработчиков
select monthly_salary from salary_1  join employee_salary on id_salary_1 = salary_1.id
join employees on id_employees = employees.id 
join roles_employee on id_employee = employees.id
join roles_1 on roles_1.id = id_role
where role_name like '%Python developer%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select employee_name, monthly_salary from employee_salary join employees on id_employees = employees.id 
join salary_1 on id_salary_1 = salary_1.id
join roles_employee on employees.id = id_employee
join roles_1 on id_role = roles_1.id
where role_name like '%Junior Python developer%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select employee_name, monthly_salary from employee_salary join employees on id_employees = employees.id 
join salary_1 on id_salary_1 = salary_1.id
join roles_employee on employees.id = id_employee
join roles_1 on id_role = roles_1.id
where role_name like '%Middle JavaScript developer%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary from employee_salary join employees on id_employees = employees.id 
join salary_1 on id_salary_1 = salary_1.id
join roles_employee on employees.id = id_employee
join roles_1 on id_role = roles_1.id
where role_name like '%Senior Java developer%';

--20. Вывести зарплаты Junior QA инженеров !!!!!!!!!!!не решено
select monthly_salary from salary_1  join employee_salary on id_salary_1 = salary_1.id
join employees on id_employees = employees.id 
join roles_employee on id_employee = employees.id
join roles_1 on roles_1.id = id_role
where role_name like '% Junior % QA engineer%';

--21. Вывести среднюю зарплату всех Junior специалистов
select AVG(monthly_salary) ms from salary_1 join employee_salary on id_salary_1 = salary_1.id
join employees on id_employees = employees.id 
join roles_employee on id_employee = employees.id
join roles_1 on roles_1.id = id_role
where role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) ms from salary_1 join employee_salary on id_salary_1 = salary_1.id
join employees on id_employees = employees.id 
join roles_employee on id_employee = employees.id
join roles_1 on roles_1.id = id_role
where role_name like '%JavaScript developer%';

--23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) ms from salary_1 join employee_salary on id_salary_1 = salary_1.id
join employees on id_employees = employees.id 
join roles_employee on id_employee = employees.id
join roles_1 on roles_1.id = id_role
where role_name like '%QA engineer%';

--24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) ms from salary_1 join employee_salary on id_salary_1 = salary_1.id
join employees on id_employees = employees.id 
join roles_employee on id_employee = employees.id
join roles_1 on roles_1.id = id_role
where role_name like '%QA engineer%';

--25. Вывести количество QA инженеров
select count(id_role) from roles_1  join roles_employee  on roles_1.id = id_role
where role_name like '%QA engineer%';

--26. Вывести количество Middle специалистов.
select count(role_name) from roles_1  join roles_employee on roles_1.id = id_role
where role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(role_name) from roles_employee join roles_1 on roles_1.id = id_role
where role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) from employee_salary join salary_1 on salary_1.id = id_salary_1;

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name , role_name, monthly_salary from roles_employee full join employees on id_employee = employees.id 
join roles_1 on id_role = roles_1.id  
join employee_salary on id_employees = employees.id
join salary_1 on salary_1.id = id_salary_1
order by monthly_salary asc;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name , role_name, monthly_salary from roles_employee full join employees on id_employee = employees.id 
join roles_1 on id_role = roles_1.id  
join employee_salary on id_employees = employees.id
join salary_1 on salary_1.id = id_salary_1
where monthly_salary between 1700 and 2300;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name , role_name, monthly_salary from roles_employee full join employees on id_employee = employees.id 
join roles_1 on id_role = roles_1.id  
join employee_salary on id_employees = employees.id
join salary_1 on salary_1.id = id_salary_1
where monthly_salary < 2300;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name , role_name, monthly_salary from roles_employee full join employees on id_employee = employees.id 
join roles_1 on id_role = roles_1.id  
join employee_salary on id_employees = employees.id
join salary_1 on salary_1.id = id_salary_1
where monthly_salary in (1100, 1500, 2000);





