/* search for flight */
SELECT flights.flight_id, departure.city as d_city, arrival.city as a_city, scheduled_departure, scheduled_arrival 
FROM flights 
JOIN airports as departure 
ON departure.airport_code = flights.departure_airport 
JOIN airports as arrival 
ON arrival.airport_code = flights.arrival_airport WHERE departure.airport_code = ULV and arrival.airport_code = SVO and DATE(scheduled_departure) = 2021-12-16 and DATE(scheduled_arrival) = 2021-12-20 