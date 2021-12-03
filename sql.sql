-- CREATE FLIGHT TABLE

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
    flight_id integer PRIMARY KEY NOT NULL,
    flight_no char(6) NOT NULL,
    scheduled_departure timestamptz NOT NULL,
    scheduled_arrival timestamptz NOT NULL,
    departure_airport char(3) NOT NULL,
    arrival_airport char(3) NOT NULL,
    status varchar(20) NOT NULL,
    aircraft_code char(3) NOT NULL,
    actual_arrival timestamptz NOT NULL,
    actual_departure timestamptz NOT NULL
);

INSERT INTO flights
VALUES ('10927','PG0226','2021-12-24 05:10:00+00','2021-12-24 06:55:00+00','DME','SVO','On Time','773','2021-12-24 09:10:00+00','2021-12-24 05:10:00+00');
INSERT INTO flights
VALUES ('10928','PG0227','2021-12-23 05:10:00+00','2021-12-23 04:55:00+00','VKO','SVO','On Time','CN1','2021-12-23 08:20:00+00','2021-12-23 05:10:00+00');
INSERT INTO flights
VALUES ('10929','PG0228','2021-08-19 05:10:00+00','2021-08-19 06:45:00+00','ULV','SVO','On Time','319','2021-12-19 10:10:00+00','2021-12-19 05:10:00+00');
INSERT INTO flights
VALUES ('10930','PG0229','2021-12-25 05:10:00+00','2021-12-25 02:15:00+00','DME','SVO','On Time','763','2021-12-25 09:10:00+00','2021-12-25 05:10:00+00');
INSERT INTO flights
VALUES ('10934','PG0230','2021-12-27 05:10:00+00','2021-12-27 06:55:00+00','DME','SVO','On Time','320','2021-12-27 09:10:00+00','2021-12-27 05:10:00+00');
INSERT INTO flights
VALUES ('10921','PG0235','2021-12-23 05:10:00+00','2021-12-23 04:55:00+00','VKO','SVO','On Time','SU9','2021-12-23 08:20:00+00','2021-12-23 05:10:00+00');
INSERT INTO flights
VALUES ('10935','PG0246','2021-08-19 05:10:00+00','2021-08-19 06:45:00+00','ULV','SVO','On Time','CR2','2021-12-19 10:10:00+00','2021-12-19 05:10:00+00');
INSERT INTO flights
VALUES ('10941','PG0274','2021-12-26 05:10:00+00','2021-12-26 02:15:00+00','DME','SVO','On Time','CR7','2021-12-26 09:10:00+00','2021-12-26 05:10:00+00');
INSERT INTO flights
VALUES ('10955','PG0295','2021-12-7 05:10:00+00','2021-12-27 02:30:00+00','DME','SVO','On Time','321','2021-12-27 09:10:00+00','2021-12-27 05:10:00+00');
INSERT INTO flights
VALUES ('10974','PG0299','2021-12-29 05:10:00+00','2021-12-29 06:55:00+00','DME','SVO','On Time','777','2021-12-29 09:10:00+00','2021-12-29 05:10:00+00');
INSERT INTO flights

-- CREATE AIRCRAFTS TABLE

DROP TABLE IF EXISTS aircrafts;
CREATE TABLE aircrafts  (
    aircraft_code char(3) NOT NULL PRIMARY KEY,
    aircraft_model varchar(20) NOT NULL,
    the_range integer
);

INSERT INTO aircrafts
VALUES ('763','Boeing 767-300','7900');
INSERT INTO aircrafts
VALUES ('SU9','Sukhoi SuperJet-1000','3000');
INSERT INTO aircrafts
VALUES ('320','Boeing 767-300','5700');
INSERT INTO aircrafts
VALUES ('321','Boeing 767-300','5600');
INSERT INTO aircrafts
VALUES ('319','Boeing 767-300','6700');
INSERT INTO aircrafts
VALUES ('CN1','Boeing 767-300','1200');
INSERT INTO aircrafts
VALUES ('CR2','Boeing 767-300','7900');
INSERT INTO aircrafts
VALUES ('773','Boeing 767-300','11100');
INSERT INTO aircrafts
VALUES ('CR7','Boeing 767-300','7900');
INSERT INTO aircrafts
VALUES ('777','Boeing 767-300','11100');



