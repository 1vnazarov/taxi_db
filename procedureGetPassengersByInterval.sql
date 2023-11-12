CREATE PROCEDURE GetPassengersByTimeInterval
    @startDate DATE,
    @endDate DATE
AS BEGIN
    SELECT p.PassengerID, p.Name, p.PhoneNumber, c.CallDate, c.PickupTime, c.DropOffTime
    FROM Passengers AS p
    INNER JOIN Calls AS c ON p.PassengerID = c.PassengerID
    WHERE c.CallDate BETWEEN @startDate AND @endDate
END