-- generate booking summary report
SELECT b.BookingID, c.FirstName, c.LastName, f.FlightNumber, b.SeatsBooked, b.BookingDate
FROM Bookings b
JOIN Customers c ON b.CustomerID = c.CustomerID
JOIN Flights f ON b.FlightID = f.FlightID;
