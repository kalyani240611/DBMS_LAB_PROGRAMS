-- Create view
CREATE VIEW MyView AS
SELECT RollNo, Name FROM ST1;

-- Insert into view
INSERT INTO MyView VALUES (506, 'Prathisha');

-- Select from view
SELECT * FROM MyView;

-- Delete from view
DELETE FROM MyView WHERE RollNo = 506;

-- Drop view
DROP VIEW MyView;