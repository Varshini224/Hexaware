create database petspal;
use petspal;


DROP TABLE IF EXISTS participants;
DROP TABLE IF EXISTS adoptionevents;
DROP TABLE IF EXISTS donations;
DROP TABLE IF EXISTS pets;
DROP TABLE IF EXISTS shelters;

CREATE TABLE pets (
    petid INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    breed VARCHAR(100) NOT NULL,
    type VARCHAR(50) NOT NULL,
    availableforadoption BOOLEAN NOT NULL
);


INSERT INTO pets (name, age, breed, type, availableforadoption) VALUES
('Buddy', 2, 'Labrador', 'Dog', TRUE),
('Mittens', 3, 'Persian', 'Cat', FALSE),
('Charlie', 1, 'Beagle', 'Dog', TRUE),
('Max', 4, 'Bulldog', 'Dog', TRUE),
('Lucy', 5, 'Siamese', 'Cat', FALSE),
('Bella', 2, 'Golden Retriever', 'Dog', TRUE),
('Daisy', 3, 'Maine Coon', 'Cat', TRUE),
('Lola', 1, 'Poodle', 'Dog', TRUE),
('Coco', 4, 'Bengal', 'Cat', FALSE),
('Rocky', 2, 'Boxer', 'Dog', TRUE),
('Milo', 6, 'Ragdoll', 'Cat', TRUE),
('Chloe', 3, 'Dachshund', 'Dog', FALSE),
('Simba', 1, 'Siberian', 'Cat', TRUE),
('Luna', 2, 'Chow Chow', 'Dog', TRUE),
('Oscar', 4, 'Abyssinian', 'Cat', TRUE),
('Zoe', 3, 'Dalmatian', 'Dog', TRUE),
('Jack', 5, 'Shih Tzu', 'Dog', TRUE),
('Ginger', 2, 'Tabby', 'Cat', TRUE),
('Ruby', 1, 'Husky', 'Dog', TRUE),
('Toby', 4, 'Scottish Fold', 'Cat', FALSE);


CREATE TABLE shelters (
    shelterid INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(200) NOT NULL
);


INSERT INTO shelters (name, location) VALUES
('Happy Tails Shelter', 'New York'),
('Safe Haven', 'Los Angeles'),
('Paw Rescue Center', 'San Francisco'),
('Forever Friends', 'Chicago'),
('Second Chance', 'Houston'),
('Furry Home', 'Dallas'),
('Pet Haven', 'Phoenix'),
('Loyal Companions', 'Philadelphia'),
('Tail Waggers', 'San Antonio'),
('Whisker Wonders', 'San Diego'),
('Fur-Ever Home', 'Austin'),
('Caring Paws', 'Jacksonville'),
('Paws & Claws', 'Fort Worth'),
('Animal Ark', 'Columbus'),
('Hope for Paws', 'Charlotte'),
('Critter Haven', 'San Jose'),
('Kind Hearts Shelter', 'Indianapolis'),
('Pet Pals', 'Seattle'),
('Happy Paws', 'Denver'),
('Safe Tails', 'Washington D.C.');


CREATE TABLE donations (
    donationid INT AUTO_INCREMENT PRIMARY KEY,
    donorname VARCHAR(100) NOT NULL,
    donationtype VARCHAR(50) NOT NULL,
    donationamount DECIMAL(10, 2),
    donationitem VARCHAR(100),
    donationdate DATE NOT NULL
);


INSERT INTO donations (donorname, donationtype, donationamount, donationitem, donationdate) VALUES
('John Doe', 'Money', 150.00, NULL, '2024-01-15'),
('Jane Smith', 'Food', NULL, 'Canned Goods', '2024-02-01'),
('Alice Johnson', 'Money', 200.00, NULL, '2024-03-10'),
('Robert Brown', 'Clothes', NULL, 'Blankets', '2024-01-25'),
('Emily Davis', 'Money', 300.00, NULL, '2024-04-18'),
('Michael Wilson', 'Toys', NULL, 'Dog Toys', '2024-02-20'),
('Sarah Taylor', 'Food', NULL, 'Dry Cat Food', '2024-03-15'),
('Daniel White', 'Money', 100.00, NULL, '2024-05-01'),
('Jessica Moore', 'Clothes', NULL, 'Bedsheets', '2024-06-10'),
('David Garcia', 'Money', 250.00, NULL, '2024-07-22'),
('Sophia Martinez', 'Food', NULL, 'Pet Treats', '2024-08-13'),
('James Thomas', 'Money', 500.00, NULL, '2024-09-05'),
('Isabella Martin', 'Toys', NULL, 'Cat Toys', '2024-10-11'),
('William Lee', 'Food', NULL, 'Dog Food', '2024-11-01'),
('Olivia Harris', 'Money', 400.00, NULL, '2024-12-25'),
('Ethan Clark', 'Clothes', NULL, 'Pillows', '2024-01-30'),
('Mia Lewis', 'Money', 350.00, NULL, '2024-02-15'),
('Benjamin Young', 'Toys', NULL, 'Chew Toys', '2024-03-08'),
('Charlotte Walker', 'Food', NULL, 'Kitten Food', '2024-04-14'),
('Henry Hall', 'Money', 180.00, NULL, '2024-05-20');

