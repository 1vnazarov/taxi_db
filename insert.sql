USE master
USE taxi
-- Таксисты
INSERT INTO Employees (Name, Address) VALUES ('Давид Смирнов', 'Пушкина, 10')
INSERT INTO Employees (Name, Address) VALUES ('Мария Сорокина', 'пл. Сталина, 32')
INSERT INTO Employees (Name, Address) VALUES ('Арина Колосова', 'наб. Балканская, 36')
INSERT INTO Employees (Name, Address) VALUES ('Андрей Константинов', 'пер. Ломоносова, 47')
INSERT INTO Employees (Name, Address) VALUES ('Тимофей Федоров', 'пер. Домодедовская, 20')
INSERT INTO Employees (Name, Address) VALUES ('Лев Агафонов', 'пр. Гагарина, 70')
INSERT INTO Employees (Name, Address) VALUES ('Иван Гуров', 'проезд Косиора, 77')
INSERT INTO Employees (Name, Address) VALUES ('Семён Хохлов', 'пер. Бухарестская, 75')
INSERT INTO Employees (Name, Address) VALUES ('Артём Виноградов', 'ул. Славы, 72')
INSERT INTO Employees (Name, Address) VALUES ('Платон Осипов', 'шоссе Чехова, 22')

-- Машины
INSERT INTO Cars (ModelName, Brand, GovNumber, Mileage, ReleaseYear, LastRepair, CountryOfOrigin, Price, EmployeeID) VALUES
    ('Model S', 'Tesla', 'У508ТУ', 15000, 2018, '2022-05-10', 'США', 80000, 1),
    ('Civic', 'Honda', 'К214АХ', 50000, 2015, '2023-01-02', 'Япония', 15000, 2),
    ('Corolla', 'Toyota', 'А454ВС', 30000, 2017, '2023-02-25', 'Япония', 18000, 3),
    ('S-Class', 'Mercedes', 'Т576СН', 20000, 2019, '2023-06-14', 'Германия', 90000, 4),
    ('3 Series', 'BMW', 'Н185ММ', 40000, 2016, '2023-08-17', 'Германия', 40000, 5),
    ('Mustang', 'Ford', 'А912ТС', 10000, 2020, '2023-07-11', 'США', 30000, 6),
    ('Camry', 'Toyota', 'Р328АО', 60000, 2016, '2023-05-22', 'Япония', 20000, 7),
    ('Q7', 'Audi', 'Н226ОН', 30000, 2020, '2021-06-18', 'Германия', 70000, 8),
    ('Model 3', 'Tesla', 'С944КК', 5000, 2021, '2023-10-03', 'США', 50000, 9),
    ('Sportage', 'KIA', 'С316АМ', 300000, 2017, '2020-04-17', 'Южная Корея', 18000, 10)

-- Тарифы
INSERT INTO Tariffs (TariffName, PricePerKilometer) VALUES
('Эконом', 50),
('Комфорт', 75),
('Бизнес', 100)

-- Пассажиры
INSERT INTO Passengers (Name) VALUES ('Юрий Калачев')
INSERT INTO Passengers (Name) VALUES ('Виктория Орлова')
INSERT INTO Passengers (Name) VALUES ('Алиса Синицына')
INSERT INTO Passengers (Name) VALUES ('Никита Масленников')
INSERT INTO Passengers (Name) VALUES ('Вера Зайцева')
INSERT INTO Passengers (Name) VALUES ('Даниил Котов')
INSERT INTO Passengers (Name) VALUES ('Никита Ларин')
INSERT INTO Passengers (Name) VALUES ('Милана Фролова')
INSERT INTO Passengers (Name) VALUES ('Павел Жуков')
INSERT INTO Passengers (Name) VALUES ('Демьян Коротков')

