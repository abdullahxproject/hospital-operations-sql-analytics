-- Hospital Operations SQL Analytics | SQLite
-- Run in a new database. All records are synthetic.
PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
CREATE TABLE Departments (
 DepartmentID int PRIMARY KEY, DepartmentName nvarchar(80) NOT NULL,
 BedCapacity int NOT NULL CHECK (BedCapacity > 0));
CREATE TABLE Patients (
 PatientID int PRIMARY KEY, PatientCode varchar(20) NOT NULL UNIQUE,
 BirthYear int NOT NULL CHECK (BirthYear BETWEEN 1900 AND 2026));
CREATE TABLE Visits (
 VisitID int PRIMARY KEY,
 PatientID int NOT NULL REFERENCES Patients(PatientID),
 DepartmentID int NOT NULL REFERENCES Departments(DepartmentID),
 ArrivalTime datetime2 NOT NULL, SeenTime datetime2 NOT NULL,
 DischargeTime datetime2 NULL,
 VisitType varchar(12) NOT NULL CHECK (VisitType IN ('Emergency','Inpatient','Outpatient')),
 CHECK (SeenTime >= ArrivalTime),
 CHECK (DischargeTime IS NULL OR DischargeTime >= SeenTime));
INSERT INTO Departments VALUES (1,'Emergency',20),(2,'Cardiology',30),(3,'General Medicine',40),(4,'Orthopedics',25);
INSERT INTO Patients VALUES (1,'SYN-0001',1951);
INSERT INTO Patients VALUES (2,'SYN-0002',1952);
INSERT INTO Patients VALUES (3,'SYN-0003',1953);
INSERT INTO Patients VALUES (4,'SYN-0004',1954);
INSERT INTO Patients VALUES (5,'SYN-0005',1955);
INSERT INTO Patients VALUES (6,'SYN-0006',1956);
INSERT INTO Patients VALUES (7,'SYN-0007',1957);
INSERT INTO Patients VALUES (8,'SYN-0008',1958);
INSERT INTO Patients VALUES (9,'SYN-0009',1959);
INSERT INTO Patients VALUES (10,'SYN-0010',1960);
INSERT INTO Patients VALUES (11,'SYN-0011',1961);
INSERT INTO Patients VALUES (12,'SYN-0012',1962);
INSERT INTO Patients VALUES (13,'SYN-0013',1963);
INSERT INTO Patients VALUES (14,'SYN-0014',1964);
INSERT INTO Patients VALUES (15,'SYN-0015',1965);
INSERT INTO Patients VALUES (16,'SYN-0016',1966);
INSERT INTO Patients VALUES (17,'SYN-0017',1967);
INSERT INTO Patients VALUES (18,'SYN-0018',1968);
INSERT INTO Patients VALUES (19,'SYN-0019',1969);
INSERT INTO Patients VALUES (20,'SYN-0020',1970);
INSERT INTO Patients VALUES (21,'SYN-0021',1971);
INSERT INTO Patients VALUES (22,'SYN-0022',1972);
INSERT INTO Patients VALUES (23,'SYN-0023',1973);
INSERT INTO Patients VALUES (24,'SYN-0024',1974);
INSERT INTO Patients VALUES (25,'SYN-0025',1975);
INSERT INTO Patients VALUES (26,'SYN-0026',1976);
INSERT INTO Patients VALUES (27,'SYN-0027',1977);
INSERT INTO Patients VALUES (28,'SYN-0028',1978);
INSERT INTO Patients VALUES (29,'SYN-0029',1979);
INSERT INTO Patients VALUES (30,'SYN-0030',1980);
INSERT INTO Patients VALUES (31,'SYN-0031',1981);
INSERT INTO Patients VALUES (32,'SYN-0032',1982);
INSERT INTO Patients VALUES (33,'SYN-0033',1983);
INSERT INTO Patients VALUES (34,'SYN-0034',1984);
INSERT INTO Patients VALUES (35,'SYN-0035',1985);
INSERT INTO Patients VALUES (36,'SYN-0036',1986);
INSERT INTO Patients VALUES (37,'SYN-0037',1987);
INSERT INTO Patients VALUES (38,'SYN-0038',1988);
INSERT INTO Patients VALUES (39,'SYN-0039',1989);
INSERT INTO Patients VALUES (40,'SYN-0040',1990);
INSERT INTO Patients VALUES (41,'SYN-0041',1991);
INSERT INTO Patients VALUES (42,'SYN-0042',1992);
INSERT INTO Patients VALUES (43,'SYN-0043',1993);
INSERT INTO Patients VALUES (44,'SYN-0044',1994);
INSERT INTO Patients VALUES (45,'SYN-0045',1995);
INSERT INTO Patients VALUES (46,'SYN-0046',1996);
INSERT INTO Patients VALUES (47,'SYN-0047',1997);
INSERT INTO Patients VALUES (48,'SYN-0048',1998);
INSERT INTO Patients VALUES (49,'SYN-0049',1999);
INSERT INTO Patients VALUES (50,'SYN-0050',2000);
INSERT INTO Patients VALUES (51,'SYN-0051',2001);
INSERT INTO Patients VALUES (52,'SYN-0052',2002);
INSERT INTO Patients VALUES (53,'SYN-0053',2003);
INSERT INTO Patients VALUES (54,'SYN-0054',2004);
INSERT INTO Patients VALUES (55,'SYN-0055',1950);
INSERT INTO Patients VALUES (56,'SYN-0056',1951);
INSERT INTO Patients VALUES (57,'SYN-0057',1952);
INSERT INTO Patients VALUES (58,'SYN-0058',1953);
INSERT INTO Patients VALUES (59,'SYN-0059',1954);
INSERT INTO Patients VALUES (60,'SYN-0060',1955);
INSERT INTO Patients VALUES (61,'SYN-0061',1956);
INSERT INTO Patients VALUES (62,'SYN-0062',1957);
INSERT INTO Patients VALUES (63,'SYN-0063',1958);
INSERT INTO Patients VALUES (64,'SYN-0064',1959);
INSERT INTO Patients VALUES (65,'SYN-0065',1960);
INSERT INTO Patients VALUES (66,'SYN-0066',1961);
INSERT INTO Patients VALUES (67,'SYN-0067',1962);
INSERT INTO Patients VALUES (68,'SYN-0068',1963);
INSERT INTO Patients VALUES (69,'SYN-0069',1964);
INSERT INTO Patients VALUES (70,'SYN-0070',1965);
INSERT INTO Patients VALUES (71,'SYN-0071',1966);
INSERT INTO Patients VALUES (72,'SYN-0072',1967);
INSERT INTO Patients VALUES (73,'SYN-0073',1968);
INSERT INTO Patients VALUES (74,'SYN-0074',1969);
INSERT INTO Patients VALUES (75,'SYN-0075',1970);
INSERT INTO Patients VALUES (76,'SYN-0076',1971);
INSERT INTO Patients VALUES (77,'SYN-0077',1972);
INSERT INTO Patients VALUES (78,'SYN-0078',1973);
INSERT INTO Patients VALUES (79,'SYN-0079',1974);
INSERT INTO Patients VALUES (80,'SYN-0080',1975);
INSERT INTO Patients VALUES (81,'SYN-0081',1976);
INSERT INTO Patients VALUES (82,'SYN-0082',1977);
INSERT INTO Patients VALUES (83,'SYN-0083',1978);
INSERT INTO Patients VALUES (84,'SYN-0084',1979);
INSERT INTO Patients VALUES (85,'SYN-0085',1980);
INSERT INTO Patients VALUES (86,'SYN-0086',1981);
INSERT INTO Patients VALUES (87,'SYN-0087',1982);
INSERT INTO Patients VALUES (88,'SYN-0088',1983);
INSERT INTO Patients VALUES (89,'SYN-0089',1984);
INSERT INTO Patients VALUES (90,'SYN-0090',1985);
INSERT INTO Patients VALUES (91,'SYN-0091',1986);
INSERT INTO Patients VALUES (92,'SYN-0092',1987);
INSERT INTO Patients VALUES (93,'SYN-0093',1988);
INSERT INTO Patients VALUES (94,'SYN-0094',1989);
INSERT INTO Patients VALUES (95,'SYN-0095',1990);
INSERT INTO Patients VALUES (96,'SYN-0096',1991);
INSERT INTO Patients VALUES (97,'SYN-0097',1992);
INSERT INTO Patients VALUES (98,'SYN-0098',1993);
INSERT INTO Patients VALUES (99,'SYN-0099',1994);
INSERT INTO Patients VALUES (100,'SYN-0100',1995);
WITH RECURSIVE Numbers(n) AS (
 SELECT 1 UNION ALL SELECT n+1 FROM Numbers WHERE n<300
), Arrivals AS (
 SELECT n, datetime('2026-10-01',printf('+%d minutes',n*137)) AS Arrival FROM Numbers
)
INSERT INTO Visits
SELECT n,1+(n-1)%100,1+(n-1)%4,Arrival,
 datetime(Arrival,printf('+%d minutes',5+n%90)),
 datetime(Arrival,printf('+%d minutes',180+n%600)),
 CASE n%3 WHEN 0 THEN 'Emergency' WHEN 1 THEN 'Inpatient' ELSE 'Outpatient' END
