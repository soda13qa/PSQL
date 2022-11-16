create table salary(
id serial primary key,
monthly_salary int not null
);

create table roles(
id serial primary key,
role_title varchar(50) unique not null
);

alter table roles
add column parking int;

alter table roles
rename column parking to taxi;

alter table roles 
drop column taxi;


insert into salary(monthly_salary)
values(800),
	  (900),
	  (1000),
	  (1200),
	  (1400),
	  (1500);

update salary
set monthly_salary = 1000
where id = 2;


delete from salary where id = 7;
select * from salary;

insert into roles(role_title)
values('Junior_qa'),
	  ('Middle_qa'),
	  ('Senior_qa'),
	  ('Junior_java_developer'),
	  ('Middle_java_developer'),
	  ('Senior_java_developer');
	  
select * from roles;

create table roles_salary(
id serial primary key,
id_role int not null,
id_salary int not null,
foreign key(id_role)
	references roles(id),
foreign key(id_salary)
	references salary(id)
);

  
	 
	 
select * from roles_salary;