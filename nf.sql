/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) = 2021-12-20 /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) = 2021-12-20 /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-10 and DATE(scheduled_arrival) = 2021-12-20 /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) = 2021-12-20 /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, 6liNiB, R60, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, vtGhZ7, Bex, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, q50Hfm, fDS, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = VKO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, qVddYp, 3tT, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, 4POy9O, wNG, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, gd08LZ, Q6t, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, e7e6YF, tEr, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, lxAv5g, tnX, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, WK3SCp, shJ, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, a6mfD0, EB8, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, IznFWx, Yg5, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, Dhgygr, MCD, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, l2g0yg, YZk, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, 4daa3m, f4u, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* Update flight */
BEGIN
UPDATE icket_flights
SET available_buy = yes
WHERE ticket_no = A000000000006
UPDATE ticket
SET status = cancel
WHERE ticket_no = A000000000006
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10930 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000006, 2lYWVs, DBL, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000006 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = DMO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) = 2021-12-21 /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10928 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(A000000000002, 9VeHEC, tyZ, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = A000000000002 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-25 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-08-19 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-25 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-25 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-25 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-25 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-25 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME  and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME  and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-27 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = DME  and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-27 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10928 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(B500000000002, SenH4D, tFO, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = B500000000002 
BEGIN COMMIT
/* Update flight */
BEGIN
UPDATE ticket_flights
SET available_buy = yes
WHERE ticket_no = B500000000002
UPDATE tickets
SET status = cancel
WHERE ticket_no = B500000000002
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* Update flight */
BEGIN
UPDATE ticket_flights
SET available_buy = yes
WHERE ticket_no = B500000000002
UPDATE tickets
SET status = cancel
WHERE ticket_no = B500000000002
COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-24 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* Transaction Insert */
BEGIN 
SELECT ticket_no 
FROM ticket_flights 
WHERE flight_id = 10928 AND fare_conditions = Business AND available_buy = yes
INSERT INTO ticket (ticket_no, book_ref, passenger_id, status) VALUES(B500000000002, pSTH7t, FGe, book) 
UPDATE ticket_flights SET available_buy = no WHERE ticket_no = B500000000002 
BEGIN COMMIT
/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  /* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = VKO and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-23 and DATE(scheduled_arrival) =  