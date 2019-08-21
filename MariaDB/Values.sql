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
    ,("Up To 2000cc")
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
    ,(11,15);

INSERT INTO Stages(
     EventID
    ,SubStage
    ,SubStageNumber
    ,Condition
)
VALUES
     (1,"Waldabstieg",1)
    ,(1,"Innerer Feld-Sprint",2)
    ,(1,"Kreuzungsring",3)
    ,(1,"Hammerstein",4)
    ,(1,"Oberstein",5)
    ,(1,"Innerer Feld-Sprint",6)
    
    ,(2,"Fury Lake Depart",1)
    ,(2,"Fuller Mountain Ascent",2)
    ,(2,"Beaver Creek Trail Forward",3,"Dark")
    ,(2,"North Fork Pass Reverse",4,"Dark")
    ,(2,"Hancock Creek Burst",5,"Wet")
    ,(2,"Hancock Hill Sprint Forward",6,"Wetter!");

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
    ,(12,3,56,"00:03:48.413");