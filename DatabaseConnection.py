import mysql.connector
from mysql.connector import Error
import json
import os
import WebScraper

class DBinfo:

    TableName = ""
    IDName = ""

    def __init__(self,tname,idname):
        self.TableName = tname
        self.IDName = idname

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

def PopulateInfo(cursor):
    query = """SELECT t.TABLE_NAME
		            ,c.COLUMN_NAME 
                FROM INFORMATION_SCHEMA.TABLES t 
                INNER JOIN INFORMATION_SCHEMA.COLUMNS c ON t.TABLE_NAME = c.TABLE_NAME
                WHERE t.TABLE_SCHEMA = 'rally_stats'
                AND c.COLUMN_NAME LIKE '%ID'
                AND c.EXTRA = 'auto_increment'"""

    cursor.execute(query)

    infos = []

    # 0 = Alias
    # 1 = Class
    # 2 = Drivers
    # 3 = Events
    # 4 = Locations
    # 5 = StageDetails
    # 6 = Stages
    # 7 = Substages
    # 8 = Vehicles

    for pair in cursor.fetchall():
        info = DBinfo(pair[0],pair[1])
        infos.append(info)

    return infos

def CheckIfExists(id,dbinfo,cursor):

    query = "SELECT " + dbinfo.IDName + " FROM " + dbinfo.TableName + " WHERE " + dbinfo.IDName + " = " + str(id)

    cursor.execute(query)
    record = cursor.fetchone()

    if record == None:
        return False
    else:
        return True

def SyntaxTest(cursor):
    infos = PopulateInfo(cursor)

    sql_statement = """SELECT DriverID FROM Drivers WHERE DriverID = %s"""
    DriverID = 1
    
    if CheckIfExists(DriverID,infos[2],cursor):
        cursor.execute(sql_statement,(DriverID,))
        Drivers = cursor.fetchall()
        driver = Drivers[0]
        print('\nID: %s' % (driver))
    else:
        print('\nNo Record Found\n')

def Main():

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
            print("Your connected to database: ", record[0])

        cursor = connection.cursor()
        infos = PopulateInfo(cursor)

        packets = WebScraper.GetDBPackets()

        for packet in packets:
            
            if CheckIfExists(packet.EventID,infos[3],cursor):
            else:
                print('id: ' + str(packet.EventID) + ' Do Stuff')

    except Error as e:
        print("Error", e)
    finally:
        if (connection.is_connected()):
            cursor.close()
            connection.close()
            print("MySQL connection is closed")


Main()