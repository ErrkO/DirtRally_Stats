INSERT INTO Drivers(
    FName
    ,LName
    ,SteamName
)
VALUES
     ("Joe","Perry","Jrp8401")          -- 1
    ,("Kennedy","Wright","BoneWolf")    -- 2
    ,("Patrick","Maloney","snocone333") -- 3
    ,("Andrew","???","Enderak")         -- 4
    ,("Tyler","Ashcraft","LiquidAsh")   -- 5
    ,("Eric","Oliver","Malaknight")     -- 6
    ,("Alex","Nehem","SA22C")           -- 7
    ,("TJ","Perry","Timberclaw");       -- 8

INSERT INTO Class(
    ClassName
)
VALUES
     ("H1 (FWD)")
    ,("H2 (FWD)")
    ,("H2 (RWD)")
    ,("H3 (RWD)")
    ,("Group B (RWD)")
    ,("RX Super 1600S")
    ,("Crosskart")
    ,("Group B (RalleyCross)")
    ,("RX2")
    ,("RX Supercars")
    ,("Group B (4WD)")
    ,("RX Supercars (2019)")
    ,("R2")
    ,("F2 Kit Car")
    ,("Group A")
    ,("NR4//R4")
    ,("2000cc (AWD)")
    ,("R5")
    ,("Rally GT");

INSERT INTO Vehicles(
    VehicleName
    ,ClassID
)
VALUES
    ("Mini Cooper S",1)
    ,("Lancia Fulvia HF",1)
    ,("DS Automobiles DS21",1)

    ,("Volkswagon Golf GTI 16v",2)
    ,("Peugeot 205 GTI",2)

    ,("Ford Escort Mk II",3)
    ,("Renault Alpine A110 1600 S",3)
    ,("Fiat 131 Abarth",3)
    ,("Opel Kadett C GT/E",3)

    ,("BMW E30 M3 Evo Rally",4)
    ,("Opel Ascona 400",4)
    ,("Lancia Stratos",4)
    ,("Renault 5 Turbo",4)
    ,("Datsun 240Z",4)
    ,("Ford Sierra Cosworth RS500",4)

    ,("Lancia 037 Evo 2",5)
    ,("Opel Manta 400",5)
    ,("BMW M1 Procar",5)
    ,("Porsche 911 SC RS",5)

    ,("Volkswagen Polo S1600",6)
    ,("Renault Clio R.S. S1600",6)
    ,("Opel Corsa Super 1600",6)

    ,("Speedcar Xtrem",7)

    ,("Lancia Delta S4 Rallycross",8)
    ,("Ford RS200 Evolution",8)
    ,("Peugeot 205 T16 Rallycross",8)
    ,("MG Metro 6R4 Rallycross",8)

    ,("Ford Fiesta OMSE SuperCar Lite",9)

    ,("Subaru WRX STI RX",10)
    ,("Peugeot 208 WRX",10)
    ,("Audi S1 EKS RX quattro",10)
    ,("Ford Fiesta Rallycross (Mk8)",10)
    ,("Renault Megane RS RX",10)
    ,("Volkswagen Polo R Supercar",10)
    ,("Ford Fiesta Rallycross (Mk7)",10)

    ,("Audi Sport quattro S1 E2",11)
    ,("Peugeot 205 T16 Evo 2",11)
    ,("Lancia Delta S4",11)
    ,("Ford RS200",11)
    ,("MG Metro 6R4",11)

    ,("Peugeot 208 WRX",12)
    ,("Audi S1 EKS RX quattro",12)
    ,("Ford Fiesta Rallycross (Mk8)",12)
    ,("Ford Fiesta RXS Evo 5",12)
    ,("Ford Fiesta Rallycross (STARD)",12)
    ,("Renault Megane RS RX",12)
    ,("Renault Clio RS RX",12)
    ,("Seat Ibiza RX",12)

    ,("Ford Fiesta R2",13)
    ,("Opel Adam R2",13)
    ,("Peugeot 208 R2",13)

    ,("Peugeot 306 Maxi",14)
    ,("SEAT Ibiza Kitcar",14)
    ,("Volkswagen Golf Kitcar",14)

    ,("Mitsubishi Lancer Evolution VI",15)
    ,("Subaru Impreza 1995",15)
    ,("Lancia Delta HF Integrale",15)
    ,("Ford Escort RS Cosworth",15)

    ,("Subaru WRX STI NR4",16)
    ,("Mitsubishi Lancer Evolution X",16)

    ,("Ford Focus RS Rally 2001",17)
    ,("Subaru Impreza (2001)",17)
    ,("Citroën C4 Rally",17)
    ,("Škoda Fabia Rally 2005",17)
    ,("Ford Focus RS Rally 2007",17)
    ,("Subaru Impreza",17)
    ,("Peuugeot 206 Rally",17)

    ,("Ford Fiesta R5",18)
    ,("Peugeot 208 R5 T16",18)
    ,("Mitsubishi Space Star R5",18)
    ,("Škoda Fabia R5",18)
    ,("Citroën C3 R5",18)
    ,("Volkswagen Polo GTI R5",18)

    ,("Chevrolet Camaro GT4-R",19)
    ,("Porsche 911 RGT Rally Spec",19)
    ,("Aston Martin V8 Vantage GT4",19)
    ,("Ford Mustang GT4",19);

