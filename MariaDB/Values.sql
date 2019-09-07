INSERT INTO Drivers(
    FName
    ,LName
)
VALUES
     ('Joe','Perry')       -- 1
    ,('Kennedy','Wright')  -- 2
    ,('Patrick','Maloney') -- 3
    ,('Andrew','???')      -- 4
    ,('Tyler','Ashcraft')  -- 5
    ,('Eric','Oliver')     -- 6
    ,('Alex','Nehem')      -- 7
    ,('TJ','Perry');       -- 8
    
INSERT INTO Alias(
    DriverID
    ,AliasName
)
VALUES
     (1,'Jrp8401')         -- 1
    ,(2,'BoneWolf')    		-- 2
    ,(3,'snocone333') 		-- 3
    ,(4,'Enderak')         -- 4
    ,(5,'LiquidAsh')   		-- 5
    ,(6,'Malaknight')     	-- 6
    ,(7,'SA22C')           -- 7
    ,(8,'Timberclaw')      -- 8
    ,(6,'Errk')
	 ,(3,'Pat')
	 ,(2,'Ken');

INSERT INTO Class(
    ClassName
)
VALUES
     ('H1 (FWD)')
    ,('H2 (FWD)')
    ,('H2 (RWD)')
    ,('H3 (RWD)')
    ,('Group B (RWD)')
    ,('RX Super 1600S')
    ,('Crosskart')
    ,('Group B (RalleyCross)')
    ,('RX2')
    ,('RX Supercars')
    ,('Group B (4WD)')
    ,('RX Supercars (2019)')
    ,('R2')
    ,('F2 Kit Car')
    ,('Group A')
    ,('NR4//R4')
    ,('2000cc (AWD)')
    ,('R5')
    ,('Rally GT');

INSERT INTO Vehicles(
    VehicleName
    ,ClassID
)
VALUES
    ('Mini Cooper S',1)
    ,('Lancia Fulvia HF',1)
    ,('DS Automobiles DS21',1)

    ,('Volkswagon Golf GTI 16v',2)
    ,('Peugeot 205 GTI',2)

    ,('Ford Escort Mk II',3)
    ,('Renault Alpine A110 1600 S',3)
    ,('Fiat 131 Abarth',3)
    ,('Opel Kadett C GT/E',3)

    ,('BMW E30 M3 Evo Rally',4)
    ,('Opel Ascona 400',4)
    ,('Lancia Stratos',4)
    ,('Renault 5 Turbo',4)
    ,('Datsun 240Z',4)
    ,('Ford Sierra Cosworth RS500',4)

    ,('Lancia 037 Evo 2',5)
    ,('Opel Manta 400',5)
    ,('BMW M1 Procar',5)
    ,('Porsche 911 SC RS',5)

    ,('Volkswagen Polo S1600',6)
    ,('Renault Clio R.S. S1600',6)
    ,('Opel Corsa Super 1600',6)

    ,('Speedcar Xtrem',7)

    ,('Lancia Delta S4 Rallycross',8)
    ,('Ford RS200 Evolution',8)
    ,('Peugeot 205 T16 Rallycross',8)
    ,('MG Metro 6R4 Rallycross',8)

    ,('Ford Fiesta OMSE SuperCar Lite',9)

    ,('Subaru WRX STI RX',10)
    ,('Peugeot 208 WRX',10)
    ,('Audi S1 EKS RX quattro',10)
    ,('Ford Fiesta Rallycross (Mk8)',10)
    ,('Renault Megane RS RX',10)
    ,('Volkswagen Polo R Supercar',10)
    ,('Ford Fiesta Rallycross (Mk7)',10)

    ,('Audi Sport quattro S1 E2',11)
    ,('Peugeot 205 T16 Evo 2',11)
    ,('Lancia Delta S4',11)
    ,('Ford RS200',11)
    ,('MG Metro 6R4',11)

    ,('Peugeot 208 WRX',12)
    ,('Audi S1 EKS RX quattro',12)
    ,('Ford Fiesta Rallycross (Mk8)',12)
    ,('Ford Fiesta RXS Evo 5',12)
    ,('Ford Fiesta Rallycross (STARD)',12)
    ,('Renault Megane RS RX',12)
    ,('Renault Clio RS RX',12)
    ,('Seat Ibiza RX',12)

    ,('Ford Fiesta R2',13)
    ,('Opel Adam R2',13)
    ,('Peugeot 208 R2',13)

    ,('Peugeot 306 Maxi',14)
    ,('SEAT Ibiza Kitcar',14)
    ,('Volkswagen Golf Kitcar',14)

    ,('Mitsubishi Lancer Evolution VI',15)
    ,('Subaru Impreza 1995',15)
    ,('Lancia Delta HF Integrale',15)
    ,('Ford Escort RS Cosworth',15)

    ,('Subaru WRX STI NR4',16)
    ,('Mitsubishi Lancer Evolution X',16)

    ,('Ford Focus RS Rally 2001',17)
    ,('Subaru Impreza (2001)',17)
    ,('Citroën C4 Rally',17)
    ,('Škoda Fabia Rally 2005',17)
    ,('Ford Focus RS Rally 2007',17)
    ,('Subaru Impreza',17)
    ,('Peuugeot 206 Rally',17)

    ,('Ford Fiesta R5',18)
    ,('Peugeot 208 R5 T16',18)
    ,('Mitsubishi Space Star R5',18)
    ,('Škoda Fabia R5',18)
    ,('Citroën C3 R5',18)
    ,('Volkswagen Polo GTI R5',18)

    ,('Chevrolet Camaro GT4-R',19)
    ,('Porsche 911 RGT Rally Spec',19)
    ,('Aston Martin V8 Vantage GT4',19)
    ,('Ford Mustang GT4',19);

