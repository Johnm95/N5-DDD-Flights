# N5 DDD Flights

## Introduction

Loganair has decided to expand where it flies to.  To save on costs it works with another small airline that already has a booking system that it can mak use of.

The design of the database is shown below.

![ERD](assets/ERD.png)

Every airport has a 3-letter code to identify it, i.e. `BRR` is the code for Barra , and `LHR` is the code for London Heathrow.

The database contains a number of routes.  Every route holds the airport code for the depature airport (`depCode`) and the code for the arrival airport (`arrCode`).

Some routes stop at other airports on the way.  if there are any stops, then `mid1code`, and possibly `mid2code` will contain sirport codes.

If there are no stops, then `mid1code` and `mid2code` will hold a special value of `NULL` to show that they are empty.

## Tasks

Using the Airport table, display all the details for Glasgow airport (GLA).

Using the Route table, display all the details for routes that depart from Glasgow.

Barra, United Kingdom, BRR, Europe

___1___ Currently, the Barra (BRR) to Glasgow (GLA) route is not in the database.


___1b(i)___ John Smith, Customer ID - GR01932, has asked for a copy of the tax he has paid on flight QH182. The tax for a booking is calculated as follows:

* adults pay £5.50 
* children pay £2.00 
* concessions pay £1.50 

Implement the SQL statement that will produce an output with the headings.

| forename | surname | Tax (£) |
| -------- | ------- | ------- |
|          |         |         |


Print evidence of the implemented SQL statement and the output it produced. (__3 marks__) 

___1b(ii)___ The airline wishes to identify the customer(s) who made a booking with the greatest number of children.

Implement two SQL statements that will find the forename and surname of the customer(s) who made a booking with the greatest number of children. 

| forename | surname |
| -------- | ------- |
|          |         |

Print evidence of the implemented SQL statements and the output produced. (__4 marks__)
