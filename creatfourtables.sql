create database Airline_Rese_System;
 use  Airline_Rese_System;
 
 -- create four main tables: Flights, Customers, Bookings, and Seats.


 CREATE TABLE Flights (
    FlightID INT PRIMARY KEY AUTO_INCREMENT,
    FlightNumber VARCHAR(10) NOT NULL,
    Departure VARCHAR(50) NOT NULL,
    Arrival VARCHAR(50) NOT NULL,
    DepartureTime DATETIME NOT NULL,
    ArrivalTime DATETIME NOT NULL,
    TotalSeats INT NOT NULL,
    AvailableSeats INT NOT NULL
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Phone VARCHAR(15)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    FlightID INT,
    CustomerID INT,
    BookingDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    SeatsBooked INT NOT NULL,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Seats (
    SeatID INT PRIMARY KEY AUTO_INCREMENT,
    FlightID INT,
    SeatNumber VARCHAR(5) NOT NULL,
    IsBooked BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

