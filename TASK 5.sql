-- Create Departments table
CREATE TABLE Departments (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(20)
);

-- Insert sample department data
INSERT INTO Departments (Dept_ID, Dept_Name)
VALUES 
(1, 'Finance'),
(2, 'HR'),
(3, 'IT'),
(4, 'Marketing');
-- Drop and recreate Employees table with Department_ID and Manager_ID
DROP TABLE IF EXISTS Employees;

CREATE TABLE Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(30) NOT NULL,
    Department_ID INT,
    Manager_ID INT,
    Salary INT,
    FOREIGN KEY (Department_ID) REFERENCES Departments(Dept_ID)
);
INSERT INTO Employees (Emp_ID, Emp_Name, Department_ID, Manager_ID, Salary)
VALUES
(1, 'AJAY', 1, NULL, 50000),       -- Manager
(2, 'ATUL', 2, 1, 45000),
(3, 'RUTURAJ', 1, 1, 52000),
(4, 'SAMRUDDHI', 3, 1, 60000),
(5, 'PRASHANT', 3, 2, 58000),
(6, 'SHIVAM', 2, 2, 47000);
-- INNER JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM Employees E
INNER JOIN Departments D
ON E.Department_ID = D.Dept_ID;

-- LEFT JOIN
SELECT E.Emp_Name, D.Dept_Name
FROM Employees E
LEFT JOIN Departments D
ON E.Department_ID = D.Dept_ID;

-- RIGHT JOIN (Only works in MySQL / PostgreSQL)
SELECT E.Emp_Name, D.Dept_Name
FROM Employees E
RIGHT JOIN Departments D
ON E.Department_ID = D.Dept_ID;

-- FULL OUT

