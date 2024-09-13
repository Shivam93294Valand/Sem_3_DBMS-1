--Part – A:

--1. Display the result of 5 multiply by 30.
SELECT 5 * 30 AS Result;

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT 
    'absolute OF -25: ' + CAST(ABS(-25) AS VARCHAR) AS AbsoluteOfMinus25,
    'absolute OF 25: ' + CAST(ABS(25) AS VARCHAR) AS AbsoluteOf25,
    'absolute OF -50: ' + CAST(ABS(-50) AS VARCHAR) AS AbsoluteOfMinus50,
    'absolute OF 50: ' + CAST(ABS(50) AS VARCHAR) AS AbsoluteOf50;

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2) AS Ceiling_25_2, CEILING(25.7) AS Ceiling_25_7, CEILING(-25.2) AS Ceiling_Neg_25_2;

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2) AS FLOOR_25_2, FLOOR(25.7) AS FLOOR_25_7, FLOOR(-25.2) AS FLOOR_Neg_25_2;

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5 % 2 AS Remainder_5_2, 5 % 3 AS Remainder_5_3;

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3, 2) AS Power_3_2, POWER(4, 3) AS Power_4_3;

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25) AS SquareRoot_25, SQRT(30) AS SquareRoot_30, SQRT(50) AS SquareRoot_50;

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5) AS Square_5, SQUARE(15) AS Square_15, SQUARE(25) AS Square_25;

--9. Find out the value of PI.
SELECT PI() AS PI_VAL;

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732, 2) AS RoundedValue_2, ROUND(157.732, 0) AS RoundedValue_0, ROUND(157.732, -2) AS RoundedValue_Minuse2;

--11. Find out exponential value of 2 and 3.
SELECT EXP(2) AS ExponentialValue_2, EXP(3) AS ExponentialValue_3;

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10) AS Logarithm_BaseE_10, LOG(2) AS Logarithm_BaseE_2;

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG10(5) AS Logarithm_Base10_5, LOG10(100) AS Logarithm_Base10_100;

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415) AS SineValue, COS(3.1415) AS CosineValue, TAN(3.1415) AS TangentValue;

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25) AS SignOfNegative25, SIGN(0) AS SignOfZero, SIGN(25) AS SignOfPositive25;

--16. Generate random number using function.
SELECT RAND()*100 AS Random;


--PART-B:

CREATE TABLE EMP_MASTER (
    EmpNo INT PRIMARY KEY,
    EmpName VARCHAR(50),
    JoiningDate DATE,
    Salary DECIMAL(10, 2),
    Commission DECIMAL(10, 2),
    City VARCHAR(50),
    DeptCode VARCHAR(10)
);

INSERT INTO EMP_MASTER (EmpNo, EmpName, JoiningDate, Salary, Commission, City, DeptCode)
VALUES
(101, 'Keyur', '2002-01-05', 12000.00, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '2004-02-15', 14000.00, 2500, 'Ahmedabad', '3@'),
(103, 'Kajal', '2006-03-14', 15000.00, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 1000, 'Ahmedabad', '1A3D'),
(105, 'Harmit', '2004-02-15', 14000.00, 2000, 'Rajkot', '312A');

--1. Display the result of Salary plus Commission.
select salary + commission as result from EMP_MASTER;

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
select CEILING(55.2) as ceiling_55_2, CEILING(35.7) as ceiling_35_7, CEILING(-55.2) as ceiling_neg_55_2

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
select floor(55.2) as floor_55_2, floor(35.7) as floor_35_7, floor(-55.2) as floor_neg_55_2;

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
select 55 % 2 as rem_55_2, 55 % 3 as rem_55_3;

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
select power(23,2) as power_23_2, power(14,3) as power_14_3;


--Part – C:

--1. Find out the square root of 36, 49 and 81.
select sqrt(36) as sqrt36,sqrt(49) as sqrt49,sqrt(81) as sqrt81

--2. Find out the square of 3, 9, and 12.
select SQUARE(3) as square3, square(9) as square9, square(12) as square12

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
select round(280.8952,2) as round280_8952_2, round(280.8952,0) as round280_8952_0,round(280.8952,-2) as round280_8952_neg2

