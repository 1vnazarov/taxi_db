CREATE PROCEDURE CalculateTotalIncomeLastMonth AS BEGIN
    DECLARE @LastMonthStart DATE;
    DECLARE @LastMonthEnd DATE;
    -- определение первого и последнего дня прошлого месяца
    SET @LastMonthStart = DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 1, 0)
    SET @LastMonthEnd = DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE()) - 1, -1)

    -- вычисление суммарного дохода за прошлый месяц
    SELECT SUM(c.Distance * t.PricePerKilometer) AS TotalIncome FROM Calls c 
    INNER JOIN Tariffs t ON c.TariffID = t.TariffID
    WHERE c.CallDate BETWEEN @LastMonthStart AND @LastMonthEnd;
END