INSERT INTO Locations(
     LocationDesc
    ,LocationCountry
)
VALUES
    ('Catamarca Province','Argentina')
    ,('Monaro','Australia')
    ,('Jämsä','Finland')
    ,('Baumholder','Germany')
    ,('Argolis','Greece')
    ,('Monte Carlo','Monaco')
    ,('Hawkes Bay','New Zealand')
    ,('Łęczna County','Poland')
    ,('Ribadelles','Spain')
    ,('Värmland','Sweden')

    ,('New England','USA')
    ,('Yas Marina Circuit','Abu Dhabi')
    ,('Mettet','Belgium')
    ,('Trois-Rivières','Canada')
    ,('Silverstone','England')
    ,('Lydden Hill','England')
    ,('Lohéac Bretagne','France')
    ,('Estering','Germany')
    ,('Bikernieki','Latvia')
    ,('Hell','Norway')

    ,('Montalegre','Portugal')
    ,('Killarney International Raceway','South Africa')
    ,('Circuit de Barcelona-Catalunya','Spain')
    ,('Höljes','Sweden');
    
INSERT INTO SubStages(
	 LocationID
	 ,SubstageName
)
VALUES
	  (4,'Waldabstieg')
	 ,(4,'Innerer Feld-Sprint')
	 ,(4,'Kreuzungsring')
	 ,(4,'Hammerstein')
	 ,(4,'Oberstein')
	 ,(4,'Innerer Feld-Sprint')
	 
	 ,(11,'Fury Lake Depart')
	 ,(11,'Fuller Mountain Ascent')
	 ,(11,'Beaver Creek Trail Forward')
	 ,(11,'North Fork Pass Reverse')
	 ,(11,'Hancock Creek Burst')
	 ,(11,'Hancock Hill Sprint Forward')
	 
	 ,(1,'El Rodeo')
	 ,(1,'Camino A Coneta')
	 ,(1,'La Merced')
	 ,(1,'Valle De Los Puentes')
	 ,(1,'Valle De Los Puentes A La Inverse')
	 ,(1,'Camino De Acantilados Y Rocas');

INSERT INTO Events(
     LocationID
    ,ClassID
    ,StartDate
    ,EndDate
)
VALUES
     (4,16,'2019-07-29','2019-08-05')
    ,(11,15,'2019-08-05','2019-08-12')
	 ,(7,3,'2019-08-12','2019-08-19')
	 ,(1,17,'2019-08-19','2019-08-26');

INSERT INTO Stages(
     EventID
    ,SubStageID
    ,SubStageNumber
    ,Conditions
)
VALUES
     (1,1,1,NULL)
    ,(1,2,2,NULL)
    ,(1,3,3,NULL)
    ,(1,4,4,NULL)
    ,(1,5,5,NULL)
    ,(1,6,6,NULL)
    
    ,(2,7,1,NULL)
    ,(2,8,2,NULL)
    ,(2,9,3,'Dark')
    ,(2,10,4,'Dark')
    ,(2,11,5,'Wet')
    ,(2,12,6,'Wetter!')
	 
	 ,(3,null,1,NULL)
	 ,(3,null,2,NULL)
	 ,(3,null,3,NULL)
	 ,(3,null,4,NULL)
	 ,(3,null,5,NULL)
	 ,(3,null,6,NULL)
	
	 ,(4,13,1,NULL)
	 ,(4,14,2,NULL)
	 ,(4,15,3,NULL)
	 ,(4,16,4,NULL)
	 ,(4,17,5,NULL)
	 ,(4,18,6,NULL);