--4. Find sine, cosine and tangent of 4.2014.
select SIN(4.2014) as sine, COS(4.2014) as cosine, TAN(4.2014) as tangent

--5. Find sign of -55, 0 and 95.
select sign(-55) as neg_55, sign(0) as _0, sign(95) as _95


--String functions
--Part – A:

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
select len(null) as val_1, len(' hello ') as val_2, len('Blank') as val_3 

--2. Display your name in lower & upper case.
select lower('shivam') as lowerCase, UPPER('shivam') as upperCase

--3. Display first three characters of your name.
select left('shivam',3) as first_3_char

--4. Display 3rd to 10th character of your name.
select substring('shivam',3,10) as char_3_10

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
select REPLACE('abc123efg', '123', 'XYZ') as updaterd1, REPLACE('abcabcabc', 'c', '5') as updaterd2

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
select ASCII('a') as ascii_a, ASCII('A') as ascii_A, ASCII('z') as ascii_z, ASCII('Z') as ascii_Z, ASCII(0) as ascii_0, ASCII(9) as ascii_9

--7. Write a query to display character based on number 97, 65,122,90,48,57.
select char(97) as char97, char(65) as char65, char(122) as char122, char(90) as char90, char(48) as char48, char(57) as char57

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
select ltrim('hello world ');

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
select rtrim(' hello world ');

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
select SUBSTRING('SQL Server',1,4), right('SQL Server',5)

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
SELECT CAST('1234.56' AS DECIMAL(10, 2)) AS NumberUsingCast;
SELECT CONVERT(DECIMAL(10, 2), '1234.56') AS NumberUsingConvert;

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
SELECT CAST(round(10.58,0) AS int) AS NumberUsingCast;
SELECT CONVERT(int, round(10.58,0)) AS NumberUsingConvert;

--13. Put 10 space before your name using function.
select space(10) + 'shivam'

--14. Combine two strings using + sign as well as CONCAT ().
select 'sql' + ' server', CONCAT('sql',' server');

--15. Find reverse of “Darshan”.
select REVERSE('Darshan')

--16. Repeat your name 3 times.
SELECT REPLICATE('shivam ', 3) AS RepeatedName;


--Part – B: Perform following queries on Student table
--1. Find the length of FirstName and LastName columns.
select len(FirstName) as FirstName_len, len(LastName) as LastName_len from STUDENT;

--2. Display FirstName and LastName columns in lower & upper case.
select lower(FirstName) as FirstName_lower, lower(LastName) as LastName_lower from STUDENT;
select upper(FirstName) as FirstName_lupper, upper(LastName) as LastName_upper from STUDENT;

--3. Display first three characters of FirstName column.
select substring(FirstName,1,3) as FirstName_sub_3 from STUDENT;

--4. Display 3rd to 10th character of Website column.
select substring(website,3,10) as sub_web from STUDENT;

--5. Write a query to display first 4 & Last 5 characters of Website column.
select substring(website,1,4) as sub_web1, RIGHT(website,5) from STUDENT;


--Part – C: Perform following queries on Student table
--1. Put 10 space before FirstName using function.
select space(10) + 'shivam'

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
select 'shivam' + ' valand', CONCAT('shivam',' valand')

--3. Combine all columns using + sign as well as CONCAT ().
select cast(stuid as varchar) + ' ' + firstName + ' ' + lastName + ' ' + website + ' ' + city + ' ' + address  from STUDENT
select CONCAT(stuid , ' ' , firstName , ' ' , lastName , ' ' , website , ' ' , city , ' ' , address) from STUDENT 

--4. Find reverse of FirstName column.
select REVERSE(firstname) from STUDENT

--5. Repeat FirstName column 3 times
select REPLICATE(firstname,3) from STUDENT

--6. Give the Names which contains 5 characters.
select firstName from STUDENT where firstname like '_____'

--7. Combine the result as <FirstName> Lives in <City>.
select firstName + ' lives in ' + city from STUDENT

