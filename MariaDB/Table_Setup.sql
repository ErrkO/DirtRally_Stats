DROP TABLE Drivers;
DROP TABLE Class;
DROP TABLE Vehicles;
DROP TABLE Locations;
DROP TABLE Events;
DROP TABLE Stages;
DROP TABLE StageDetails;

CREATE TABLE Drivers(
     DriverID INT AUTO_INCREMENT
    ,FName VARCHAR(10)
    ,LName VARCHAR(15)
    ,SteamName VARCHAR(50)
    ,PRIMARY KEY (DriverID)
);

CREATE TABLE Class(
     ClassID INT AUTO_INCREMENT
    ,ClassName VARCHAR(20)
    ,PRIMARY KEY (ClassID)
);

CREATE TABLE Vehicles(
     VehicleID INT AUTO_INCREMENT
    ,VehicleName VARCHAR(100)
    ,ClassID INT
    ,PRIMARY KEY (VehicleID)
);

CREATE TABLE Locations(
     LocationID INT AUTO_INCREMENT
    ,LocationDesc VARCHAR(100)
    ,LocationCountry VARCHAR(50)
    ,PRIMARY KEY (LocationID)
);

CREATE TABLE Events(
     EventID INT AUTO_INCREMENT
    ,LocationID INT
    ,ClassID INT
    ,PRIMARY KEY (EventID)
);

CREATE TABLE Stages(
     StageID INT AUTO_INCREMENT
    ,EventID INT
    ,SubStage VARCHAR(50)
    ,SubStageNumber INT
    ,Condition VARCHAR(50)
    ,PRIMARY KEY (StageID)
);

CREATE TABLE StageDetails(
    SDetailsID INT AUTO_INCREMENT
     StageID INT
    ,DriverID INT
    ,VehicleID INT
    ,StageTime TIME
    ,PRIMARY KEY (SDetailsID)
);