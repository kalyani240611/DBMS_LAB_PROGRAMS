-- Union
SELECT SName FROM Sailors s, Reserves r, Boats b
WHERE s.SID = r.SID AND b.BID = r.BID AND b.BColor = 'Red'
UNION
SELECT SName FROM Sailors s, Reserves r, Boats b
WHERE s.SID = r.SID AND b.BID = r.BID AND b.BColor = 'Green';

-- Union All
SELECT SName FROM Sailors s, Reserves r, Boats b
WHERE s.SID = r.SID AND b.BID = r.BID AND b.BColor = 'Red'
UNION ALL
SELECT SName FROM Sailors s, Reserves r, Boats b
WHERE s.SID = r.SID AND b.BID = r.BID AND b.BColor = 'Green';

-- Intersect
SELECT SName FROM Sailors s, Reserves r, Boats b
WHERE s.SID = r.SID AND b.BID = r.BID AND b.BColor = 'Red'
INTERSECT
SELECT SName FROM Sailors s, Reserves r, Boats b
WHERE s.SID = r.SID AND b.BID = r.BID AND b.BColor = 'Green';

-- Minus
SELECT SName FROM Sailors s, Reserves r, Boats b
WHERE s.SID = r.SID AND b.BID = r.BID AND b.BColor = 'Red'
MINUS
SELECT SName FROM Sailors s, Reserves r, Boats b
WHERE s.SID = r.SID AND b.BID = r.BID AND b.BColor = 'Green';