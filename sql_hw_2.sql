--������� ������� employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--��������� ������� employee 70 ��������.
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
insert into employees (employee_name)
	values ('��������'),
		   ('����� ������'),
		   ('����� �������'),
		   ('����� ���������'),
		   ('��������'),
		   ('������� �����'),
		   ('��� ����'),
		   ('������ ���������'),
		   ('��������� ������'),
		   ('������� ��������'),
		   ('��� ������'),
		   ('�������, �������'),
		   ('����������'),
		   ('������'),
		   ('������'),
		   ('������ ������'),
		   ('���� ��������'),
		   ('�������� ������'),
		   ('������� ��������'),
		   ('������ ��������'),
		   ('���������� I �������'),
		   ('������ ����'),
		   ('����� �������'),
		   ('������ ��������'),
		   ('������ �����'),
		   ('������ ���������'),
		   ('���� �����'),
		   ('������ ����'),
		   ('���������'),
		   ('���� ����'),
		   ('�������'),
		   ('���� �������'),
		   ('��������� �����������'),
		   ('�������� I'),
		   ('����� ������'),
		   ('������ ��� ��������'),
		   ('������ ������'),
		   ('��������� �������'),
		   ('������'),
		   ('������ ��������'),
		   ('��������� ����'),
		   ('��������� �������'),
		   ('���� ����'),
		   ('������ ��� ��������'),
		   ('������ ����������'),
		   ('��� �����'),
		   ('����� �������'),
		   ('���� ������'),
		   ('������������'),
		   ('����� II'),
		   ('���� ��� ���-������'),
		   ('�����'),
		   ('������� ��������'),
		   ('������ ������'),
		   ('������ ���������'),
		   ('��� �������'),
		   ('������ �������'),
		   ('���� �����'),
		   ('������ ������'),
		   ('�������� ����'),
		   ('��������� �������'),
		   ('����� ������'),
		   ('����� ����������'),
		   ('����� ������'),
		   ('���� ������'),
		   ('������� �����'),
		   ('������ �������'),
		   ('��������� �������'),
		   ('������ ���'),
		   ('���-���');
select * from employees;

--������� ������� salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--��������� ������� salary 15 ��������:
create table salary (
	id serial primary key,
	monthly_salary int not null
);
select * from salary;
insert into salary (monthly_salary)
	values  (1000),
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
select * from salary;

--������� ������� employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--��������� ������� employee_salary 40 ��������:
-- � 10 ����� �� 40 �������� �������������� employee_id

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);
select * from employee_salary;

insert into employee_salary (employee_id, salary_id)
	values (1,1),
		   (2,2),
		   (3,3),
		   (4,4),
		   (5,5),
		   (6,6),
		   (7,7),
		   (8,8),
		   (9,9),
		   (10,10),
		   (11,11),
		   (12,12),
		   (13,13),
		   (14,14),
		   (15,15),
		   (16,16),
		   (17,17),
		   (18,18),
		   (19,19),
		   (20,20),
		   (21,21),
		   (22,22),
		   (23,23),
		   (24,24),
		   (25,25),
		   (26,26),
		   (27,27),
		   (28,28),
		   (29,29),
		   (77,30),
		   (76,31),
		   (66,32),
		   (55,33),
		   (78,34),
		   (89,35),
		   (79,36),
		   (56,37),
		   (67,38),
		   (99,39),
		   (64,40);

select * from employee_salary;

--������� ������� roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--�������� ��� ������ role_name � int �� varchar(30)
--��������� ������� roles 20 ��������:

create table roles(
	id serial primary key,
	role_name int not null unique
);
select * from roles;

alter table roles
alter column role_name type varchar(40) using role_name::varchar(30);
select * from roles;

insert into roles (role_name)
	values	('Junior Python developer'),
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
			('Middle Automation QA engineer');
insert into roles (role_name)
	values ('Senior Automation QA engineer');


--������� ������� roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
--role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
--��������� ������� roles_employee 40 ��������:

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);
select * from roles_employee;

--insert into roles_employee(
	
--)