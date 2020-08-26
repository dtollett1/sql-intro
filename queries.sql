INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Jim','550','Software Developer','3','N');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Michael','600','Manager','1','N');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Dwight','550','Assistant','2','N');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Toby','500','HR','4','N');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Phyllis','300','Sales','5','N');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Oscar','450','Accountant','6','N');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Pam','400','Receptionist','7','N');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Creed','475','Inspection','8','Y');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Angela', '400','Accountant','9','Y');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime") 
VALUES ('Lazy Larry','300','Sowtware Developer','10','Y');

CompanyDatabase> SELECT * FROM "Employee";
+------------+----------+--------------------+------------------+--------------+
| FullName   | Salary   | JobPosition        | PhoneExtension   | IsPartTime   |
|------------+----------+--------------------+------------------+--------------|
| Jim        | 550      | Software Developer | 3                | N
   |
| Michael    | 600      | Manager            | 1                | N
   |
| Dwight     | 550      | Assistant          | 2                | N
   |
| Toby       | 500      | HR                 | 4                | N
   |
| Phyllis    | 300      | Sales              | 5                | N
   |
| Oscar      | 450      | Accountant         | 6                | N
   |
| Pam        | 400      | Receptionist       | 7                | N
   |
| Creed      | 475      | Inspection         | 8                | Y
   |
| Angela     | 400      | Accountant         | 9                | Y
   |
| Lazy Larry | 300      | Sowtware Developer | 10               | Y
   |
+------------+----------+--------------------+------------------+--------------+
SELECT 10
Time: 0.006s

CompanyDatabase> SELECT "FullName", "PhoneExtension" FROM "Employee" WHERE
  "IsPartTime" = 'N';
+------------+------------------+
| FullName   | PhoneExtension   |
|------------+------------------|
| Jim        | 3                |
| Michael    | 1                |
| Dwight     | 2                |
| Toby       | 4                |
| Phyllis    | 5                |
| Oscar      | 6                |
| Pam        | 7                |
+------------+------------------+
SELECT 7
Time: 0.005s


CompanyDatabase> INSERT INTO "Employee" ("FullName","Salary","JobPosition",
 "PhoneExtension","IsPartTime")

 +------------+----------+--------------------+------------------+--------------+
| FullName   | Salary   | JobPosition        | PhoneExtension   | IsPartTime   |
|------------+----------+--------------------+------------------+--------------|
| Jim        | 550      | Software Developer | 3                | N
   |
| Michael    | 600      | Manager            | 1                | N
   |
| Dwight     | 550      | Assistant          | 2                | N
   |
| Toby       | 500      | HR                 | 4                | N
   |
| Phyllis    | 300      | Sales              | 5                | N
   |
| Oscar      | 450      | Accountant         | 6                | N
   |
| Pam        | 400      | Receptionist       | 7                | N
   |
| Angela     | 400      | Accountant         | 9                | Y
   |
| Lazy Larry | 300      | Sowtware Developer | 10               | Y
   |
| Creed      | 475      | Cook               | 8                | Y
   |
| Andy       | 450      | Software Developer | 11               | Y
   |
+------------+----------+--------------------+------------------+--------------+
SELECT 11
Time: 0.006s

 UPDATE "Employee" SET "Salary" = '500' WHERE "JobPosition" = 'Cook';
UPDATE 1
Time: 0.002s

DELETE FROM "Employee" WHERE "FullName" = 'Lazy Larry';
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
DELETE 1
Time: 0.001s
CompanyDatabase> ALTER TABLE "Employee" ADD COLUMN "ParkingSpot" VARCHAR(10
 );
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
ALTER TABLE
Time: 0.003s