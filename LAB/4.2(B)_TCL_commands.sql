-- Create table
CREATE TABLE std1 (
    rollno INTEGER,
    name VARCHAR2(20),
    branch VARCHAR2(20)
);

-- Insert and savepoint A
INSERT INTO std1 VALUES (201, 'ramesh', 'mech');
SAVEPOINT A;

-- Insert and savepoint B
INSERT INTO std1 VALUES (202, 'geetha', 'civil');
SAVEPOINT B;

-- Update
UPDATE std1 SET branch = 'IT' WHERE rollno = 201;

-- Rollback to B
ROLLBACK TO B;

-- Rollback to A
ROLLBACK TO A;