FROM Arrivals;
COMMIT;

-- 1. Verify loaded row counts: 4 departments, 100 patients, 300 visits.
SELECT 'Departments' AS Entity, COUNT(*) AS RowsLoaded FROM Departments
UNION ALL SELECT 'Patients', COUNT(*) FROM Patients
UNION ALL SELECT 'Visits', COUNT(*) FROM Visits;

-- 2. Department workload, waiting time and length of stay (minutes).
SELECT d.DepartmentName, COUNT(*) AS Visits,
 ROUND(AVG(CAST(((unixepoch(v.SeenTime)-unixepoch(v.ArrivalTime))/60) AS decimal(12,2))),2) AS AverageWaitMinutes,
 ROUND(AVG(CAST(((unixepoch(v.DischargeTime)-unixepoch(v.ArrivalTime))/60) AS decimal(12,2))),2) AS AverageStayMinutes
FROM Visits v JOIN Departments d ON d.DepartmentID=v.DepartmentID
GROUP BY d.DepartmentName ORDER BY Visits DESC;

-- 3. Daily demand.
SELECT date(ArrivalTime) AS VisitDate, VisitType, COUNT(*) AS Visits
FROM Visits GROUP BY date(ArrivalTime),VisitType ORDER BY VisitDate,VisitType;

