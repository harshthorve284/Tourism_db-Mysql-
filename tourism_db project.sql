
create database tourism_db;

use tourism_db;

CREATE TABLE Tourists (
  tourist_id INT PRIMARY KEY not null,
  name VARCHAR(50),
  email VARCHAR(50),
  phone_number VARCHAR(15),
  nationality VARCHAR(30)
);

CREATE TABLE TourPackages (
  package_id INT PRIMARY KEY not null,
  
  package_name VARCHAR(50),
  description TEXT,
  price DECIMAL(10, 2),
  duration_days INT
);

CREATE TABLE Bookings (
  booking_id INT PRIMARY KEY not null,
  tourist_id INT,
  package_id INT,
  booking_date DATE,
  status enum('confirmed','Pending','Cancelled'),
  FOREIGN KEY (tourist_id) REFERENCES Tourists(tourist_id),
  FOREIGN KEY (package_id) REFERENCES TourPackages(package_id)
);

CREATE TABLE Hotels (
  hotel_id INT PRIMARY KEY,
  hotel_name VARCHAR(50),
  location VARCHAR(100),
  rating DECIMAL(3, 2)
);

CREATE TABLE HotelReservations (
  reservation_id INT PRIMARY KEY not null,
  tourist_id INT,
  hotel_id INT,
  check_in_date DATE,
  check_out_date DATE,
  FOREIGN KEY (tourist_id) REFERENCES Tourists(tourist_id),
  FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id)
);


INSERT INTO Tourists (tourist_id, name, email, phone_number, nationality) VALUES
(1, 'Alice Wonderland', 'alice@example.com', '+1-555-123-4567', 'American'),
(2, 'Bob The Builder', 'bob@example.com', '+44-770-900-888', 'British'),
(3, 'Charlie Chaplin', 'charlie@example.com', '+1-213-555-1111', 'American'),
(4, 'Diana Prince', 'diana@example.com', '+1-202-555-2222', 'American'),
(5, 'Ethan Hunt', 'ethan@example.com', '+44-780-123-456', 'British'),
(6, 'Fiona Gallagher', 'fiona@example.com', '+1-312-555-3333', 'Irish'),
(7, 'George Bailey', 'george@example.com', '+1-773-555-4444', 'American'),
(8, 'Hannah Montana', 'hannah@example.com', '+1-406-555-5555', 'American'),
(9, 'Indiana Jones', 'indy@example.com', '+1-818-555-6666', 'American'),
(10, 'Jack Sparrow', 'jack@example.com', '+44-20-123-4567', 'British'),
(11, 'Leia Organa', 'leia@example.com', '+1-555-777-8888', 'American'),
(12, 'Luke Skywalker', 'luke@example.com', '+1-555-999-0000', 'American'),
(13, 'Darth Vader', 'vader@example.com', '+44-7-123-987', 'British'),
(14, 'Hermione Granger', 'hermione@example.com', '+44-788-456-789', 'British'),
(15, 'Harry Potter', 'harry@example.com', '+44-799-789-123', 'British'),
(16, 'Ron Weasley', 'ron@example.com', '+44-766-101-112', 'British'),
(17, 'Mickey Mouse', 'mickey@example.com', '+1-407-555-1212', 'American'),
(18, 'Minnie Mouse', 'minnie@example.com', '+1-407-555-2121', 'American'),
(19, 'Donald Duck', 'donald@example.com', '+1-407-555-3232', 'American'),
(20, 'Goofy', 'goofy@example.com', '+1-407-555-4343', 'American');



INSERT INTO TourPackages (package_id, package_name, description, price, duration_days) VALUES
(1, 'European Adventure', 'Explore the best of Europe!', 8000.00, 10),
(2, 'Asian Expedition', 'Discover the wonders of Asia!', 7500.00, 12),
(3, 'African Safari', 'Experience the thrill of the wild!', 9000.00, 7),
(4, 'American Road Trip', 'Hit the open road in the USA!', 5000.00, 14),
(5, 'Tropical Getaway', 'Relax on pristine beaches!', 4000.00, 5),
(6, 'Historical Europe', 'Journey through ancient history!', 6500.00, 9),
(7, 'Cultural Asia', 'Immerse yourself in diverse cultures!', 7000.00, 11),
(8, 'Wildlife Adventure', 'Encounter amazing animals!', 8500.00, 8),
(9, 'Mountain Trek', 'Conquer majestic peaks!', 6000.00, 6),
(10, 'Island Paradise', 'Escape to a tropical haven!', 3500.00, 4),
(11, 'South American Adventure', 'Explore the vibrant culture!', 9500.00, 15),
(12, 'Australian Outback', 'Discover the unique wildlife!', 8200.00, 12),
(13, 'Mediterranean Cruise', 'Sail through the beautiful seas!', 7800.00, 10),
(14, 'Trans-Siberian Railway', 'Journey across Russia!', 10000.00, 20),
(15, 'Icelandic Wonders', 'Witness the Northern Lights!', 6500.00, 7),
(16, 'Japanese Cherry Blossoms', 'Experience the beauty of spring!', 7200.00, 9),
(17, 'Canadian Rockies', 'Hike through stunning mountains!', 5800.00, 8),
(18, 'Peruvian Andes', 'Explore ancient Inca ruins!', 8000.00, 11),
(19, 'New Zealand Adventure', 'Experience thrilling activities!', 7500.00, 10),
(20, 'Southeast Asia Explorer', 'Discover hidden gems!', 6200.00, 14);


