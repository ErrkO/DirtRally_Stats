import gspread
from oauth2client.service_account import ServiceAccountCredentials

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

rows = []

for row in list_of_hashes:

    if row[0] != '':

        rows.append(row)

    #for item in row:
#
    #    print(item)
    
    #print(row)
    #print('')

for row in rows:
    print(row)

#print(rows)

#print(list_of_hashes)
