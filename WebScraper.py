import gspread
from oauth2client.service_account import ServiceAccountCredentials
import re

class Stage:

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

def GetRowsWithValues(List_Of_Values):

    rows = []

    for row in list_of_hashes:

        if row[0] != '':

            rows.append(row)

    rows.pop(0)

    return rows


# use creds to create a client to interact with the Google Drive API
scope = ['https://spreadsheets.google.com/feeds',
         'https://www.googleapis.com/auth/drive']
creds = ServiceAccountCredentials.from_json_keyfile_name('client_secret.json', scope)
client = gspread.authorize(creds)

# Find a workbook by name and open the first sheet
# Make sure you use the right name here.
sheet = client.open("DiRT RALLY 2.0 STATS ").sheet1

# Extract and print all of the values
list_of_hashes = sheet.get_all_values()

rows = GetRowsWithValues(list_of_hashes)

for row in rows:
    print(row)

#print(rows)

#print(list_of_hashes)
