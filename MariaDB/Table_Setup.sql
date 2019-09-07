DROP TABLE IF EXISTS StageDetails;
DROP TABLE IF EXISTS Stages;
DROP TABLE IF EXISTS Events;
DROP TABLE IF EXISTS SubStages;
DROP TABLE IF EXISTS Locations;
DROP TABLE IF EXISTS Vehicles;
DROP TABLE IF EXISTS Class;
DROP TABLE IF EXISTS Alias;
DROP TABLE IF EXISTS Drivers;

CREATE TABLE Drivers(
     DriverID INT AUTO_INCREMENT
    ,FName VARCHAR(10)
    ,LName VARCHAR(15)
    ,PRIMARY KEY (DriverID)
);

CREATE TABLE Alias (
	 AliasID INT AUTO_INCREMENT
	,DriverID INT
	,AliasName VARCHAR(20)
	,PRIMARY KEY (AliasID)
	,FOREIGN KEY (DriverID)
    	REFERENCES Drivers(DriverID)
    	ON DELETE CASCADE
);

CREATE TABLE Class(
     ClassID INT AUTO_INCREMENT
    ,ClassName VARCHAR(100)
    ,PRIMARY KEY (ClassID)
);

CREATE TABLE Vehicles(
     VehicleID INT AUTO_INCREMENT
    ,VehicleName VARCHAR(100)
    ,ClassID INT
    ,PRIMARY KEY (VehicleID)
    ,FOREIGN KEY (ClassID)
    	REFERENCES Class(ClassID)
    	ON DELETE CASCADE
);

CREATE TABLE Locations(
     LocationID INT AUTO_INCREMENT
    ,LocationDesc VARCHAR(100)
    ,LocationCountry VARCHAR(50)
    ,PRIMARY KEY (LocationID)
);

CREATE TABLE SubStages(
	  SubstageID INT AUTO_INCREMENT
	 ,LocationID INT
	 ,SubstageName VARCHAR(100)
	 ,PRIMARY KEY (SubstageID)
	 ,FOREIGN KEY (LocationID)
	 	REFERENCES Locations(LocationID)
	 	ON DELETE CASCADE
);

CREATE TABLE Events(
     EventID INT AUTO_INCREMENT
    ,LocationID INT
    ,ClassID INT
    ,StartDate DATE
    ,EndDate DATE
    ,PRIMARY KEY (EventID)
    ,FOREIGN KEY (LocationID)
    	REFERENCES Locations(LocationID)
    	ON DELETE CASCADE
);

CREATE TABLE Stages(
     StageID INT AUTO_INCREMENT
    ,EventID INT
    ,SubStageID INT
    ,SubStageNumber INT
    ,Conditions VARCHAR(50)
    ,PRIMARY KEY (StageID)
    ,FOREIGN KEY (EventID)
    	REFERENCES Events(EventID)
    	ON DELETE CASCADE
    ,FOREIGN KEY (SubStageID)
    	REFERENCES SubStages(SubStageID)
    	ON DELETE CASCADE
);

CREATE TABLE StageDetails(
     SDetailsID INT AUTO_INCREMENT
    ,StageID INT
    ,DriverID INT
    ,VehicleID INT
    ,StageTime TIME(3)
    ,Comments VARCHAR(8000)
    ,PRIMARY KEY (SDetailsID)
    ,FOREIGN KEY (StageID)
    	REFERENCES Stages(StageID)
    	ON DELETE CASCADE
);