-- Create table with primary index
CREATE TABLE StudentsF (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    EnrollmentDate DATE
);

-- Create secondary index
CREATE INDEX idx_LastName ON StudentsF(LastName);

-- Insert data
INSERT INTO StudentsF VALUES (101, 'John', 'Doe', TO_DATE('15-Aug-2025', 'DD-Mon-YYYY'));
INSERT INTO StudentsF VALUES (102, 'Jane', 'Smith', TO_DATE('16-Aug-2025', 'DD-Mon-YYYY'));
INSERT INTO StudentsF VALUES (103, 'Ravi', 'Kumar', TO_DATE('25-Oct-2025', 'DD-Mon-YYYY'));

-- Retrieve using primary index
SELECT * FROM StudentsF WHERE StudentID = 102;

-- Retrieve using secondary index
SELECT * FROM StudentsF WHERE LastName = 'Doe';

-- Delete using primary index
DELETE FROM StudentsF WHERE StudentID = 103;

-- Delete using secondary index
DELETE FROM StudentsF WHERE LastName = 'Smith';

-- Drop index
DROP INDEX idx_LastName;