CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day_of_week VARCHAR(15),
    month INT CHECK (month BETWEEN 1 AND 12),
    quarter VARCHAR(2),
    year INT,
    is_weekend BIT,
    is_holiday BIT
);
INSERT INTO dim_date
(date_id, full_date, day_of_week, month, quarter, year, is_weekend, is_holiday)
VALUES
(1, '2025-01-01', 'Wednesday', 1, 'Q1', 2025, 0, 1),
(2, '2025-01-02', 'Thursday', 1, 'Q1', 2025, 0, 0),
(3, '2025-01-03', 'Friday', 1, 'Q1', 2025, 0, 0),
(4, '2025-01-04', 'Saturday', 1, 'Q1', 2025, 1, 0),
(5, '2025-01-05', 'Sunday', 1, 'Q1', 2025, 1, 0),
(6, '2025-01-06', 'Monday', 1, 'Q1', 2025, 0, 0),
(7, '2025-01-07', 'Tuesday', 1, 'Q1', 2025, 0, 0),
(8, '2025-01-08', 'Wednesday', 1, 'Q1', 2025, 0, 0),
(9, '2025-01-09', 'Thursday', 1, 'Q1', 2025, 0, 0),
(10, '2025-01-10', 'Friday', 1, 'Q1', 2025, 0, 0),
(11, '2025-01-11', 'Saturday', 1, 'Q1', 2025, 1, 0),
(12, '2025-01-12', 'Sunday', 1, 'Q1', 2025, 1, 0);