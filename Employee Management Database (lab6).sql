CREATE DATABASE lab6;
USE lab6;

CREATE TABLE Employees (
    EmpID DECIMAL(3,0) PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Nationality VARCHAR(30) NOT NULL,
    Qualification VARCHAR(20),
    Salary DECIMAL(7,2) CHECK (Salary > 0),
    AppointmentDate DATE NOT NULL,
    Experience DECIMAL(3,0),
    Occupation VARCHAR(30)
);

INSERT INTO Employees (EmpID, EmpName, Nationality, Qualification, Salary, AppointmentDate, Experience, Occupation)
VALUES 
(101, 'Ahmad Saleh', 'Saudi', 'BA', 5000, '2001-01-01', 2, 'TA'),
(202, 'Khaled Al Ahmadi', 'Saudi', 'Master', 7500, '2002-02-02', 4, NULL),
(303, 'Fahad Abdullah', 'Syrian', 'Master', 7000, '2003-03-03', 2, 'Lecture'),
(404, 'Adel Ahmad', 'Egyptian', 'Doctorate', 9000, '2004-04-04', NULL, 'Doctor'),
(505, 'Rami Omar', 'Saudi', 'Doctorate', 11500, '2005-05-05', 8, 'Doctor'),
(606, 'Samer Mohmad', 'Syrian', 'Doctorate', 9500, '2006-06-06', 3, 'Doctor');

-- By Employee Name (Ascending)
SELECT EmpName, Nationality, Salary FROM Employees ORDER BY EmpName ASC;

-- By Salary (Descending)
SELECT EmpName, Nationality, Salary FROM Employees ORDER BY Salary DESC;

-- Date Example (Newest First)
SELECT EmpName, AppointmentDate FROM Employees ORDER BY AppointmentDate DESC;

-- Distinct Nationalities
SELECT DISTINCT Nationality FROM Employees;

-- Distinct (non-repeated) Salaries
SELECT DISTINCT Salary FROM Employees;

-- Increase Salary by 200
SELECT EmpName, Nationality, Salary, Salary + 200 AS NewSalary FROM Employees;

-- Increase Salary by 200 only for “Ahmad Saleh”
SELECT EmpName, Nationality, Salary, Salary + 200 AS UpdatedSalary FROM Employees WHERE EmpName = 'Ahmad Saleh';

-- Show 10% Bonus
SELECT EmpName, Salary, Salary * 0.10 AS Bonus FROM Employees;

-- Calculate Yearly Salary
SELECT EmpName, Salary, Salary * 12 AS YearlySalary FROM Employees;

-- Sum of Salary per Nationality
SELECT Nationality, SUM(Salary) AS TotalSalary FROM Employees GROUP BY Nationality;

-- Average Experience per Qualification
SELECT Qualification, AVG(Experience) AS AvgExperience FROM Employees GROUP BY Qualification;
