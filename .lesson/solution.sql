-- Don't change lines 1 to 5
.open FlightBooking.db
.headers on
.mode column
-- Don't change lines 1 to 5


.print H CS 2019 Task 1B


.print
.print Q1b(i)
SELECT forename, surname, adultTicket*5.50 + childTicket*2.00 + concessionTicket*1.50 AS [Tax (£)]
FROM Customer, Booking
WHERE Customer.customerID = Booking.customerID AND Booking.CustomerID = "GR01932" AND flightID = "QH182";


.print
.print Q1b(ii)
CREATE TEMP VIEW HighestChildren (maxChildren) AS
SELECT max(childTicket)
FROM Booking;


SELECT forename, surname
FROM Customer, Booking, HighestChildren
WHERE Customer.CustomerID = Booking.CustomerID
AND childTicket = maxChildren;


.print