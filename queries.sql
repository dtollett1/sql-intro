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

CompanyDatabase> CREATE TABLE "Departments" (
 "Id"  SERIAL PRIMARY KEY,
 "DepartmentName" TEXT,
 "Building" TEXT
 );
CREATE TABLE
Time: 0.025s

ALTER TABLE "Employee" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("Id");

CREATE TABLE "Products"(
    "Id"          SERIAL PRIMARY KEY,
    "Price"       DOUBLE PRECISION,
    "Name"  TEXT,
    "Description" TEXT,
    "QuantityInStock" INT
    );

     CREATE TABLE "Orders"(
     "Id"          SERIAL PRIMARY KEY,
     "OrderNumber"       TEXT,
     "DatePlaced"  DATE,
     "Email" TEXT
     );

 CREATE TABLE "ProductOrders"( "Id" SERIAL PRIMARY KEY, "Or
 derQuantity" INT);

INSERT INTO "Departments" ("DepartmentName" , "Building" ) VALUES ('Development' , 'Main');

INSERT INTO "Departments" ("DepartmentName" , "Building" ) VALUES ('Marketing' , 'North');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime" , "DepartmentI
 d")
 VALUES ('Tim Smith','40000','Programmer','123','N' , '1');

INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime" , "DepartmentI
 d")
 VALUES ('Barbara Ramsey','80000','Manager','234','N' , '1');

 INSERT INTO "Employee" ("FullName","Salary","JobPosition","PhoneExtension","IsPartTime" , "DepartmentI
 d")
 VALUES ('Tom Jones','32000','Admin','456','Y' , '2');

INSERT INTO "Products" ("Price" , "Name" , "Description" , "QuantityInStock")
 VALUES ('12.45' , 'Widget' , 'The Original Widget' , '100');

 INSERT INTO "Products" ("Price" , "Name" , "Description" , "QuantityInStock")
 VALUES ('99.99' , 'Flowbee' , 'Perfect for haircuts' , '3');

 INSERT INTO "Orders" ("OrderNumber" , "DatePlaced" , "Email")
 VALUES ('X529' , '2020-01-01' , 'person@example.com');


ALTER TABLE "ProductOrders"  ADD COLUMN "ProductId" INTEGER REFERENCES "Products" ("Id");

ALTER TABLE "ProductOrders"  ADD COLUMN "OrderId" INTEGER REFERENCES "Orders" ("Id");

INSERT INTO "ProductOrders" ("OrderQuantity" , "ProductId" , "OrderId" ) VALUES ( '3' , '1' , '1');

 INSERT INTO "ProductOrders" ("OrderQuantity" , "ProductId" , "OrderId" ) VALUES ( '2' , '2' , '1');