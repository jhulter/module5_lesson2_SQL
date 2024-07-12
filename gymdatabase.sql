CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT);
CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);
INSERT INTO Members (id, name, age)
VALUES (1, 'Jennifer Aniston', 21),
(2, 'John Malkovic', 55),
(3, 'George Clooney', 53),
(4, 'Peter O Tool', 85),
(5, 'Chris Hemsworth', 35),
(6, 'Billie Eilish', 25),
(7, 'Jane Doe', 30),
(8, 'John Smith', 31);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES (1, 1, '1997-12-12', 'Morning', 'Benchpress'),
(2, 5, '2022-1-13', 'Evening', 'Stairmaster'),
(3, 6, '2023-4-10', 'Afternoon', 'Treadmill'),
(4, 4, '2023-10-17', 'Morning', 'Barcurl'),
(5, 3, '2024-1-12', 'Night', 'Pushups'),
(6, 7, '2024-2-4', 'Morning', 'Swimming'),
(7, 8, '2024-5-4', 'Morning', 'Treadmill');