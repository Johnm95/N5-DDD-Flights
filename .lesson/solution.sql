-- Don't change lines 1 to 6
.open Flights.db
.headers on
.mode column
PRAGMA foreign_keys = on;
-- Don't change lines 1 to 6

.print
.print Q1
SELECT *
    FROM Airport
    WHERE code = "GLA";

.print
.print Q2
SELECT *
    FROM Route
    WHERE depCode = "GLA";

.print
.print Q3
SELECT *
    FROM Airport
    WHERE code = "IBZ"
        OR code = "BRU";

.print
.print Q4 - Insert
INSERT INTO Airport
    VALUES ("Barra", "United Kingdom", "BRR", "Europe");

.print
.print Q5
SELECT *
    FROM Airport
    WHERE code = "BRR";

.print
.print Q6 - Insert
INSERT INTO Route
    VALUES (8000, "BRR", "GLA", NULL, NULL);

.print
.print Q6 - Insert
INSERT INTO Route
    VALUES (8001, "GLA", "BRR", NULL, NULL);

.print
.print Q8
SELECT *
    FROM Route
    WHERE routeID = 8000
        OR routeID = 8001;

.print
.print Q9 - Get codes
SELECT *
    FROM Airport
    WHERE name = "Bristol"
        OR name = "Birmingham";

.print
.print Q9 - Insert
INSERT INTO Route
    VALUES (8002, "BRR", "BRS", "GLA", "BHX");

.print
.print Q10 - Insert
INSERT INTO Route
    VALUES (8003, "BRS", "BRR", "BHX", "GLA");

.print
.print Q11
SELECT *
    FROM Route
    WHERE routeID = 8002
        OR routeID = 8003;

.print
.print Q12
SELECT name, code
    FROM Airport
    WHERE country = "Denmark";

.print
.print Q13 - Insert
INSERT INTO Route
    VALUES (8004, "BRR", "BLL", "GLA", NULL);

.print
.print Q14 - Insert
INSERT INTO Route
    VALUES (8005, "BLL", "BRR", "GLA", NULL);

.print
.print Q15
SELECT *
    FROM Route
    WHERE routeID = 8004
        OR routeID = 8005;

.print
.print Q16 - Insert
INSERT INTO Flight
    VALUES ("LM0456", "2024-02-02", "14:55:00", 
        "2024-02-02", "16:05:00", 18, 8000);

.print
.print Q17 - Insert
INSERT INTO Flight
    VALUES ("LM0451", "2024-02-04", "10:15:00", 
        "2024-02-04", "11:30:00", 18, 8001);

.print
.print Q18
SELECT *
    FROM Flight
    WHERE flightID = "LM0456"
        OR flightID = "LM0451"
    ORDER BY depDate ASC;

.print