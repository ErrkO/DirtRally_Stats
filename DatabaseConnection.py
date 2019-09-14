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

    DriverID = (1,)
    
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
        print("Your connected to database: ", record[0])

    sql_statement = """SELECT * FROM Drivers WHERE DriverID = %s"""
    #sql_statement = "SELECT * FROM Drivers"

    cursor = connection.cursor()
    result = cursor.execute(sql_statement,DriverID)
    #result = cursor.execute(sql_statement)
    Drivers = cursor.fetchall()
    driver = Drivers[0]
    print('\nID: %s\nName: %s %s\n' % (driver[0],driver[1],driver[2]))

except Error as e:
    print("Error", e)
finally:
    if (connection.is_connected()):
        cursor.close()
        connection.close()
        print("MySQL connection is closed")
