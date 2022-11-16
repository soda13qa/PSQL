create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('Юрий'),
('Святослав'),
('Яков'),
('Зура'),
('Ждан'),
('Ждан'),
('Никита'),
('Платон'),
('Шамиль'),
('Трофим'),
('Людовик'),
('Богдан'),
('Бронислав'), 
('Влад'),
('Геннадий'),
('Данила'),
('Юлиан'),
('Альберт'), 
('Устин'),
('Лоренс'), 
('Денис'), 
('Эрик'),
('Осип'),
('Орест'),
('Трофим'),
('Эдуард'),
('Конрад'),
('Люций'),
('Тимофей'), 
('Юрий'),
('Шерлок'),
('Мирослав'),
('Бронислав'),
('Цицерон'),
('Добрыня'),
('Ника'),
('Беатриса'),
('Алла'),
('Йоланта'),
('Грета'),
('Ирина'),
('Яна'),
('Нина'),
('Шушана'),
('Яся'),
('Елена'),
('Клавдия'),
('Пелагея'),
('Майя'),
('Харитина'),
('Ульяна'),
('Жозефина'),
('Прасковья'),
('Юзефа'),
('Ульяна'),
('Тамара'),
('Люся'),
('Ульяна'),
('Цветелина'),
('Изольда'),
('Екатерина'),
('Цветелина'),
('Розалина'),
('Глафира'),
('Алёна'),
('Изабелла'),
('Клара'),
('Дарья'),
('Шанетта'),
('Эльмира');

select * from employees;


create table salary1(
id serial primary key,
month_salary Int not null
);

insert into salary1(month_salary)
values(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from salary1;

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values(1,2),
(2,1),
(3,1),
(4,2),
(5,3),
(6,9),
(7,5),
(8,11),
(9,16),
(10,22),
(11,7),
(12,4),
(13,28),
(14,6),
(15,77),
(16,12),
(17,8),
(18,13),
(19,7),
(20,3),
(21,15),
(22,116),
(23,13),
(24,11),
(25,14),
(26,16),
(27,13),
(28,72),
(29,5),
(30,40),
(32,3),
(33,96),
(34,10),
(35,6),
(36,56),
(37,4),
(38,10),
(39,24),
(40,19);

select * from employee_salary;

create table roles1(
id serial primary key,
role_name int not null unique
);

alter table roles1 alter column role_name type varchar(30) using (role_name::varchar(30));

select * from roles1;

insert into roles1(role_name)
values('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key(employee_id)
	references employees(id),
foreign key(role_id)
	references roles1(id)
);

insert into roles_employee(employee_id, role_id)
values(1,2),
(2,4),
(3,4),
(4,13),
(5,17),
(6,11),
(7,2),
(8,20),
(9,20),
(10,2),
(11,3),
(12,4),
(13,5),
(14,8),
(15,9),
(16,1),
(17,19),
(18,18),
(19,17),
(20,11),
(21,12),
(22,13),
(23,14),
(24,15),
(25,16),
(26,17),
(27,6),
(28,5),
(29,4),
(30,2),
(31,3),
(32,1),
(33,10),
(35,19),
(36,8),
(37,15),
(38,14),
(39,7),
(40,16);


select * from roles_employee;
select * from roles1;
select * from employees;
select * from employee_salary;
select * from salary1;