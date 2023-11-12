CREATE PROCEDURE GetPassengerDOL 
    @PhoneNumber VARCHAR(10)
AS BEGIN
	SELECT Passengers.Name, Calls.DropOffLocation FROM Calls
    INNER JOIN Passengers ON Calls.PassengerID = Passengers.PassengerID
    WHERE Passengers.PhoneNumber = @PhoneNumber
END