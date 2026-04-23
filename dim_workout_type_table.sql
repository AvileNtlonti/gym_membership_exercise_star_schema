CREATE TABLE dim_workout_type (
    workout_type_id INT PRIMARY KEY,
    category VARCHAR(50),
    workout_name VARCHAR(100),
    target_muscle_group VARCHAR(50)
);
INSERT INTO dim_workout_type
(workout_type_id, category, workout_name, target_muscle_group)
VALUES
(1, 'Cardio', 'Treadmill', 'Full Body'),
(2, 'Cardio', 'Cycling', 'Lower Body'),
(3, 'Strength', 'Bench Press', 'Upper Body'),
(4, 'Strength', 'Squats', 'Lower Body'),
(5, 'HIIT', 'Burpees', 'Full Body'),
(6, 'HIIT', 'Jump Rope', 'Full Body'),
(7, 'Flexibility', 'Yoga Flow', 'Full Body'),
(8, 'Strength', 'Deadlift', 'Full Body'),
(9, 'Cardio', 'Rowing', 'Full Body'),
(10, 'Flexibility', 'Pilates Core', 'Core'),
(11, 'Strength', 'Shoulder Press', 'Upper Body'),
(12, 'Cardio', 'Stair Climber', 'Lower Body');