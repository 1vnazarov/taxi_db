CREATE PROCEDURE CalculateTotalIncomeLastMonth AS BEGIN
    DECLARE @LastMonthStart DATE;
    DECLARE @LastMonthEnd DATE;
    -- ����������� ������� � ���������� ��� �������� ������
    SET @LastMonthStart = DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 1, 0)
    SET @LastMonthEnd = DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE()) - 1, -1)

    -- ���������� ���������� ������ �� ������� �����
    SELECT SUM(c.Distance * t.PricePerKilometer) AS TotalIncome FROM Calls c 
    INNER JOIN Tariffs t ON c.TariffID = t.TariffID
    WHERE c.CallDate BETWEEN @LastMonthStart AND @LastMonthEnd;
END