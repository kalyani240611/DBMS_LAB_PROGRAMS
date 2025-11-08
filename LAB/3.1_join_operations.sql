-- Inner Join
SELECT * FROM tb1 INNER JOIN tb2 ON tb1.RNO = tb2.RNO;

-- Left Outer Join
SELECT * FROM tb1 LEFT OUTER JOIN tb2 ON tb1.RNO = tb2.RNO;

-- Right Outer Join
SELECT * FROM tb1 RIGHT OUTER JOIN tb2 ON tb1.RNO = tb2.RNO;

-- Natural Join
SELECT * FROM tb1 NATURAL JOIN tb2;

-- Cross Join
SELECT * FROM tb1 CROSS JOIN tb2;

-- Self Join
SELECT t1.RNO, t2.Name FROM tb1 t1, tb1 t2 WHERE t1.RNO = t2.RNO;

-- Equi Join
SELECT * FROM tb1, tb2 WHERE tb1.RNO = tb2.RNO;