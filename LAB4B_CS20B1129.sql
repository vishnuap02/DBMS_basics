CREATE DATABASE IF NOT EXISTS LAB4B_CS20B1129;
SHOW DATABASES;
USE LAB4B_CS20B1129;
CREATE TABLE IF NOT EXISTS EMPLOYEE(Employee_id varchar(100), First_name varchar(100), Last_name varchar(100), Salary int(255), Joining_date varchar(100), department varchar(100));
INSERT INTO EMPLOYEE(Employee_id, First_name, Last_name, Salary, Joining_date, department)VALUES('1','Boby','Rathod',1000000,'20-12-2020','Finance');
INSERT INTO EMPLOYEE(Employee_id, First_name, Last_name, Salary, Joining_date, department)VALUES('2','Jasmine','Jose',6000000,'07-02-2015','IT');
INSERT INTO EMPLOYEE(Employee_id, First_name, Last_name, Salary, Joining_date, department)VALUES('3','Pratap','Mathew',8900000,'09-03-2014','Banking');
INSERT INTO EMPLOYEE(Employee_id, First_name, Last_name, Salary, Joining_date, department)VALUES('4','John','Michael',2000000,'17-03-1999','Insurance');
INSERT INTO EMPLOYEE(Employee_id, First_name, Last_name, Salary, Joining_date, department)VALUES('5','Alex','Kinto',2200000,'25-02-1987','Finance');
INSERT INTO EMPLOYEE(Employee_id, First_name, Last_name, Salary, Joining_date, department)VALUES('6','Jashwanth','Kumar',1230000,'23-07-2021','IT');

SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE WHERE Salary BETWEEN 2000000 AND 5000000;

SELECT Last_name FROM EMPLOYEE WHERE (year(curdate())-year(Joining_date))>3 AND First_name LIKE '%A%';

SELECT Joining_date FROM EMPLOYEE WHERE department='IT' AND SALARY > (SELECT AVG(Salary) FROM EMPLOYEE);

SELECT Joining_date FROM EMPLOYEE WHERE department='IT' AND SALARY > (SELECT AVG(Salary) FROM EMPLOYEE);

SELECT * FROM EMPLOYEE WHERE department='Finance' AND SALARY < (SELECT AVG(Salary) FROM EMPLOYEE WHERE department='IT');
