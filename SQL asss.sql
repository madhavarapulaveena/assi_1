----1
	DECLARE @temp TABLE
(
    string NVARCHAR(50)
)

INSERT INTO @temp (string)
VALUES 
    ('003Preliminary Examination Plan'),
    ('Coordination005'),
    ('Balance1000sheet')

SELECT SUBSTRING(string, PATINDEX('%[0-9]%', string), PATINDEX('%[0-9][^0-9]%', string + 't') - PATINDEX('%[0-9]%', 
                    string) + 1) AS Number
FROM @temp  
------------------------------------------------------
---2

SELECT DATEDIFF(YEAR, '2002-12-16', GETDATE()) AS YearsOld

--------------------------------------
----3

CREATE TABLE ET (
    id INT PRIMARY KEY,
    d_col VARCHAR(100),
    restricted_column AS (1/0) PERSISTED
);
SELECT id, d_col, restricted_column FROM ET;
SELECT id, d_col FROM ET;


-----5
CREATE TABLE empH (
EmpID INT PRIMARY KEY,
empName VARCHAR(40),
managerID INT
)
 
INSERT INTO empH VALUES
(1, 'lu', NULL),
(2, 'li', 1),
(3, 'la', 1),
(4, 'lo', 2),
(5, 'le', 5),
(6, 'ls', 6),
(7, 'lc', 6)
 
WITH employee_hierarchy AS (
  SELECT EmpID , empName, managerID, 1 as level
  FROM empH
  WHERE  managerID IS NULL
  UNION ALL
  SELECT e.EmpID, e.empName, e.managerID, eh.level + 1
  FROM empH e
  JOIN employee_hierarchy eh ON e.managerID = eh.EmpID   
)
SELECT EmpID, empName, 
(SELECT empName FROM empH WHERE EmpID=(
SELECT managerID FROM empH WHERE m.EmpID=EmpID)) AS managerName,
level
FROM employee_hierarchy m;



-----4

CREATE TABLE CT(
[Date] DATE PRIMARY KEY,
DayOfYear INT,
Week INT,
DayOfWeek INT,s
Month INT,
DayOfMonth INT
)

DECLARE @year INT = 2024
DECLARE @date DATE = CONCAT(@year, '/01/01')

WHILE (YEAR(@date)=@year)
BEGIN
	INSERT INTO CT VALUES (
		@date,
		DATEPART(DAYOFYEAR, @date),
		DATEPART(WEEKDAY, @date),
		DATEPART(WEEK, @date),
		DATEPART(MONTH, @date),
		DATEPART(DAY, @date)
	)
	SET @date = DATEADD(d, 1, @date)
END

SELECT * FROM CT;