INSERT INTO Locations(
     LocationDesc
    ,LocationCountry
)
VALUES
    ("Catamarca Province","Argentina")
    ,("Monaro","Australia")
    ,("Jämsä","Finland")
    ,("Baumholder","Germany")
    ,("Argolis","Greece")
    ,("Monte Carlo","Monaco")
    ,("Hawkes Bay","New Zealand")
    ,("Łęczna County","Poland")
    ,("Ribadelles","Spain")
    ,("Värmland","Sweden")

    ,("New England","USA")
    ,("Yas Marina Circuit","Abu Dhabi")
    ,("Mettet","Belgium")
    ,("Trois-Rivières","Canada")
    ,("Silverstone","England")
    ,("Lydden Hill","England")
    ,("Lohéac Bretagne","France")
    ,("Estering","Germany")
    ,("Bikernieki","Latvia")
    ,("Hell","Norway")

    ,("Montalegre","Portugal")
    ,("Killarney International Raceway","South Africa")
    ,("Circuit de Barcelona-Catalunya","Spain")
    ,("Höljes","Sweden");

INSERT INTO Events(
     LocationID
    ,ClassID
)
VALUES
     (4,16)
    ,(11,15)
	 ,(7,3)
	 ,(1,17);

INSERT INTO Stages(
     EventID
    ,SubStage
    ,SubStageNumber
    ,Conditions
)
VALUES
     (1,"Waldabstieg",1,NULL)
    ,(1,"Innerer Feld-Sprint",2,NULL)
    ,(1,"Kreuzungsring",3,NULL)
    ,(1,"Hammerstein",4,NULL)
    ,(1,"Oberstein",5,NULL)
    ,(1,"Innerer Feld-Sprint",6,NULL)
    
    ,(2,"Fury Lake Depart",1,NULL)
    ,(2,"Fuller Mountain Ascent",2,NULL)
    ,(2,"Beaver Creek Trail Forward",3,"Dark")
    ,(2,"North Fork Pass Reverse",4,"Dark")
    ,(2,"Hancock Creek Burst",5,"Wet")
    ,(2,"Hancock Hill Sprint Forward",6,"Wetter!")
	 
	 ,(3,'',1,NULL)
	 ,(3,'',2,NULL)
	 ,(3,'',3,NULL)
	 ,(3,'',4,NULL)
	 ,(3,'',5,NULL)
	 ,(3,'',6,NULL)
	
	 ,(4,'El Rodeo',1,NULL)
	 ,(4,'Camino A Coneta',2,NULL)
	 ,(4,'La Merced',3,NULL)
	 ,(4,'Valle De Los Puentes',4,NULL)
	 ,(4,'Valle De Los Puentes A La Inverse',5,NULL)
	 ,(4,'Camino De Acantilados Y Rocas',6,NULL);