INSERT INTO Bookings (booking_id, tourist_id, package_id, booking_date, status) VALUES
(1, 1, 1, '2024-05-10', 'Confirmed'),
(2, 3, 2, '2024-06-15', 'Pending'),
(3, 5, 3, '2024-07-22', 'Confirmed'),
(4, 7, 4, '2024-08-01', 'Cancelled'),
(5, 9, 5, '2024-09-12', 'Confirmed'),
(6, 2, 6, '2024-10-03', 'Confirmed'),
(7, 4, 7, '2024-11-18', 'Pending'),
(8, 6, 8, '2024-12-25', 'Confirmed'),
(9, 8, 9, '2025-01-08', 'Confirmed'),
(10, 10, 10, '2025-02-14', 'Confirmed'),
(11, 11, 11, '2025-03-01', 'Confirmed'),
(12, 13, 12, '2025-04-05', 'Pending'),
(13, 15, 13, '2025-05-12', 'Confirmed'),
(14, 17, 14, '2025-06-19', 'Cancelled'),
(15, 19, 15, '2025-07-26', 'Confirmed'),
(16, 12, 16, '2025-08-02', 'Confirmed'),
(17, 14, 17, '2025-09-09', 'Pending'),
(18, 16, 18, '2025-10-16', 'Confirmed'),
(19, 18, 19, '2025-11-23', 'Confirmed'),
(20, 20, 20, '2025-12-30', 'Confirmed');

INSERT INTO Hotels (hotel_id, hotel_name, location, rating) VALUES
(1, 'Grand Budapest Hotel', 'Budapest, Hungary', 4.85),
(2, 'The Plaza', 'New York City, USA', 4.70),
(3, 'The Ritz-Carlton', 'Tokyo, Japan', 4.90),
(4, 'Burj Al Arab', 'Dubai, UAE', 4.95),
(5, 'The Savoy', 'London, UK', 4.60),
(6, 'Marina Bay Sands', 'Singapore', 4.75),
(7, 'The Peninsula', 'Hong Kong', 4.80),
(8, 'Four Seasons Resort', 'Bali, Indonesia', 4.90),
(9, 'The Beverly Hills Hotel', 'Los Angeles, USA', 4.65),
(10, 'Hotel de Paris Monte-Carlo', 'Monaco', 4.85),
(11, 'The Oberoi', 'Mumbai, India', 4.92),
(12, 'Taj Mahal Palace', 'Mumbai, India', 4.88),
(13, 'Claridge\'s', 'London, UK', 4.78),
(14, 'The Dorchester', 'London, UK', 4.82),
(15, 'Mandarin Oriental', 'Bangkok, Thailand', 4.90),
(16, 'Shangri-La Hotel', 'Singapore', 4.85),
(17, 'The Ritz-Carlton', 'Paris, France', 4.95),
(18, 'Hotel Bristol', 'Vienna, Austria', 4.80),
(19, 'The Gritti Palace', 'Venice, Italy', 4.75),
(20, 'Belmond Copacabana Palace', 'Rio de Janeiro, Brazil', 4.88);


INSERT INTO HotelReservations (reservation_id, tourist_id, hotel_id, check_in_date, check_out_date) VALUES
(1, 1, 1, '2024-05-10', '2024-05-15'),
(2, 3, 3, '2024-06-18', '2024-06-22'),
(3, 5, 5, '2024-07-25', '2024-07-30'),
(4, 7, 7, '2024-08-05', '2024-08-10'),
(5, 9, 9, '2024-09-16', '2024-09-20'),
(6, 2, 2, '2024-10-08', '2024-10-12'),
(7, 4, 4, '2024-11-22', '2024-11-26'),
(8, 6, 6, '2024-12-29', '2025-01-02'),
(9, 8, 8, '2025-01-12', '2025-01-16'),
(10, 10, 10, '2025-02-18', '2025-02-22'),
(11, 11, 11, '2025-03-05', '2025-03-10'),
(12, 13, 13, '2025-04-08', '2025-04-12'),
(13, 15, 15, '2025-05-15', '2025-05-20'),
(14, 17, 17, '2025-06-22', '2025-06-26'),
(15, 19, 19, '2025-07-29', '2025-08-02'),
(16, 12, 12, '2025-08-05', '2025-08-09'),
(17, 14, 14, '2025-09-12', '2025-09-16'),
(18, 16, 16, '2025-10-19', '2025-10-23'),
(19, 18, 18, '2025-11-26', '2025-11-30'),
(20, 20, 20, '2025-12-31', '2026-01-04');

select * from Tourists;

#--2)List the names of all tourists.
select name from Tourists;

#--3)How many tourists are of American nationality?
select count(*) from tourists where nationality = 'american';

#--4)How many bookings have been cancelled?
select count(*) from bookings where status ='cancelled';

#--5)Which hotel(s) have a rating of 4.60?
select hotel_name from hotels where rating = 4.60;

#--6)select package_name from Tourpackages where price > 6000;

#--7)Which tour packages have a price less than 6000?
select package_name from Tourpackages where price < 6000;

#--8)Which hotels are located in the USA (or have 'usa' in their location name)?
select hotel_name from hotels where location like '%usa' ;

#--9)Which hotel reservations have a check-out date between May 15, 2024, and January 4, 2026 (inclusive)?
select reservation_id from HotelReservations where check_out_date between '2024-05-15' and'2026-01-04';

#--10) Retrieve all information about tour packages that have a duration of less than 6 days.
select * from TourPackages where duration_days < 6;