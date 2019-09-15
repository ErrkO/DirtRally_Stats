import gspread
from oauth2client.service_account import ServiceAccountCredentials
import re
import datetime

class Stage:

    DriverName = ''
    StageTime = []
    VehicleName = ''
    comments = []

    def __str__(self):

        string = ('Driver: ' + self.DriverName +
                  ' | Vehicle: ' + self.VehicleName)

        for time in self.StageTime:
            string += ' | ' + time

        return string

class DBPacket:

    EventID = ''
    StartDate = ''
    EndDate = ''
    ClassName = ''
    Location = ''
    condtions = ''
    comments = []
    StageNames = []
    Stages = []
    IsFinished = True

    def __str__(self):

        seperator = ''

        string = ('EventID = ' + self.EventID +
                 '\nStartDate = ' + self.StartDate +
                 '\nEndDate = ' + self.EndDate +
                 '\nClassName = ' + self.ClassName +
                 '\nLocation = ' + self.Location + 
                 '\nComments = ' + seperator.join(self.comments) +
                 '\n\t\t\t\t     ')

        for name in self.StageNames:
            string += ' | ' + name

        return string

def MatchWeekRow(row):

    if re.match(r'^Week',row[0]):
        return True

    return False

def MatchDateRow(row):

    if re.match(r'^\d.*-.*',row[0]):
        return True

    return False

def MatchDriverRow(row):

    if re.match(r'.* - ',row[0]):
        return True

    return False

def IsRowEmpty(row):

    for item in row:

        if item != '':
            return False
    
    return True

def GetRowsWithValues(List_Of_Values):

    rows = []

    for row in List_Of_Values:

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

    elif re.match(r'Retired',item):
        return '00:30:00.000'

    else:

        return '00:00:00.000'

def GetStageNamesFromRow(row):

    stageNames = []

    for item in row:
        if item != '':
            if not re.match(r'^(Week|Class: )',item):
                stageNames.append(item)
    return stageNames

def GetStageTimesFromRow(driverName,vehicle,row):
    stage = Stage()
    del stage
    stage = Stage()
    stage.StageTime = []

    stage.DriverName = driverName
    stage.VehicleName = vehicle

    for item in row:
        
        if re.match(r'^(\d*:|Retired)',item):
            stageTime = FormatTime(item)
            stage.StageTime.append(stageTime)

    stage.StageTime.pop(0)
    return stage

def GetStartOfBlock(row,packet):

    if re.match(r'^Week',row[0]):

        weekstr = row[0]
        splits = re.split(r' ',weekstr)

        packet.EventID = re.split(r':',splits[1])[0]
        splits.pop(0)
        splits.pop(0)
        seperator = ' '
        packet.Location = seperator.join(splits)

        if packet.EventID == 'X':
            packet.IsFinished = False

        elif packet.Location == '':
            packet.IsFinished = False

        if re.match(r'Class: ',row[1]):

            classname = re.split(r'Class: ',row[1])

            packet.ClassName = classname[1]

        packet.StageNames = (GetStageNamesFromRow(row))

    return packet

def GetDateRow(row,packet):
    if re.match(r'^\d.*-.*',row[0]):

        for item in row:

            if item != '':

                if re.match(r'^\d.*-.*',item):

                    dates = re.split(r'-',item)

                    startdate = FormatDate(dates[0])

                    if dates[1] == '':
                        enddate = ''
                        packet.IsFinished = False

                    else:
                        enddate = FormatDate(dates[1])

                    packet.StartDate = startdate
                    packet.EndDate = enddate

                else:
                    comments = ''
                    comments += item + ', '

    return packet

def GetStageInformation(row,packet):
    if re.match(r'.* - ',row[0]):

        if row[1] != '':

            if re.match(r'.* - ',row[0]):

                splits = re.split(r' - ',row[0])
                DriverName = splits[0]
                packet.comments += splits[1] + ', '

            if re.match(r'^[A-Za-z]',row[1]):
                VehicleName = row[1]

            else:
                VehicleName = ''

            packet.Stages.append(GetStageTimesFromRow(DriverName,VehicleName,row))

    return packet

def CheckForElse(row):
    if re.match(r'^Week',row[0]):
        return False

    if re.match(r'^\d.*-.*',row[0]):
        return False

    if re.match(r'.* - ',row[0]):
        return False

    return True

def GetAllRows():

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

    return GetRowsWithValues(list_of_hashes)

def DropUnfinishedEvents(events):

    index = 0

    listCleared = False

    while not listCleared:

        if index >= len(events):
            listCleared = True
        else:
            event = events[index]
            dateRow = event[1]
            date = dateRow[0]

            if not re.match(r'^\d+/\d+/\d+-\d+/\d+/\d+',date):
                del events[index]
                index -= 1

            index += 1
        

    return events

def GetEvents():
    rows = GetAllRows()

    eventRows = []
    events = []

    for index,row in enumerate(rows):

        skip = False

        if index < (len(rows) - 1):
            next_row = rows[index + 1]
        else:
            skip = True

        if not skip:

            if MatchWeekRow(next_row):
                eventRows.append(row)
                events.append(eventRows)
                eventRows = []

            else:
                eventRows.append(row)

    return events

def PrintAll(packets):

    for packet in packets:
        print('')
        print(packet)
        
        for stage in packet.Stages:
            
            print(stage)

def GetDBPackets():

    packet = DBPacket()
    packets = []

    events = GetEvents()    

    events = DropUnfinishedEvents(events)

    for event in events:

        # Start of line 1 of the block
        # Gets the event, class, and stage names
        packet = GetStartOfBlock(event[0],packet)

        # Start of line 2 of the block
        # Gets the start and end date; and the comments
        packet = GetDateRow(event[1],packet)

        # Start of line 3 of the block
        # Gets the stage and driver information
        for i in range(2,len(event)):
            if MatchDriverRow(event[i]):
                packet = GetStageInformation(event[i],packet)

        packets.append(packet)
        del packet
        packet = DBPacket()
        packet.Stages = []
        packet.comments = []

        # Dump Everything else into the comments

    return packets

def Main():

    packet = DBPacket()
    packets = []

    events = GetEvents()    

    events = DropUnfinishedEvents(events)

    for event in events:

        # Start of line 1 of the block
        # Gets the event, class, and stage names
        packet = GetStartOfBlock(event[0],packet)

        # Start of line 2 of the block
        # Gets the start and end date; and the comments
        packet = GetDateRow(event[1],packet)

        # Start of line 3 of the block
        # Gets the stage and driver information
        for i in range(2,len(event)):
            if MatchDriverRow(event[i]):
                packet = GetStageInformation(event[i],packet)

        packets.append(packet)
        del packet
        packet = DBPacket()
        packet.Stages = []
        packet.comments = []

        # Dump Everything else into the comments

    PrintAll(packets)
