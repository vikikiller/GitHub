--1.Создать таблицу employees
create table employees(
       id serial primary key,
       employee_name varchar(50) not null
);

--2.Наполнить таблицу employee 70 строками.
insert into employees (employee_name)
values ('Сусаренко Йошка'),
(' Мельников Денис'),
(' Шарапов Ким'),
(' Панфилов Родион'),
(' Потапов Зенон'),
(' Мирный Максим'),
(' Потапов Юлиан'),
(' Миклашевский Родион'),
(' Лапин Цефас'),
(' Андрухович Цезарь'),
(' Большаков Юлиан'),
(' Ширяев Глеб'),
(' Гриневская Никита'),
(' Фадеев Казбек'),
(' Василенко Тимофей'),
(' Маслов Вадим'),
(' Бутко Феликс'),
(' Зыков Захар'),
(' Емельянов Трофим'),
(' Самойлов Яков'),
(' Семёнов Ян'),
(' Максимов Ефим'),
(' Гущин Павел'),
(' Зимин Бронислав'),
(' Карпов Давид'),
(' Бутко Жигер'),
(' Филиппов Игнат'),
(' Иващенко Йосеф'),
(' Карпов Адриан'),
(' Пономарёв Михаил'),
(' Крюков Тимофей'),
(' Правый Йоханес'),
(' Шуфрич Ленар'),
(' Бородай Шамиль'),
(' Многогрешный Чарльз'),
(' Ефремов Макар'),
(' Комаров Устин'),
(' Панов Болеслав'),
(' Родионов Устин'),
(' Мясников Прохор'),
(' Куликов Тимофей'),
(' Силин Ленар'),
(' Соколов Цезарь'),
(' Дементьев Никита'),
(' Белозёров Герман'),
(' Аксёнов Георгий'),
(' Гелетей Иннокентий'),
(' Селезнёв Яромир'),
(' Давыдов Осип'),
(' Шумило Чеслав'),
(' Елисеев Шерлок'),
(' Дорофеев Тит'),
(' Уваров Заур'),
(' Плаксий Радислав'),
(' Карпенко-Карый Зигмунд'),
(' Легойда Леопольд'),
(' Красильников Шерлок'),
(' Миронов Остап'),
(' Щукин Роберт'),
(' Ершов Тит'),
(' Гурьев Иннокентий'),
(' Медведев Кристиан'),
(' Батейко Иван'),
(' Королёв Алексей'),
(' Филиппов Остап'),
(' Евдокимов Михаил'),
(' Мазайло Эрик'),
(' Лукин Ким'),
(' Рябов Егор'),
(' Хованский Леон ');

--3.Создать таблицу salary
create table salary_1(
id serial primary key unique,
monthly_salary int not null 
);

--4.Наполнить таблицу salary 15 строками
insert into salary_1(monthly_salary)
values (1000),
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
       (2500);

--5.Создать таблицу employee_salary
create table employee_salary(
  id serial primary key,
  id_employees int not null unique,
  id_salary_1 int not null 
);

     
--6.Наполнить таблицу employee_salary 40 строками
insert into employee_salary(id_employees, id_salary_1)
values (3, 7),
       (1, 4),
       (5, 9),
       (40, 13),
       (23, 4),
       (11, 2),
       (52, 10),
       (15, 13),
       (26, 4),
       (16, 1),
       (33, 7),
       (14,16),
       (50, 5),
       (66, 11),
       (19, 1),
       (17, 2),
       (20, 3),
       (67, 15),
       (68, 5),
       (18, 6),
       (55, 7),
       (29, 14),
       (57, 9),
       (56, 10),
       (54, 11),
       (63, 5),
       (47, 6),
       (35, 8),
       (34, 9),
       (69, 13),
       (90, 1),
       (81, 2),
       (80, 3),
       (79, 14),
       (78, 8),
       (76, 6),
       (75, 15),
       (74, 8),
       (72, 9),
       (71, 10);
             

--7. Создать таблицу roles

create table roles_1(
id serial primary key,
role_name int not null unique
);

--8.Поменять тип столба role_name с int на varchar(30)
alter table roles_1 
alter column role_name type varchar(30);

--9.Наполнить таблицу roles 20 строками:

insert into roles_1(role_name)
values('Junior Python developer'),
(' Middle Python developer'),
(' Senior Python developer'),
(' Junior Java developer'),
(' Middle Java developer'),
(' Senior Java developer'),
(' Junior JavaScript developer'),
(' Middle JavaScript developer'),
(' Senior JavaScript developer'),
(' Junior Manual QA engineer'),
(' Middle Manual QA engineer'),
(' Senior Manual QA engineer'),
(' Project Manager'),
(' Designer'),
(' HR'),
(' CEO'),
(' Sales manager'),
(' Junior Automation QA engineer'),
(' Middle Automation QA engineer'),
(' Senior Automation QA engineer');

--10.Создать таблицу roles_employee

create table roles_employee(
       id serial primary key,
       id_employee int not null unique,
       id_role int not null, 
            foreign key (id_employee)
            references employees(id),
              foreign key (id_role)
              references roles_1(id)
);

--11.Наполнить таблицу roles_employee 40 строками

insert into roles_employee(id_employee, id_role)
values (7, 2),
       (13, 4),
       ( 3, 9),
       ( 5, 13),
       ( 9, 4),
       ( 11, 2),
       ( 10, 9),
       ( 14, 13),
       ( 12, 3),
       ( 6, 7),
       ( 1,20),
       ( 2, 14),
       ( 4, 17),
       ( 8, 18 ),
       ( 15, 2),
       ( 16, 5),
       ( 17, 8),
       ( 18, 9),
       ( 19, 1),
       ( 20, 19),
       ( 21, 4),
       ( 22, 7),
       ( 23, 10),
       ( 24, 16),
       ( 34, 1),
       ( 35, 13),
       ( 36, 17),
       ( 37, 2),
       ( 38, 6),
       ( 39, 9),
       ( 40, 4),
       ( 25, 15),
       ( 26, 19),
       ( 27, 7),
       ( 28, 10),
       ( 29, 14),
       ( 30, 3),
       ( 31, 2),
       ( 32, 17),
       ( 33, 16);
  