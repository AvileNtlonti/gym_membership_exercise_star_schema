Create database Gym_membership;
create table workout_sessions(
 session_id INT PRIMARY KEY,
    
    member_id INT,
    trainer_id INT,
    date_id INT,
    workout_type_id INT,
    
    calories_burned INT CHECK (calories_burned >= 0),
    duration_minutes INT CHECK (duration_minutes > 0),
    intensity_rating INT CHECK (intensity_rating BETWEEN 1 AND 10),
    is_group_session BIT,
    )
    INSERT INTO workout_sessions
(session_id, member_id, trainer_id, date_id, workout_type_id, calories_burned, duration_minutes, intensity_rating, is_group_session)
VALUES
(1, 1, 2, 1, 5, 450, 45, 8, 1),
(2, 2, 1, 2, 3, 300, 30, 6, 0),
(3, 3, 4, 3, 2, 500, 50, 9, 1),
(4, 4, 3, 4, 1, 250, 25, 5, 0),
(5, 5, 5, 5, 4, 600, 60, 9, 1),
(6, 6, 6, 6, 8, 550, 55, 8, 0),
(7, 7, 7, 7, 7, 200, 40, 4, 1),
(8, 8, 8, 8, 6, 480, 35, 7, 0),
(9, 9, 9, 9, 9, 520, 50, 8, 1),
(10, 10, 10, 10, 10, 300, 45, 6, 0),
(11, 11, 11, 11, 11, 400, 40, 7, 1),
(12, 12, 12, 12, 12, 420, 42, 7, 0),
(13, 1, 3, 6, 2, 350, 30, 6, 1),
(14, 2, 4, 7, 4, 500, 50, 9, 0),
(15, 3, 5, 8, 8, 550, 55, 8, 1);
---
SELECT 
    f.session_id,
    f.calories_burned,
    f.duration_minutes,
    m.full_name,
    m.membership_type,
    m.home_branch_location
FROM workout_sessions f
INNER JOIN dim_member as  m
    ON f.member_id = m.member_id;
    ---
    SELECT 
    f.session_id,
    f.duration_minutes,
    f.intensity_rating,
    t.full_name AS trainer_name,
    t.specialization,
    t.years_of_experience
FROM workout_sessions f
INNER JOIN dim_trainer t
    ON f.trainer_id = t.trainer_id;
    ---
    SELECT 
    f.session_id,
    f.calories_burned,
    w.workout_name,
    w.category,
    w.target_muscle_group
FROM workout_sessions f
INNER JOIN dim_workout_type w
    ON f.workout_type_id = w.workout_type_id;
    ---
    SELECT 
    f.session_id,
    f.duration_minutes,
    d.full_date,
    d.day_of_week,
    d.month,
    d.year
FROM workout_sessions f
INNER JOIN dim_date d
    ON f.date_id = d.date_id;