-- 4. Percentage of visits waiting over 60 minutes.
SELECT d.DepartmentName,
 CAST(100.0*SUM(CASE WHEN ((unixepoch(SeenTime)-unixepoch(ArrivalTime))/60)>60 THEN 1 ELSE 0 END)/COUNT(*) AS decimal(5,2)) AS WaitOver60Percent
FROM Visits v JOIN Departments d ON d.DepartmentID=v.DepartmentID
GROUP BY d.DepartmentName;

-- 5. Most frequent visitors (synthetic identifiers only).
SELECT p.PatientCode, COUNT(*) AS Visits
FROM Visits v JOIN Patients p ON p.PatientID=v.PatientID
GROUP BY p.PatientCode ORDER BY Visits DESC,p.PatientCode LIMIT 10;

-- 6. Inpatient bed occupancy at one fixed time; not a monthly average.
SELECT d.DepartmentName,d.BedCapacity,COUNT(v.VisitID) AS OccupiedBeds,
 CAST(100.0*COUNT(v.VisitID)/d.BedCapacity AS decimal(7,2)) AS OccupancyPercent
FROM Departments d LEFT JOIN Visits v ON v.DepartmentID=d.DepartmentID
 AND v.VisitType='Inpatient' AND v.ArrivalTime<='2026-10-15 12:00:00'
 AND (v.DischargeTime>'2026-10-15 12:00:00' OR v.DischargeTime IS NULL)
GROUP BY d.DepartmentName,d.BedCapacity;