INSERT INTO StageDetails(
     StageID
    ,DriverID
    ,VehicleID
    ,StageTime
)
VALUES
    (1,1,29,"00:03:39.040")
    ,(1,2,0,"00:03:57.928")
    ,(1,3,60,"00:03:32.406")

    ,(2,1,29,"00:03:54.923")
    ,(2,2,0,"00:04:11.145")
    ,(2,3,60,"00:03:44.815")
    
    ,(3,1,29,"00:08:11.673")
    ,(3,2,0,"00:07:54.025")
    ,(3,3,60,"00:07:37.712")
    
    ,(4,1,29,"00:04:17.046")
    ,(4,2,0,"00:04:16.842")
    ,(4,3,60,"00:03:54.894")
    
    ,(5,1,29,"00:03:38.508")
    ,(5,2,0,"00:05:04.634")
    ,(5,3,60,"00:03:41.373")
    
    ,(6,1,29,"00:07:40.641")
    ,(6,2,0,"00:08:04.276")
    ,(6,3,60,"00:07:41.204")
    
    ,(7,1,58,"00:03:59.676")
    ,(7,2,57,"00:04:28.578")
    ,(7,3,56,"00:04:03.493")
    
    ,(8,1,58,"00:03:21.060")
    ,(8,2,57,"00:04:03.469")
    ,(8,3,56,"00:03:23.118")
    
    ,(9,1,58,"00:07:04.982")
    ,(9,2,57,"00:08:02.395")
    ,(9,3,56,"00:07:23.576")
    
    ,(10,1,58,"00:06:56.887")
    ,(10,2,57,"00:08:59.613")
    ,(10,3,56,"00:07:59.881")
    
    ,(11,1,58,"00:04:17.659")
    ,(11,2,57,"00:04:34.529")
    ,(11,3,56,"00:04:05.832")
    
    ,(12,1,58,"00:03:42.299")
    ,(12,2,57,"00:03:50.735")
    ,(12,3,56,"00:03:48.413")
	 
	 ,(13,1,7,'00:05:16.438')
	 ,(13,2,9,'00:05:38.125')
	 ,(13,3,7,'00:05:21.615')
	 ,(13,6,9,'00:07:30.168')
	 
	 ,(14,1,7,'00:04:14.264')
	 ,(14,2,9,'00:04:05.656')
	 ,(14,3,7,'00:04:14.789')
	 ,(14,6,9,'00:30:00.000')
	 
	 ,(15,1,7,'00:04:15.928')
	 ,(15,2,9,'00:04:37.947')
	 ,(15,3,7,'00:04:10.243')
	 ,(15,6,9,'00:30:00.000')
	 
	 ,(16,1,7,'00:09:16.501')
	 ,(16,2,9,'00:09:48.538')
	 ,(16,3,7,'00:09:02.565')
	 ,(16,6,9,'00:30:00.000')
	 
	 ,(17,1,7,'00:04:04.769')
	 ,(17,2,9,'00:03:53.270')
	 ,(17,3,7,'00:03:54.703')
	 ,(17,6,9,'00:30:00.000')
	 
	 ,(18,1,7,'00:10:37.091')
	 ,(18,2,9,'00:10:53.633')
	 ,(18,3,7,'00:10:30.239')
	 ,(18,6,9,'00:30:00.000')
	 
	 ,(19,1,66,'00:02:35.229')
	 ,(19,2,66,'00:02:45.606')
	 ,(19,3,66,'00:02:33.714')
	 ,(19,6,66,'00:04:38.962')
	 
	 ,(20,1,66,'00:03:18.078')
	 ,(20,2,66,'00:03:03.596')
	 ,(20,3,66,'00:02:57.128')
	 ,(20,6,66,'00:04:17.176')
	 
	 ,(21,1,66,'00:02:54.487')
	 ,(21,2,66,'00:02:42.273')
	 ,(21,3,66,'00:02:37.506')
	 ,(21,6,66,'00:04:19.044')
	 
	 ,(22,1,66,'00:06:34.817')
	 ,(22,2,66,'00:07:02.334')
	 ,(22,3,66,'00:30:00.000')
	 ,(22,6,66,'00:09:08.053')
	 
	 ,(23,1,66,'00:06:27.890')
	 ,(23,2,66,'00:30:00.000')
	 ,(23,3,66,'00:06:30.634')
	 ,(23,6,66,'00:10:26.745')
	 
	 ,(24,1,66,'00:04:14.314')
	 ,(24,2,66,'00:30:00.000')
	 ,(24,3,66,'00:04:39.168')
	 ,(24,6,66,'00:06:50.827');