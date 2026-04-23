CREATE TABLE dim_member (
    member_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 16 AND age <= 100),
    gender VARCHAR(10),
    membership_type VARCHAR(20),
    join_date DATE,
    status VARCHAR(20),
    home_branch_location VARCHAR(100)

);
INSERT INTO dim_member 
(member_id, full_name, age, gender, membership_type, join_date, status, home_branch_location)
VALUES
(1, 'John Mokoena', 25, 'Male', 'Basic', '2024-01-10', 'Active', 'Tembisa'),
(2, 'Thandi Nkosi', 30, 'Female', 'Premium', '2023-11-15', 'Active', 'Soweto'),
(3, 'Sipho Dlamini', 22, 'Male', 'Elite', '2025-02-01', 'Active', 'Midrand'),
(4, 'Lerato Khumalo', 28, 'Female', 'Premium', '2024-06-20', 'Inactive', 'Benoni'),
(5, 'David Smith', 35, 'Male', 'Basic', '2022-09-10', 'Active', 'Boksburg'),
(6, 'Zanele Mthembu', 27, 'Female', 'Elite', '2025-01-15', 'Active', 'Alberton'),
(7, 'Brian Molefe', 40, 'Male', 'Premium', '2023-03-18', 'Active', 'Pretoria'),
(8, 'Ayanda Ndlovu', 24, 'Female', 'Basic', '2024-08-05', 'Active', 'Tembisa'),
(9, 'Chris Daniels', 31, 'Male', 'Elite', '2023-12-12', 'Active', 'Sandton'),
(10, 'Nomsa Zulu', 29, 'Female', 'Premium', '2024-04-22', 'Active', 'Katlehong'),
(11, 'Peter Naidoo', 33, 'Male', 'Basic', '2023-07-11', 'Active', 'Durban'),
(12, 'Ayesha Khan', 26, 'Female', 'Elite', '2024-09-01', 'Active', 'Johannesburg');
