--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);
insert into employees (employee_name)
	values ('Мухаммед'),
		   ('Исаак Ньютон'),
		   ('Иисус Христос'),
		   ('Будда Шакьямуни'),
		   ('Конфуций'),
		   ('Апостол Павел'),
		   ('Цай Лунь'),
		   ('Иоганн Гутенберг'),
		   ('Христофор Колумб'),
		   ('Альберт Эйнштейн'),
		   ('Луи Пастер'),
		   ('Галилей, Галилео'),
		   ('Аристотель'),
		   ('Евклид'),
		   ('Моисей'),
		   ('Чарльз Дарвин'),
		   ('Цинь Шихуанди'),
		   ('Октавиан Август'),
		   ('Николай Коперник'),
		   ('Антуан Лавуазье'),
		   ('Константин I Великий'),
		   ('Джеймс Уатт'),
		   ('Майкл Фарадей'),
		   ('Джеймс Максвелл'),
		   ('Мартин Лютер'),
		   ('Джордж Вашингтон'),
		   ('Карл Маркс'),
		   ('Братья Райт'),
		   ('Чингисхан'),
		   ('Адам Смит'),
		   ('Шекспир'),
		   ('Джон Дальтон'),
		   ('Александр Македонский'),
		   ('Наполеон I'),
		   ('Томас Эдисон'),
		   ('Антони ван Левенгук'),
		   ('Уильям Мортон'),
		   ('Гульельмо Маркони'),
		   ('Платон'),
		   ('Оливер Кромвель'),
		   ('Александр Белл'),
		   ('Александр Флеминг'),
		   ('Джон Локк'),
		   ('Людвиг ван Бетховен'),
		   ('Вернер Гейзенберг'),
		   ('Луи Дагер'),
		   ('Симон Боливар'),
		   ('Рене Декарт'),
		   ('Микеланджело'),
		   ('Урбан II'),
		   ('Умар ибн аль-Хаттаб'),
		   ('Ашока'),
		   ('Аврелий Августин'),
		   ('Уильям Гарвей'),
		   ('Эрнест Резерфорд'),
		   ('Жан Кальвин'),
		   ('Грегор Мендель'),
		   ('Макс Планк'),
		   ('Джозеф Листер'),
		   ('Николаус Отто'),
		   ('Франсиско Писарро'),
		   ('Эрнан Кортес'),
		   ('Томас Джефферсон'),
		   ('Иосиф Сталин'),
		   ('Юлий Цезарь'),
		   ('Зигмунд Фрейд'),
		   ('Эдвард Дженнер'),
		   ('Вильгельм Рентген'),
		   ('Иоганн Бах'),
		   ('Лао-цзы');
select * from employees;

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
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

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

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

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

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


--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

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