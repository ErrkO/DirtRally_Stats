DROP TABLE IF EXISTS Drivers;

CREATE TABLE Drivers(
     DriverID INT AUTO_INCREMENT
    ,FName VARCHAR(10)
    ,LName VARCHAR(15)
    ,SteamName VARCHAR(50)
    ,PRIMARY KEY (DriverID)
);

DROP TABLE IF EXISTS Class;

CREATE TABLE Class(
     ClassID INT AUTO_INCREMENT
    ,ClassName VARCHAR(100)
    ,PRIMARY KEY (ClassID)
);

DROP TABLE IF EXISTS Vehicles;

CREATE TABLE Vehicles(
     VehicleID INT AUTO_INCREMENT
    ,VehicleName VARCHAR(100)
    ,ClassID INT
    ,PRIMARY KEY (VehicleID)
);

DROP TABLE IF EXISTS Locations;

CREATE TABLE Locations(
     LocationID INT AUTO_INCREMENT
    ,LocationDesc VARCHAR(100)
    ,LocationCountry VARCHAR(50)
    ,PRIMARY KEY (LocationID)
);

DROP TABLE IF EXISTS Events;

CREATE TABLE Events(
     EventID INT AUTO_INCREMENT
    ,LocationID INT
    ,ClassID INT
    ,PRIMARY KEY (EventID)
);

DROP TABLE IF EXISTS Stages;

CREATE TABLE Stages(
     StageID INT AUTO_INCREMENT
    ,EventID INT
    ,SubStage VARCHAR(50)
    ,SubStageNumber INT
    ,Conditions VARCHAR(50)
    ,PRIMARY KEY (StageID)
);

DROP TABLE IF EXISTS StageDetails;

CREATE TABLE StageDetails(
    SDetailsID INT AUTO_INCREMENT
    ,StageID INT
    ,DriverID INT
    ,VehicleID INT
    ,StageTime TIME(3)
    ,PRIMARY KEY (SDetailsID)
);