INSERT INTO StageDetails(
     StageID
    ,DriverID
    ,VehicleID
    ,StageTime
    ,Comments
)
VALUES
     (1,1,29,"00:03:39.040",null)
    ,(1,2,0,"00:03:57.928",null)
    ,(1,3,60,"00:03:32.406",null)

    ,(2,1,29,"00:03:54.923",null)
    ,(2,2,0,"00:04:11.145",null)
    ,(2,3,60,"00:03:44.815",null)
    
    ,(3,1,29,"00:08:11.673",null)
    ,(3,2,0,"00:07:54.025",null)
    ,(3,3,60,"00:07:37.712",null)
    
    ,(4,1,29,"00:04:17.046",null)
    ,(4,2,0,"00:04:16.842",null)
    ,(4,3,60,"00:03:54.894",null)
    
    ,(5,1,29,"00:03:38.508",null)
    ,(5,2,0,"00:05:04.634",null)
    ,(5,3,60,"00:03:41.373",null)
    
    ,(6,1,29,"00:07:40.641",null)
    ,(6,2,0,"00:08:04.276",null)
    ,(6,3,60,"00:07:41.204",null)
    
    ,(7,1,58,"00:03:59.676",null)
    ,(7,2,57,"00:04:28.578",null)
    ,(7,3,56,"00:04:03.493",null)
    
    ,(8,1,58,"00:03:21.060",null)
    ,(8,2,57,"00:04:03.469",null)
    ,(8,3,56,"00:03:23.118",null)
    
    ,(9,1,58,"00:07:04.982",null)
    ,(9,2,57,"00:08:02.395",null)
    ,(9,3,56,"00:07:23.576",null)
    
    ,(10,1,58,"00:06:56.887",null)
    ,(10,2,57,"00:08:59.613",null)
    ,(10,3,56,"00:07:59.881",null)
    
    ,(11,1,58,"00:04:17.659",null)
    ,(11,2,57,"00:04:34.529",null)
    ,(11,3,56,"00:04:05.832",null)
    
    ,(12,1,58,"00:03:42.299",null)
    ,(12,2,57,"00:03:50.735",null)
    ,(12,3,56,"00:03:48.413",null)
	 
	 ,(13,1,7,"00:05:16.438",null)
	 ,(13,2,9,"00:05:38.125",null)
	 ,(13,3,7,"00:05:21.615",null)
	 ,(13,6,9,"00:07:30.168",null)
	 
	 ,(14,1,7,"00:04:14.264",null)
	 ,(14,2,9,"00:04:05.656",null)
	 ,(14,3,7,"00:04:14.789",null)
	 ,(14,6,9,"00:30:00.000",null)
	 
	 ,(15,1,7,"00:04:15.928",null)
	 ,(15,2,9,"00:04:37.947",null)
	 ,(15,3,7,"00:04:10.243",null)
	 ,(15,6,9,"00:30:00.000",null)
	 
	 ,(16,1,7,"00:09:16.501",null)
	 ,(16,2,9,"00:09:48.538",null)
	 ,(16,3,7,"00:09:02.565",null)
	 ,(16,6,9,"00:30:00.000",null)
	 
	 ,(17,1,7,"00:04:04.769",null)
	 ,(17,2,9,"00:03:53.270",null)
	 ,(17,3,7,"00:03:54.703",null)
	 ,(17,6,9,"00:30:00.000",null)
	 
	 ,(18,1,7,"00:10:37.091",null)
	 ,(18,2,9,"00:10:53.633",null)
	 ,(18,3,7,"00:10:30.239",null)
	 ,(18,6,9,"00:30:00.000",null)
	 
	 ,(19,1,66,"00:02:35.229",null)
	 ,(19,2,66,"00:02:45.606",null)
	 ,(19,3,66,"00:02:33.714",null)
	 ,(19,6,66,"00:04:38.962",null)
	 
	 ,(20,1,66,"00:03:18.078",null)
	 ,(20,2,66,"00:03:03.596",null)
	 ,(20,3,66,"00:02:57.128",null)
	 ,(20,6,66,"00:04:17.176",null)
	 
	 ,(21,1,66,"00:02:54.487",null)
	 ,(21,2,66,"00:02:42.273",null)
	 ,(21,3,66,"00:02:37.506",null)
	 ,(21,6,66,"00:04:19.044",null)
	 
	 ,(22,1,66,"00:06:34.817",null)
	 ,(22,2,66,"00:07:02.334",null)
	 ,(22,3,66,"00:30:00.000",null)
	 ,(22,6,66,"00:09:08.053",null)
	 
	 ,(23,1,66,"00:06:27.890",null)
	 ,(23,2,66,"00:30:00.000",null)
	 ,(23,3,66,"00:06:30.634",null)
	 ,(23,6,66,"00:10:26.745",null)
	 
	 ,(24,1,66,"00:04:14.314",null)
	 ,(24,2,66,"00:30:00.000",null)
	 ,(24,3,66,"00:04:39.168",null)
	 ,(24,6,66,"00:06:50.827",null);