import mysql.connector
from mysql.connector import Error
import json
import os

class Stage:

    DriverID = 0
    EventID = 0
    StageTime = ''
    

class DBPacket:

    EventID = 0
    StartDate = ''
    EndDate = ''
    DriverName = ''
    Class = ''
    Location = ''
    Vehicle = ''

try:

    with open('DatabaseConectionValues.json','r') as f:
        dbVars = json.load(f)

    connection = mysql.connector.connect(host=dbVars["host"],
                                         database=dbVars["database"],
                                         user=dbVars["user"],
                                         password=dbVars["password"])

    if connection.is_connected():
        db_Info = connection.get_server_info()
        print("Connected to MySQL Server version ", db_Info)
        cursor = connection.cursor()
        cursor.execute("select database();")
        record = cursor.fetchone()
        print("Your connected to database: ", record)

    select_test = """SELECT * FROM Drivers"""

    cursor = connection.cursor()
    result = cursor.execute(select_test)
    print(cursor.fetchall())

except Error as e:
    print("Error while connecting to MySQL", e)
finally:
    if (connection.is_connected()):
        cursor.close()
        connection.close()
        print("MySQL connection is closed")
