import gspread
from oauth2client.service_account import ServiceAccountCredentials
import re
import datetime

class Stage:

    StageName = ''
    StageTime = ''

class DBPacket:

    EventID = ''
    StartDate = ''
    EndDate = ''
    DriverName = ''
    ClassName = ''
    Location = ''
    VehicleName = ''
    Stages = []
    comments = ''

def IsRowEmpty(row):

    for item in row:

        if item != '':
            return False
    
    return True

def GetRowsWithValues(List_Of_Values):

    rows = []

    for row in list_of_hashes:

        if not IsRowEmpty(row):
            rows.append(row)

    rows.pop(0)
    rows.pop(0)
    return rows

def FormatDate(item):
    
    splits = re.split(r'\/',item)
    year = splits[2]
    month = splits[0]
    day = splits[1]

    if len(year) != 4:
        year = '20' + year[-2:]

    return year + '-' + month + '-' + day

def FormatTime(item):

    if len(item) == 8:

        return '00:0' + item

    elif len(item) == 11:

        return '0' + item

    elif len(item) == 9:
        return '00:' + item

    else:

        return 'Broken'

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
packet = DBPacket()
packets = []

for row in rows:

    if re.match(r'^Week',row[0]):

        for item in row:

            if item != '':

                if re.match(r'^Week',item):
                    packet = DBPacket()
            
                    weekstr = item
                    splits = re.split(r' ',weekstr)

                    packet.EventID = re.split(r':',splits[1])[0]
                    splits.pop(0)
                    splits.pop(0)
                    seperator = ' '
                    packet.Location = seperator.join(splits)
                    packets.append(packet)

                elif re.match(r'Class: ',item):

                    classname = re.split(r'Class: ',item)

                    packet.ClassName = classname[1]

                else:
                    stage = Stage()
                    stage.StageName = item
                    packet.Stages.append(stage)

    elif re.match(r'^\d.*-.*',row[0]):

        for item in row:

            if item != '':

                if re.match(r'^\d.*-.*',item):

                    dates = re.split(r'-',item)

                    startdate = FormatDate(dates[0])

                    if dates[1] == '':
                        enddate = ''

                    else:
                        enddate = FormatDate(dates[1])

                    packet.StartDate = startdate
                    packet.EndDate = enddate

                else:
                    packet.comments += item + ', '

    elif re.match(r'.* - .*',row[0]):

        i = 0

        if row[1] != '':

            for item in row:

                if item != '':

                    if re.match(r'.* - .*',item):

                        packet.DriverName = re.split(r' - ',item)[0]
                        packet.comments += item + ', '

                    elif re.match(r'^\w',item):

                        packet.VehicleName = item

                    elif re.match(r'^\d',item):
                        
                        packet.Stages[i].StageTime = item
                        i += 1

    else:

        for item in row:

            if item != '':

                packet.comments += item + ', '


    for packet in packets:

        print('EventID = ',packet.EventID)
        print('StartDate = ',packet.StartDate)
        print('EndDate = ',packet.EndDate)
        print('DriverName = ',packet.DriverName)
        print('ClassName = ',packet.ClassName)
        print('Location = ',packet.Location)
        print('VehicleName = ',packet.VehicleName)
        print('comments = ',packet.comments)

        for stage in packet.Stages:

            print('StageTime = ',stage.StageTime)
            print('StageName = ',stage.StageName)

    #print(packet.EventID,packet.ClassName,packet.Location,packet.StartDate,packet.EndDate)

    #for item in row:

        #if item != '':

            #print(item)
