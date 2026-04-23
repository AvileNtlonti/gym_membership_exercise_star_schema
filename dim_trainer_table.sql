CREATE TABLE dim_trainer (
    trainer_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(50),
    years_of_experience INT CHECK (years_of_experience >= 0),
    certification_level VARCHAR(20),
    trainer_status VARCHAR(20)
);
INSERT INTO dim_trainer
(trainer_id, full_name, specialization, years_of_experience, certification_level, trainer_status)
VALUES
(1, 'Chris Jordan', 'HIIT', 5, 'Level 2', 'Full-time'),
(2, 'Nokuthula Zulu', 'Yoga', 8, 'Level 3', 'Full-time'),
(3, 'Michael Brown', 'Strength', 6, 'Level 2', 'Freelance'),
(4, 'James Peterson', 'Cardio', 4, 'Level 1', 'Full-time'),
(5, 'Sarah Jacobs', 'CrossFit', 7, 'Level 3', 'Full-time'),
(6, 'Kevin Daniels', 'Bodybuilding', 10, 'Level 3', 'Full-time'),
(7, 'Linda Mokoena', 'Pilates', 6, 'Level 2', 'Freelance'),
(8, 'Peter Smith', 'Strength', 5, 'Level 2', 'Full-time'),
(9, 'Amanda Naidoo', 'Yoga', 9, 'Level 3', 'Full-time'),
(10, 'Brian Khumalo', 'HIIT', 3, 'Level 1', 'Freelance'),
(11, 'Daniel Green', 'Cardio', 4, 'Level 2', 'Full-time'),
(12, 'Sophia Adams', 'CrossFit', 8, 'Level 3', 'Full-time');