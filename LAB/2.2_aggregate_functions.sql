-- Average amount
SELECT AVG(Amount) FROM Company;

-- Sum of amounts
SELECT SUM(Amount) FROM Company;

-- Maximum amount
SELECT MAX(Amount) FROM Company;

-- Minimum amount
SELECT MIN(Amount) FROM Company;

-- Count rows
SELECT COUNT(*) FROM Company;

-- Grouped sum
SELECT CompanyN, SUM(Amount) FROM Company GROUP BY CompanyN;

-- Grouped min
SELECT CompanyN, MIN(Amount) FROM Company GROUP BY CompanyN;

-- Grouped max
SELECT CompanyN, MAX(Amount) FROM Company GROUP BY CompanyN;

-- Grouped count
SELECT CompanyN, COUNT(*) FROM Company GROUP BY CompanyN;

-- Grouped count with condition
SELECT CompanyN, COUNT(*) FROM Company GROUP BY CompanyN HAVING COUNT(*) > 1;

-- Grouped sum with condition
SELECT CompanyN, SUM(Amount) FROM Company GROUP BY CompanyN HAVING SUM(Amount) > 10000;