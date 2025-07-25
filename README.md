# Airline-Reservation-System-Report
Airline Reservation System Report
# Introduction:
The Airline Reservation System is designed to manage flight bookings, customer information, and seat availability efficiently. This system allows users to search for flights, make bookings, and manage their reservations. The database is structured to ensure data integrity and facilitate easy retrieval of information.
# Database Design:
The database consists of four main tables: Flights, Customers, Bookings, and Seats. Each table is designed to store specific information relevant to the airline reservation process. And inserted some values to each table.
Queries
# 1.	Available Seats Query:
This query retrieves the number of available seats for a specific flight.
sql
RunCopy code
SELECT FlightID, AvailableSeats 
FROM Flights 
WHERE FlightID = 1;
# 2.	Flight Search Query:
This query allows users to search for flights based on departure and arrival locations.
sql
RunCopy code
SELECT * 
FROM Flights 
WHERE Departure = 'New York' AND Arrival = 'Los Angeles';
# 3.	Booking Summary Report: 
This query generates a summary report of all bookings, including customer names and flight details.
sql
RunCopy code
SELECT b.BookingID, c.FirstName, c.LastName, f.FlightNumber, b.SeatsBooked, b.BookingDate
FROM Bookings b
JOIN Customers c ON b.CustomerID = c.CustomerID
JOIN Flights f ON b.FlightID = f.FlightID;
# Triggers
# 1.	Update Available Seats Trigger: 
This trigger automatically updates the number of available seats in the Flights table when a new booking is made.
sql
RunCopy code
CREATE TRIGGER UpdateAvailableSeats
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
    UPDATE Flights 
    SET AvailableSeats = AvailableSeats - NEW.SeatsBooked 
    WHERE FlightID = NEW.FlightID;
END;
# 2.	Cancel Booking Trigger:
This trigger updates the available seats when a booking is canceled.
sql
RunCopy code
CREATE TRIGGER CancelBooking
AFTER DELETE ON Bookings
FOR EACH ROW
BEGIN
    UPDATE Flights 
    SET AvailableSeats = AvailableSeats + OLD.SeatsBooked 
    WHERE FlightID = OLD.FlightID;
END;


 # Conclusion:
The Airline Reservation System provides a robust framework for managing flight bookings, customer information, and seat availability. The use of SQL for database management ensures data integrity and efficient retrieval of information. This system can be further enhanced with additional features such as user authentication, payment processing, and advanced reporting capabilities.
