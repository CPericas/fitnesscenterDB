Use fitness_center_db;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);
ALTER TABLE Members MODIFY id INT AUTO_INCREMENT;

CREATE TABLE WorkoutSessions (
    session_id INT auto_increment PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

insert into members (name, age)
values ('john doe', '35'),
	('jane smith', '23'),
    ('mick foley', '58'); 

insert into workoutsessions (member_id, session_date, session_time, activity)
values ('1', '2024-07-31', '1700', 'cardio'),
	('2', '2024-07-31', '1800', 'weights'),
    ('3', '2024-07-31', '1900', 'hiit');

update workoutsessions
set session_time = '1500'
where session_id = 2;

set sql_safe_updates = 0;
DELETE FROM workoutsessions WHERE member_id = 3;
delete from members where name = 'mick foley';
set sql_safe_updates = 1;