-- Вызовы
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(1, '2023-11-11', '08:00:00', '08:30:00', 'Школа №15', 'Супермаркет Пятерочка', 8.0, 10, 'Наличными', 'Очень приветливый водитель', 1, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(2, '2023-11-02', '15:00:00', '15:45:00', 'ТЦ Мега', 'ул. Космонавтов, 16', 15.0, 0, 'Картой', 'Быстрый и аккуратный водитель', 2, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(3, '2023-11-02', '18:30:00', '19:00:00', 'ТЦ Европолис', 'улица Третья', 10.0, 0, 'Картой', 'Спасибо за поездку!', 3, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(4, '2023-11-03', '09:00:00', '09:30:00', 'Стадион', 'улица Мира', 5.0, 20, 'Наличными', 'Прекрасная машина', 4, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(5, '2023-11-04', '23:00:00', '23:20:00', 'Клуб Студент', 'Общежитие №2', 3.0, 0, 'Наличными', 'Благодарю за оперативность', 5, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(6, '2023-11-05', '12:00:00', '12:40:00', 'Ресторан Планета', 'ул. Строителей, 55', 12.0, 0, 'Кредитной картой', 'Удобное и комфортное такси', 6, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(7, '2023-11-06', '16:00:00', '16:25:00', 'Школа искусств', 'ТРЦ Рио', 6.0, 0, 'Картой', 'Отличный сервис', 7, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(8, '2023-11-07', '20:00:00', '20:50:00', 'Кинотеатр Родина', 'Зоопарк', 15.0, 0, 'Наличными', 'Все на высшем уровне!', 8, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(9, '2023-11-08', '07:00:00', '07:20:00', 'ул. Советская, 15', 'Супермаркет Магнит', 4.0, 15, 'Наличными', 'Вежливый водитель', 9, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(10, '2023-11-09', '22:00:00', '22:35:00', 'Стадион', 'улица Мира', 7.0, 0, 'Картой', 'Всегда буду пользоваться вашим такси', 10, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(1, '2023-11-11', '07:30:00', '07:45:00', 'площадь Ленина', 'улица Пушкина', 8, 3, 'Наличными', 'Отлично!', 1, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(2, '2023-10-21', '09:00:00', '09:22:00', 'проспект Мира', 'улица Первая', 10, 5, 'Картой', 'Средне', 2, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(3, '2023-10-22', '18:30:00', '19:45:00', 'улица Вторая', 'улица Третья', 35, 10, 'Картой', 'Хорошо', 3, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(4, '2023-10-23', '21:00:00', '21:30:00', 'улица Гагарина', 'улица Мира', 12, 2, 'Наличными', 'Ужасно!', 4, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(5, '2023-10-24', '07:30:00', '07:45:00', 'площадь Ленина', 'улица Гагарина', 7, 0, 'Картой', 'Отлично!', 5, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(6, '2023-10-25', '09:10:00', '09:50:00', 'площадь Мира', 'улица Первая', 17, 3, 'Наличными', 'Хорошо', 6, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(7, '2023-10-26', '18:45:00', '19:55:00', 'улица Пушкина', 'улица Вторая', 32, 7, 'Картой', 'Средне', 7, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(8, '2023-10-27', '21:30:00', '21:45:00', 'улица Пушкина', 'улица Мира', 8, 1, 'Наличными', 'Водитель двоечник', 8, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(9, '2023-10-28', '07:20:00', '07:35:00', 'улица Ленина', 'улица Гагарина', 6, 0, 'Картой', 'Отлично!', 9, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(10, '2023-10-29', '09:30:00', '09:55:00', 'улица Мира', 'улица Пушкина', 9, 4, 'Наличными', 'Средне', 10, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(4, '2023-10-23', '21:00:00', '21:30:00', 'улица Мира', 'Политехнический колледж городского хозяйства', 12, 2, 'Наличными', 'Продам гараж', 4, 1)

	select * from employees
	select * from passengers
	select * from calls where CallDate = DATEADD(day, -1, CAST(GETDATE() AS date))