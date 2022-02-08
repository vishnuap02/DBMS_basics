import mysql.connector

mydb=mysql.connector.connect(host="localhost",user="root",password="Vishnuap@02")

mycursor=mydb.cursor()

mycursor.execute("CREATE DATABASE IF NOT EXISTS DBUSINGPY")

mycursor.execute("SHOW DATABASES")

for x in mycursor:
    print(x)
    
mydb=mysql.connector.connect(host="localhost",user="root",password="Vishnuap@02",database="DBUSINGPY")

mycursor=mydb.cursor()

mycursor.execute("CREATE TABLE IF NOT EXISTS EMPLOYEE(FNAME VARCHAR(20),LNAME VARCHAR(25))")    

mycursor.execute("SHOW TABLES")