-- Create the adoptionevents table
CREATE TABLE adoptionevents (
    eventid INT AUTO_INCREMENT PRIMARY KEY,
    eventname VARCHAR(100) NOT NULL,
    eventdate TIMESTAMP NOT NULL,
    location VARCHAR(200) NOT NULL
);


INSERT INTO adoptionevents (eventname, eventdate, location) VALUES
('Adoption Fair', '2024-03-10 10:00:00', 'Central Park'),
('Pet Carnival', '2024-04-05 15:00:00', 'City Square'),
('Spring Adoption Day', '2024-05-20 09:00:00', 'Riverside Park'),
('Fur Friends Fest', '2024-06-15 12:00:00', 'Community Center'),
('Summer Paws Gala', '2024-07-25 18:00:00', 'Grand Ballroom'),
('Pet Parade', '2024-08-12 14:00:00', 'Main Street'),
('Rescue Run', '2024-09-09 08:00:00', 'Lakeside Trail'),
('Autumn Adoption Day', '2024-10-20 10:00:00', 'Hilltop Plaza'),
('Paw Prints Fair', '2024-11-18 16:00:00', 'Expo Center'),
('Holiday Pet Drive', '2024-12-12 13:00:00', 'Town Hall'),
('Winter Wonderland', '2025-01-15 14:00:00', 'City Park'),
('Pet Appreciation Day', '2025-02-18 11:00:00', 'Zoo Pavilion'),
('Happy Tails Event', '2025-03-22 10:00:00', 'Pet Shelter Grounds'),
('Fur-Ever Friends Festival', '2025-04-19 12:00:00', 'Beachfront'),
('Spring Pet Fest', '2025-05-23 09:00:00', 'Community Stadium'),
('Adoption Extravaganza', '2025-06-16 10:00:00', 'Pet Mall'),
('Pawfect Match Day', '2025-07-20 13:00:00', 'Town Center'),
('Animal Love Festival', '2025-08-22 16:00:00', 'Outdoor Arena'),
('Rescue Rave', '2025-09-30 14:00:00', 'Civic Center'),
('Paws & Claws Event', '2025-10-25 10:00:00', 'Open Grounds');


CREATE TABLE participants (
    participantid INT AUTO_INCREMENT PRIMARY KEY,
    participantname VARCHAR(100) NOT NULL,
    participanttype VARCHAR(50) NOT NULL,
    eventid INT NOT NULL,
    FOREIGN KEY (eventid) REFERENCES adoptionevents(eventid) ON DELETE CASCADE
);
select * from participants

INSERT INTO participants (participantname, participanttype, eventid) VALUES
('Alice Johnson', 'Volunteer', 1),
('Bob Brown', 'Donor', 2),
('Charlie Adams', 'Sponsor', 3),
('Diana Evans', 'Volunteer', 4),
('Edward Harris', 'Organizer', 5),
('Fiona Lewis', 'Donor', 6),
('George King', 'Sponsor', 7),
('Hannah Lee', 'Volunteer', 8),
('Ian Walker', 'Organizer', 9),
('Jessica Moore', 'Sponsor', 10),
('Kevin Turner', 'Volunteer', 11),
('Laura White', 'Donor', 12),
('Michael Baker', 'Sponsor', 13),
('Nina Green', 'Volunteer', 14),
('Oliver Scott', 'Donor', 15),
('Paul Allen', 'Organizer', 16),
('Quincy Hill', 'Volunteer', 17),
('Rachel Clark', 'Donor', 18),
('Sophia Wright', 'Sponsor', 19),
('Tom Young', 'Volunteer', 20);

select * from adoptionevents;
select * from donations;
select * from participants;
select * from pets;
select * from shelters;