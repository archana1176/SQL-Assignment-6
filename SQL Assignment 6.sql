create table Country
( Id INT PRIMARY KEY,
 Country_name VARCHAR(50),
 Population INT, 
 Area float);
 
CREATE TABLE Persons 
( Id INT PRIMARY KEY, 
 Fname VARCHAR(50),
 Lname VARCHAR(50),
 Population INT,
 Rating DECIMAL(3, 2),
 Country_Id INT, 
 Country_name VARCHAR(50));
 
 INSERT INTO Country (Id, Country_name, Population, Area) VALUES
 (1, 'India', 1380004385, 3287263),
 (2, 'USA', 331002651, 9833517),
 (3, 'China', 1439323776, 9596961),
 (4, 'Japan', 126476461, 377975),
 (5, 'Germany', 783942, 357022),
 (6, 'UK', 67886011, 243610),
 (7, 'France', 173511, 551695), 
 (8, 'Italy', 60461826, 301340),
 (9, 'Canada', 37742154, 9984670),
 (10, 'Australia', 25499884, 7692024);
 
 INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
 (1, 'Archana', 'Anil', 1380004385, 4.5, 1, 'India'),
 (2, 'John', 'Smith', 331002651, 4.7, 2, 'USA'),
 (3, 'Dang', 'Li', 1439323776, 4.6, 3, 'China'), 
 (4, 'Hiroshi', 'Taka', 126476461, 4.8, 4, 'Japan'),
 (5, 'Hans', 'Mueller', 783942, 4.9, 5, 'Germany'), 
 (6, 'James', 'Brown', 67886011, 4.4, 6, 'UK'),
 (7, 'Marie', 'Dupont', 173511, 4.3, 7, 'France'),
 (8, 'Luca', 'Rossi', 60461826, 4.2, 8, 'Italy'),
 (9, 'Emily', 'Davis', 37742154, 4.1, 9, 'Canada'),
 (10, 'Oliver', 'Wilson', 25499884, 4.0, 10, 'Australia');
 
 
 -- Inner join
 SELECT Persons.Id, Persons.Fname, Persons.Lname, Persons.Population AS Person_Population, Persons.Rating,
 Country.Country_name, Country.Population AS Country_Population, Country.Area
FROM Persons INNER JOIN  Country ON  Persons.Country_Id = Country.Id;

-- Left Join

SELECT Persons.Id, Persons.Fname, Persons.Lname, Persons.Population AS Person_Population, Persons.Rating,
Country.Country_name, Country.Population AS Country_Population, Country.Area
FROM Persons LEFT JOIN Country ON Persons.Country_Id = Country.Id;

-- Right join

SELECT Persons.Id, Persons.Fname, Persons.Lname, Persons.Population AS Person_Population, Persons.Rating,
Country.Country_name, Country.Population AS Country_Population, Country.Area
FROM Persons RIGHT JOIN Country ON Persons.Country_Id = Country.Id;

-- List all distinct country names from both the Country and Persons tables
SELECT DISTINCT Country_name FROM Country UNION SELECT DISTINCT Country_name FROM Persons;

-- List all country names from both the Country and Persons tables, including duplicates
SELECT Country_name FROM Country UNION ALL SELECT Country_name FROM Persons;

-- Round the ratings of all persons to the nearest integer in the Persons table
set sql_safe_updates = 0;
UPDATE Persons SET Rating = ROUND(Rating, 0);
SELECT Rating FROM persons;