DROP TABLE IF EXISTS seats;
-- CREATE SEATS TABLE
CREATE TABLE seats  (
    aircraft_code char(3) NOT NULL PRIMARY KEY,
    seat_no varchar(20) NOT NULL,
    fare_conditions varchar(20)
);

INSERT INTO seats
VALUES('CN1','1A','Economy');
INSERT INTO seats
VALUES('CN1','1B','Economy');
INSERT INTO seats
VALUES('CN1','2A','Economy');
INSERT INTO seats
VALUES('CN1','2B','Economy');
INSERT INTO seats
VALUES('773','1A','Economy');
INSERT INTO seats
VALUES('773','1B','Economy');
INSERT INTO seats
VALUES('773','2A','Economy');
INSERT INTO seats
VALUES('773','2B','Economy');
INSERT INTO seats
VALUES('733','1A','Business');
INSERT INTO seats
VALUES('733','1B','Business');
INSERT INTO seats
VALUES('733','2A','Economy');
INSERT INTO seats
VALUES('733','2B','Economy');



DROP TABLE IF EXISTS airports; 
-- CREATE airports TABLE
CREATE TABLE airports  (
    airport_code char(3) NOT NULL PRIMARY KEY,
    city text NOT NULL,
    airport_name text NOT NULL,
    timezone text,
    coordinates point 
);

INSERT INTO airports
VALUES ('DME','Domodedovo International Airport','Moscow','UTC','(37.9062995910645,55.4087982177734)');
INSERT INTO airports
VALUES ('SVO','Sheremetyevo International Airport','Moscow','UTC','(37.4146,55.972599)');
INSERT INTO airports
VALUES ('ULV','Ulyanovsk Baratayevka International Airport','Ulyanovsk','GMT','(48.2266998291,54.2682991028)');
INSERT INTO airports
VALUES ('ULY','Ulyanovsk East Airport','Ulyanovsk','GMT','(48.8027000427246,54.4010009765625)');
INSERT INTO airports
VALUES ('VKO','Vnukovo International Airport','Moscow','UTC','(37.2615013123,55.5914993286)');
INSERT INTO airports
VALUES ('QFA','QANTAS AIRWAYS LTD.','Sydney','UTC','(37.9062995910645,55.4087982177734)');
INSERT INTO airports
VALUES ('BAW','BRITISH AIRWAYS P.L.C.','London','UTC','(37.4146,55.972599)');
INSERT INTO airports
VALUES ('JAL','JAPAN AIRLINES CO. LTD','Tokyo','GMT','(48.2266998291,54.2682991028)');
INSERT INTO airports
VALUES ('EVA','EVA AIRWAYS CORP.','Taiwan','GMT','(48.8027000427246,54.4010009765625)');
INSERT INTO airports
VALUES ('KAL','KOREAN AIR LINES CO.,LTD.','Seoul','GMT','(37.2615013123,55.5914993286)');




DROP TABLE IF EXISTS ticket_flights; 
-- CREATE TABLE ticket_flight
CREATE TABLE ticket_flights (
    ticket_no char(13) NOT NULL PRIMARY KEY,
    flight_id integer NOT NULL,
    fare_conditions varchar(10) NOT NULL,
    amount numeric(10,2),
    available_buy varchar(3)
    );

INSERT INTO ticket_flights
VALUES ('A000000000001','10927','Business','185300.00', 'yes');
INSERT INTO ticket_flights
VALUES ('A000000000002','10928','Business','92200.00','yes');
INSERT INTO ticket_flights
VALUES ('A000000000003','10929','Economy','18000.00','yes');
INSERT INTO ticket_flights
VALUES ('A000000000004','10930','Economy','18000.00','yes');
INSERT INTO ticket_flights
VALUES ('A000000000005','10931','Economy','30700.00','yes');
INSERT INTO ticket_flights
VALUES ('B100000000001','10927','Business','185300.00','yes');
INSERT INTO ticket_flights
VALUES ('B500000000002','10928','Business','92200.00','yes');
INSERT INTO ticket_flights
VALUES ('B900000000003','10929','Economy','18000.00','yes');
INSERT INTO ticket_flights
VALUES ('C100000000004','1093','Economy','18000.00','yes');
INSERT INTO ticket_flights
VALUES ('C600000000005','10931','Economy','30700.00','no');




