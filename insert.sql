USE master
USE taxi
-- ��������
INSERT INTO Employees (Name, Address) VALUES ('����� �������', '�������, 10')
INSERT INTO Employees (Name, Address) VALUES ('����� ��������', '��. �������, 32')
INSERT INTO Employees (Name, Address) VALUES ('����� ��������', '���. ����������, 36')
INSERT INTO Employees (Name, Address) VALUES ('������ ������������', '���. ����������, 47')
INSERT INTO Employees (Name, Address) VALUES ('������� �������', '���. �������������, 20')
INSERT INTO Employees (Name, Address) VALUES ('��� ��������', '��. ��������, 70')
INSERT INTO Employees (Name, Address) VALUES ('���� �����', '������ �������, 77')
INSERT INTO Employees (Name, Address) VALUES ('���� ������', '���. ������������, 75')
INSERT INTO Employees (Name, Address) VALUES ('���� ����������', '��. �����, 72')
INSERT INTO Employees (Name, Address) VALUES ('������ ������', '����� ������, 22')

-- ������
INSERT INTO Cars (ModelName, Brand, GovNumber, Mileage, ReleaseYear, LastRepair, CountryOfOrigin, Price, EmployeeID) VALUES
    ('Model S', 'Tesla', '�508��', 15000, 2018, '2022-05-10', '���', 80000, 1),
    ('Civic', 'Honda', '�214��', 50000, 2015, '2023-01-02', '������', 15000, 2),
    ('Corolla', 'Toyota', '�454��', 30000, 2017, '2023-02-25', '������', 18000, 3),
    ('S-Class', 'Mercedes', '�576��', 20000, 2019, '2023-06-14', '��������', 90000, 4),
    ('3 Series', 'BMW', '�185��', 40000, 2016, '2023-08-17', '��������', 40000, 5),
    ('Mustang', 'Ford', '�912��', 10000, 2020, '2023-07-11', '���', 30000, 6),
    ('Camry', 'Toyota', '�328��', 60000, 2016, '2023-05-22', '������', 20000, 7),
    ('Q7', 'Audi', '�226��', 30000, 2020, '2021-06-18', '��������', 70000, 8),
    ('Model 3', 'Tesla', '�944��', 5000, 2021, '2023-10-03', '���', 50000, 9),
    ('Sportage', 'KIA', '�316��', 300000, 2017, '2020-04-17', '����� �����', 18000, 10)

-- ������
INSERT INTO Tariffs (TariffName, PricePerKilometer) VALUES
('������', 50),
('�������', 75),
('������', 100)

-- ���������
INSERT INTO Passengers (Name) VALUES ('���� �������')
INSERT INTO Passengers (Name) VALUES ('�������� ������')
INSERT INTO Passengers (Name) VALUES ('����� ��������')
INSERT INTO Passengers (Name) VALUES ('������ �����������')
INSERT INTO Passengers (Name) VALUES ('���� �������')
INSERT INTO Passengers (Name) VALUES ('������ �����')
INSERT INTO Passengers (Name) VALUES ('������ �����')
INSERT INTO Passengers (Name) VALUES ('������ �������')
INSERT INTO Passengers (Name) VALUES ('����� �����')
INSERT INTO Passengers (Name) VALUES ('������ ��������')

-- ������
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(1, '2023-11-11', '08:00:00', '08:30:00', '����� �15', '����������� ���������', 8.0, 10, '���������', '����� ����������� ��������', 1, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(2, '2023-11-02', '15:00:00', '15:45:00', '�� ����', '��. �����������, 16', 15.0, 0, '������', '������� � ���������� ��������', 2, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(3, '2023-11-02', '18:30:00', '19:00:00', '�� ���������', '����� ������', 10.0, 0, '������', '������� �� �������!', 3, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(4, '2023-11-03', '09:00:00', '09:30:00', '�������', '����� ����', 5.0, 20, '���������', '���������� ������', 4, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(5, '2023-11-04', '23:00:00', '23:20:00', '���� �������', '��������� �2', 3.0, 0, '���������', '��������� �� �������������', 5, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(6, '2023-11-05', '12:00:00', '12:40:00', '�������� �������', '��. ����������, 55', 12.0, 0, '��������� ������', '������� � ���������� �����', 6, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(7, '2023-11-06', '16:00:00', '16:25:00', '����� ��������', '��� ���', 6.0, 0, '������', '�������� ������', 7, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(8, '2023-11-07', '20:00:00', '20:50:00', '��������� ������', '�������', 15.0, 0, '���������', '��� �� ������ ������!', 8, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(9, '2023-11-08', '07:00:00', '07:20:00', '��. ���������, 15', '����������� ������', 4.0, 15, '���������', '�������� ��������', 9, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(10, '2023-11-09', '22:00:00', '22:35:00', '�������', '����� ����', 7.0, 0, '������', '������ ���� ������������ ����� �����', 10, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(1, '2023-11-11', '07:30:00', '07:45:00', '������� ������', '����� �������', 8, 3, '���������', '�������!', 1, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(2, '2023-10-21', '09:00:00', '09:22:00', '�������� ����', '����� ������', 10, 5, '������', '������', 2, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(3, '2023-10-22', '18:30:00', '19:45:00', '����� ������', '����� ������', 35, 10, '������', '������', 3, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(4, '2023-10-23', '21:00:00', '21:30:00', '����� ��������', '����� ����', 12, 2, '���������', '������!', 4, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(5, '2023-10-24', '07:30:00', '07:45:00', '������� ������', '����� ��������', 7, 0, '������', '�������!', 5, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(6, '2023-10-25', '09:10:00', '09:50:00', '������� ����', '����� ������', 17, 3, '���������', '������', 6, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(7, '2023-10-26', '18:45:00', '19:55:00', '����� �������', '����� ������', 32, 7, '������', '������', 7, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(8, '2023-10-27', '21:30:00', '21:45:00', '����� �������', '����� ����', 8, 1, '���������', '�������� ��������', 8, 2)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(9, '2023-10-28', '07:20:00', '07:35:00', '����� ������', '����� ��������', 6, 0, '������', '�������!', 9, 3)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(10, '2023-10-29', '09:30:00', '09:55:00', '����� ����', '����� �������', 9, 4, '���������', '������', 10, 1)
INSERT INTO Calls (CarID, CallDate, PickupTime, DropOffTime, PickupLocation, DropOffLocation, Distance, WaitTimePenalty, PaymentMethod, CustomerMark, PassengerID, TariffID) VALUES
(4, '2023-10-23', '21:00:00', '21:30:00', '����� ����', '��������������� ������� ���������� ���������', 12, 2, '���������', '������ �����', 4, 1)

	select * from employees
	select * from passengers
	select * from calls where CallDate = DATEADD(day, -1, CAST(GETDATE() AS date))