--8. Combine the result as Student_ID of < FirstName > is <StuID>
SELECT CONCAT('Student_ID of ', firstName, ' is ', stuid) AS result FROM STUDENT;


--Date Functions
--Part – A:

--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS CURRENTDATE

--2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(DAY, 365, GETDATE()) AS NewDate;

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(), 'MMM d yyyy hh:mmtt') AS FormattedDate;

--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(GETDATE(), 'dd MMM yyyy') AS FormattedDate;

--5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(), 'MMM dd, yy') AS FormattedDate;

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(month, '31-Dec-08', '31-Mar-09')

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(year, '25-Jan-12', '14-Sep-10')

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(hour, '25-Jan-12 7:00', '26-Jan-12 10:30')

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
DECLARE @GivenDate DATE = '2016-05-12'; 

SELECT 
    FORMAT(@GivenDate, 'dd') AS Day,
    FORMAT(@GivenDate, 'MM') AS Month,
    FORMAT(@GivenDate, 'yyyy') AS Year;

--10. Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR, 5, GETDATE()) AS new_date;

--11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH, -2, GETDATE()) AS new_date;

--12. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(month, GETDATE()) AS MonthName;
SELECT DATEPART(month, GETDATE()) AS MonthNumber;

--13. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE()) AS LastDateOfCurrentMonth;

--14. Calculate your age in years and months.
SELECT DATEDIFF(year, '05-Jan-05', GETDATE());
SELECT DATEDIFF(MONTH, '05-Jan-05', GETDATE());

--part-b:
create table EMP_DETAIL(
	EmpNo int primary key,
	EmpName varchar(20),
	JoiningDate date,
	Salary decimal(7,2),
	City varchar(10)
);

insert into EMP_DETAIL (EmpNo, EmpName, JoiningDate, Salary, City) values
(101, 'Keyur', '02-1-15', 12000.00, 'Rajkot'),
(102, 'Hardik', '04-2-15', 14000.00, 'Ahmedabad'),
(103, 'Kajal', '06-3-14', 15000.00, 'Baroda'),
(104, 'Bhoomi', '05-6-23', 12500.00, 'Ahmedabad'),
(105, 'Harmit', '04-2-15', 14000.00, 'Rajkot'),
(106, 'Jay', '07-3-12', 12000.00, 'Surat')

--1. Write a query to find new date after 365 day with reference to JoiningDate.
SELECT DATEADD(DAY, 365, JoiningDate) AS NewDate from EMP_DETAIL

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(JoiningDate, 'MMM d yyyy hh:mmtt') AS FormattedDate from EMP_DETAIL

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
SELECT FORMAT(JoiningDate, 'dd MMM yyyy') AS FormattedDate from EMP_DETAIL

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
SELECT FORMAT(JoiningDate, 'MMM dd, yy') AS FormattedDate from EMP_DETAIL

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09.
SELECT DATEDIFF(month, JoiningDate, '09-Mar-31') from EMP_DETAIL

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
SELECT DATEDIFF(year, JoiningDate, '10-Sep-14') from EMP_DETAIL



--Part – C:

--1. Write a query to extract Day, Month, Year from JoiningDate.
SELECT 
    FORMAT(JoiningDate, 'dd') AS Day,
    FORMAT(JoiningDate, 'MM') AS Month,
    FORMAT(JoiningDate, 'yyyy') AS Year
FROM EMP_DETAIL;

--2. Write a query that adds 5 years to JoiningDate.
SELECT DATEADD(year, 5, JoiningDate) AS NewDate from EMP_DETAIL

--3. Write a query to subtract 2 months from JoiningDate.
SELECT DATEADD(MONTH, 2, JoiningDate) AS NewDate from EMP_DETAIL

--4. Extract month from JoiningDate using datename () and datepart () function.
SELECT DATENAME(month, JoiningDate) AS MonthName from EMP_DETAIL
SELECT DATEPART(month, JoiningDate) AS MonthNumber from EMP_DETAIL--5. Calculate your age in years and monthsSELECT DATEDIFF(year, '05-Jan-05', GETDATE());
SELECT DATEDIFF(MONTH, '05-Jan-05', GETDATE());