DROP TABLE IF EXISTS boarding_passes; 
-- CREATE TABLE BOARDING PASSES
CREATE TABLE boarding_passes (
    ticket_no char(13) NOT NULL PRIMARY KEY,
    flight_id integer NOT NULL,
    boading_no integer NOT NULL,
    seat_no varchar(4),
    boarding_time text,
    gate char(3),
    baggage_claim_no text NOT NULL
    );

INSERT INTO boarding_passes
VALUES('0005432661914','8525','1','1A','2021-08-23 10:20:00+00','IAH','6464995');
INSERT INTO boarding_passes
VALUES('0005432661915','8526','1','2A','2021-09-23 10:20:00+00','LAX','7464911');
INSERT INTO boarding_passes
VALUES('0005432661916','8527','8','1A','2021-04-23 10:20:00+00','SGN','1324928');
INSERT INTO boarding_passes
VALUES('0005432661917','8528','16','2A','2021-01-23 10:20:00+00','SVO','2864248');
INSERT INTO boarding_passes
VALUES('0005432661918','8529','28','1A','2021-06-23 10:20:00+00','KHV','4164347');
INSERT INTO boarding_passes
VALUES('2805432661914','8541','1','1A','2021-08-23 10:20:00+00','IAH','3564745');
INSERT INTO boarding_passes
VALUES('1605432661928','8547','1','2A','2021-09-23 10:20:00+00','LAX','9964996');
INSERT INTO boarding_passes
VALUES('9505432661966','8558','8','1A','2021-04-23 10:20:00+00','SGN','0264995');
INSERT INTO boarding_passes
VALUES('2705432661957','8559','16','2A','2021-01-23 10:20:00+00','SVO','2854995');
INSERT INTO boarding_passes
VALUES('4905432661274','8595','28','1A','2021-06-23 10:20:00+00','KHV','9854995');




DROP TABLE IF EXISTS bookings; 

 -- CREATE TABLE BOOKING
CREATE TABLE bookings (
    book_ref char(6) NOT NULL PRIMARY KEY,
    book_date timestamptz NOT NULL,
    total_amount numeric(10,2) NOT NULL
   );

INSERT INTO bookings 
VALUES('3B54BB','2021-12-05 14:08:00+00','1204500.00');
INSERT INTO bookings 
VALUES('3AC131','2021-12-30 22:06:00+00','985500.00');
INSERT INTO bookings 
VALUES('65A6EA','2021-12-02 13:13:00+00','786500.00');
INSERT INTO bookings 
VALUES('D7E9AA','2021-12-02 13:13:00+00','795000.00');
INSERT INTO bookings 
VALUES('EF479E','2021-12-02 13:13:00+00','699000.00');
INSERT INTO bookings 
VALUES('6F54BD','2021-12-05 14:08:00+00','1204500.00');
INSERT INTO bookings 
VALUES('9RC134','2021-12-30 22:06:00+00','985500.00');
INSERT INTO bookings 
VALUES('7AA6EG','2021-12-02 13:13:00+00','786500.00');
INSERT INTO bookings 
VALUES('9DE9AK','2021-12-02 13:13:00+00','795000.00');
INSERT INTO bookings 
VALUES('3E479T','2021-12-02 13:13:00+00','699000.00');


DROP TABLE IF EXISTS tickets; 

 -- CREATE TABLE TICKETS
CREATE TABLE tickets (
    ticket_no char(13) NOT NULL PRIMARY KEY,
    book_ref char(6) NOT NULL,
    passenger_id varchar(20) NOT NULL,
    status char(8) NOT NULL
   );

INSERT INTO tickets
VALUES('0005432661914','3B54BB','1749 051790','book');
INSERT INTO tickets
VALUES('0005432661915','3AC131','1949 064790','book');
INSERT INTO tickets
VALUES('0005432661916','65A6EA','2149 095790','book');
INSERT INTO tickets
VALUES('0005432661917','D7E9AA','2349 051230','cancel');
INSERT INTO tickets
VALUES('0005432661918','EF479E','2549 074790','book');
INSERT INTO tickets
VALUES('7479432661935','6F54BD','0234 051790','cancel');
INSERT INTO tickets
VALUES('0127432661928','9RC134','7505 064790','book');
INSERT INTO tickets
VALUES('8432432661995','7AA6EG','4927 095790','book');
INSERT INTO tickets
VALUES('9415432661996','9DE9AK','8427 051230','book');
INSERT INTO tickets
VALUES('6314432661927','3E479T','9945 074790','book');



