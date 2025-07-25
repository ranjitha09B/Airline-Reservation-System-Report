-- querry for available seat;
SELECT FlightID, AvailableSeats 
FROM Flights 
WHERE FlightID = 1;

-- querry for flight search
SELECT * 
FROM Flights 
WHERE Departure = 'New York' AND Arrival = 'Los Angeles';

-- Trigger for booking update
DELIMITER //

CREATE TRIGGER UpdateAvailableSeats
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
    UPDATE Flights 
    SET AvailableSeats = AvailableSeats - NEW.SeatsBooked 
    WHERE FlightID = NEW.FlightID;
END//

DELIMITER ;

-- booking cancellations
DELIMITER //

CREATE TRIGGER CancelBooking
AFTER DELETE ON Bookings
FOR EACH ROW
BEGIN
    UPDATE Flights 
    SET AvailableSeats = AvailableSeats + OLD.SeatsBooked 
    WHERE FlightID = OLD.FlightID;
END//

DELIMITER ;