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