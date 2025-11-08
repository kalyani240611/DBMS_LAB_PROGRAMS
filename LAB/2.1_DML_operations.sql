-- Create Students table
CREATE TABLE Students (
    RollNo VARCHAR(30),
    Name VARCHAR(30)
);

-- Insert data
INSERT INTO Students VALUES ('24B11CS234', 'Bala');
INSERT INTO Students VALUES ('24B11CS381', 'Kiran');

-- Select all
SELECT * FROM Students;

-- Select specific column
SELECT Name FROM Students;

-- Conditional select
SELECT * FROM Students WHERE RollNo = '24B11CS234';

-- Delete a row
DELETE FROM Students WHERE RollNo = '24B11CS381';

-- Update a row
UPDATE Students SET Name = 'Bala Raju' WHERE RollNo = '24B11CS381';