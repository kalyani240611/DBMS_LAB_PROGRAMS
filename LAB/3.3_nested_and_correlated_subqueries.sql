-- Nested IN
SELECT SName FROM Sailors WHERE SID IN (
    SELECT SID FROM Reserves WHERE BID = 103
);

-- Nested NOT IN
SELECT SName FROM Sailors WHERE SID NOT IN (
    SELECT SID FROM Reserves WHERE BID = 103
);

-- ALL
SELECT SID FROM Sailors WHERE Rating >= ALL (
    SELECT Rating FROM Sailors
);

-- ANY
SELECT SID FROM Sailors WHERE Rating > ANY (
    SELECT Rating FROM Sailors WHERE SName = 'Andy'
);

-- Correlated EXISTS
SELECT SName FROM Sailors s WHERE EXISTS (
    SELECT * FROM Reserves r WHERE s.SID = r.SID AND r.BID = 103
);

-- Correlated NOT EXISTS
SELECT SName FROM Sailors s WHERE NOT EXISTS (
    SELECT * FROM Reserves r WHERE s.SID = r.SID AND r.BID = 103
);