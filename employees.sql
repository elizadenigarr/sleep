SELECT * from employees e
where e.salary<(select avg(emp.salary) from employees emp
                where emp.department_id=e.department_id);
 
     select emp.employee_id, 
            emp.first_name, 
            emp.last_name
       from employees emp
      where  not exists (select 1
                          from job_history his
                         where emp.employee_id = his.employee_id);
                         
select emp.employee_id, 
            emp.first_name, 
            emp.last_name
       from employees emp
left join job_history his
on emp.employee_id=his.employee_id
where his.employee_id is null;


select e.first_name,e.last_name,j.job_title,e.department_id,e.salary from employees e
inner join jobs j 
on e.job_id=j.job_id
where e.salary=(select round(avg(m.salary)) from employees m
                where to_char(m.hire_date,'mm') in (01,02,03));


select e.first_name,e.last_name,e.salary,e.employee_id from employees e
join employees m
on e.manager_id=m.employee_id
where m.first_name='Payam';

select first_name,last_name,salary,employee_id from employees e
where e.manager_id= (select m.employee_id from employees m
                     where m.first_name='Payam');


