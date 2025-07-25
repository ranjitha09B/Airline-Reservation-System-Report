INSERT INTO Flights (FlightNumber, Departure, Arrival, DepartureTime, ArrivalTime, TotalSeats, AvailableSeats)
VALUES 
('AA101', 'New York', 'Los Angeles', '2023-10-01 08:00:00', '2023-10-01 11:00:00', 150, 150),
('AA102', 'Chicago', 'Miami', '2023-10-02 09:00:00', '2023-10-02 12:00:00', 200, 200);

INSERT INTO Customers (FirstName, LastName, Email, Phone)
VALUES 
('John', 'Doe', 'john.doe@example.com', '1234567890'),
('Jane', 'Smith', 'jane.smith@example.com', '0987654321');

INSERT INTO Bookings (FlightID, CustomerID, SeatsBooked)
VALUES 
(1, 1, 2),
(2, 2, 1);

INSERT INTO Seats (FlightID, SeatNumber, IsBooked)
VALUES 
(1, '1A', FALSE),
(1, '1B', FALSE),
(1, '1C', FALSE),
(1, '1D', FALSE),
(1, '2A', FALSE),
(1, '2B', FALSE),
(1, '2C', FALSE),
(1, '2D', FALSE),
(1, '3A', FALSE),
(1, '3B', FALSE),
(1, '3C', FALSE),
(1, '3D', FALSE),
(1, '4A', FALSE),
(1, '4B', FALSE),
(1, '4C', FALSE),
(1, '4D', FALSE);

INSERT INTO Seats (FlightID, SeatNumber, IsBooked)
VALUES 
(2, '1A', FALSE),
(2, '1B', FALSE),
(2, '1C', FALSE),
(2, '1D', FALSE),
(2, '2A', FALSE),
(2, '2B', FALSE),
(2, '2C', FALSE),
(2, '2D', FALSE),
(2, '3A', FALSE),
(2, '3B', FALSE),
(2, '3C', FALSE),
(2, '3D', FALSE),
(2, '4A', FALSE),
(2, '4B', FALSE),
(2, '4C', FALSE),
(2, '4D', FALSE);

select * from seats;