DROP TABLE IF EXISTS passenger_info; 
-- CREATE TABLE passenger_info
CREATE TABLE passenger_info (
    ssn char(9) NOT NULL PRIMARY KEY,
    passenger_name text NOT NULL,
    email text NOT NULL,
    phone_no jsonb NOT NULL
   );

INSERT INTO passenger_info 
VALUES('100589665','Faiza Boyd','faizab651@gmail.com','2814769955');
INSERT INTO passenger_info 
VALUES('224666159','Bronte Sierra','brontess@hotmail.com','8324456969');
INSERT INTO passenger_info 
VALUES('258614552','Gillian Emerson','gemmer2454@gmail.com','7714950202');
INSERT INTO passenger_info 
VALUES('624419358','Sadie King','sdkingqq@gmail.com','2714550636');
INSERT INTO passenger_info 
VALUES('774258996','Aadil Singh','sshiaadil9995@yahoo.com','284024665889');
INSERT INTO passenger_info 
VALUES('100589665','Paula Bates','pbatesb20411@gmail.com','2814769955');
INSERT INTO passenger_info 
VALUES('224666159','Lula Branch','lulabb2048@hotmail.com','4792584414');
INSERT INTO passenger_info 
VALUES('258614552','Cyrus Corrigan','cyrusCorr2741@gmail.com','41398506006');
INSERT INTO passenger_info 
VALUES('624419358','Alanah Livingston','alanahllv9565@gmail.com','2179084142');
INSERT INTO passenger_info 
VALUES('774258996','Amandeep Healy','amandeep6556@yahoo.com','6429583675');



DROP TABLE IF EXISTS payments; 

-- CREATE PAYMENT TABLE
CREATE TABLE payments (
    book_ref char(6) NOT NULL PRIMARY KEY,
    card_number char(20) NOT NULL,
    taxes numeric(10,2) NOT NULL,
    discount numeric(10,2) NOT NULL
   );

INSERT INTO payments
VALUES('3AC131','750124076622','0.08','0.12');
INSERT INTO payments
VALUES('3B54BB','569424076144','0.10','0.20');
INSERT INTO payments
VALUES('65A6EA','969424356108','0.08','0.12');
INSERT INTO payments
VALUES('D7E9AA','289424256199','0.07','0.15');
INSERT INTO payments
VALUES('EF479E','729424076137','0.01','0.10');
INSERT INTO payments
VALUES('6F54BD','547824076622','0.08','0.12');
INSERT INTO payments
VALUES('9RC134','995824076144','0.10','0.20');
INSERT INTO payments
VALUES('7AA6EG','258524356108','0.08','0.12');
INSERT INTO payments
VALUES('9DE9AK','363524256199','0.07','0.15');
INSERT INTO payments
VALUES('3E479T','741424076137','0.01','0.10');


DROP TABLE IF EXISTS actual_arrival; 

-- CREATE ACTUAL ARRIVAL TABLE
CREATE TABLE actual_arrival(
    flight_id integer NOT NULL PRIMARY KEY,
    arrival_gate char(3) NOT NULL,
    arrival_time timestamptz
);

INSERT INTO actual_arrival
VALUES('10927','LAX','2021-12-24 14:08:00+00');
INSERT INTO actual_arrival
VALUES('10928','SGN','2021-12-25 14:08:00+00');
INSERT INTO actual_arrival
VALUES('10929','SHJ','2021-12-23 14:08:00+00');
INSERT INTO actual_arrival
VALUES('10930','IAH','2021-12-22 14:08:00+00');
INSERT INTO actual_arrival
VALUES('10931','BMI','2021-12-21 14:08:00+00');
INSERT INTO actual_arrival
VALUES('10951','LAX','2021-12-24 14:08:00+00');
INSERT INTO actual_arrival
VALUES('10965','SGN','2021-12-25 14:08:00+00');
INSERT INTO actual_arrival
VALUES('10974','SHJ','2021-12-26 14:08:00+00');
INSERT INTO actual_arrival
VALUES('10991','IAH','2021-12-24 14:08:00+00');
INSERT INTO actual_arrival
VALUES('10999','BMI','2021-12-25 14:08:00+00');

