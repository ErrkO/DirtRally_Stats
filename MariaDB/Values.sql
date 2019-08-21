INSERT INTO Drivers(
     DriverID
    ,FName
    ,LName
    ,SteamName
)
VALUES
     (1,"Joe","Perry","Jrp8401")
    ,(2,"Kennedy","Wright","BoneWolf")
    ,(3,"Patrick","Maloney","snocone333")
    ,(4,"Andrew","???","Enderak")
    ,(5,"Tyler","Ashcraft","LiquidAsh")
    ,(6,"Eric","Oliver","Malaknight")
    ,(7,"Alex","Nehem","SA22C")
    ,(8,"TJ","Perry","Timberclaw");

INSERT INTO Class(
     ClassID
    ,ClassName
)
VALUES
     (1,"H1 (FWD)")
    ,(2,"H2 (FWD)")
    ,(3,"H2 (RWD)")
    ,(4,"H3 (RWD)")
    ,(5,"Group B (RWD)")
    ,(6,"RX Super 1600S")
    ,(7,"Crosskart")
    ,(8,"Group B (RalleyCross)")
    ,(9,"RX2")
    ,(10,"RX Supercars")
    ,(11,"Group B (4WD)")
    ,(12,"RX Supercars (2019)")
    ,(13,"R2")
    ,(14,"F2 Kit Car")
    ,(15,"Group A")
    ,(16,"NR4//R4")
    ,(17,"Up To 2000cc")
    ,(18,"R5")
    ,(19,"Rally GT");

INSERT INTO Vehicles(
     VehicleID
    ,VehicleName
    ,ClassID
)
VALUES
    (1,"Mini Cooper S",1)
    ,(2,"Lancia Fulvia HF",1)
    ,(3,"DS Automobiles DS21",1)

    ,(4,"Volkswagon Golf GTI 16v",2)
    ,(5,"Peugeot 205 GTI",2)

    ,(6,"Ford Escort Mk II",3)
    ,(7,"Renault Alpine A110 1600 S",3)
    ,(8,"Fiat 131 Abarth",3)
    ,(9,"Opel Kadett C GT/E",3)

    ,(10,"BMW E30 M3 Evo Rally",4)
    ,(11,"Opel Ascona 400",4)
    ,(12,"Lancia Stratos",4)
    ,(13,"Renault 5 Turbo",4)
    ,(14,"Datsun 240Z",4)
    ,(15,"Ford Sierra Cosworth RS500",4)

    ,(16,"Lancia 037 Evo 2",5)
    ,(17,"Opel Manta 400",5)
    ,(18,"BMW M1 Procar",5)
    ,(19,"Porsche 911 SC RS",5)

    ,(20,"Volkswagen Polo S1600",6)
    ,(21,"Renault Clio R.S. S1600",6)
    ,(22,"Opel Corsa Super 1600",6)

    ,(23,"Speedcar Xtrem",7)

    ,(24,"Lancia Delta S4 Rallycross",8)
    ,(25,"Ford RS200 Evolution",8)
    ,(26,"Peugeot 205 T16 Rallycross",8)
    ,(27,"MG Metro 6R4 Rallycross",8)

    ,(28,"Ford Fiesta OMSE SuperCar Lite",9)

    ,(29,"Subaru WRX STI RX",10)
    ,(30,"Peugeot 208 WRX",10)
    ,(31,"Audi S1 EKS RX quattro",10)
    ,(32,"Ford Fiesta Rallycross (Mk8)",10)
    ,(33,"Renault Megane RS RX",10)
    ,(34,"Volkswagen Polo R Supercar",10)
    ,(35,"Ford Fiesta Rallycross (Mk7)",10)

    ,(36,"Audi Sport quattro S1 E2",11)
    ,(37,"Peugeot 205 T16 Evo 2",11)
    ,(38,"Lancia Delta S4",11)
    ,(39,"Ford RS200",11)
    ,(40,"MG Metro 6R4",11)

    ,(41,"Peugeot 208 WRX",12)
    ,(42,"Audi S1 EKS RX quattro",12)
    ,(43,"Ford Fiesta Rallycross (Mk8)",12)
    ,(44,"Ford Fiesta RXS Evo 5",12)
    ,(45,"Ford Fiesta Rallycross (STARD)",12)
    ,(46,"Renault Megane RS RX",12)
    ,(47,"Renault Clio RS RX",12)
    ,(48,"Seat Ibiza RX",12)

    ,(49,"Ford Fiesta R2",13)
    ,(50,"Opel Adam R2",13)
    ,(51,"Peugeot 208 R2",13)

    ,(52,"Peugeot 306 Maxi",14)
    ,(53,"SEAT Ibiza Kitcar",14)
    ,(54,"Volkswagen Golf Kitcar",14)

    ,(55,"Mitsubishi Lancer Evolution VI",15)
    ,(56,"Subaru Impreza 1995",15)
    ,(57,"Lancia Delta HF Integrale",15)
    ,(58,"Ford Escort RS Cosworth",15)

    ,(59,"Subaru WRX STI NR4",16)
    ,(60,"Mitsubishi Lancer Evolution X",16)

    ,(71,"Ford Focus RS Rally 2001",17)
    ,(72,"Subaru Impreza (2001)",17)
    ,(73,"Citroën C4 Rally",17)
    ,(74,"Škoda Fabia Rally 2005",17)
    ,(75,"Ford Focus RS Rally 2007",17)
    ,(76,"Subaru Impreza",17)
    ,(77,"Peuugeot 206 Rally",17)

    ,(78,"Ford Fiesta R5",18)
    ,(79,"Peugeot 208 R5 T16",18)
    ,(80,"Mitsubishi Space Star R5",18)
    ,(81,"Škoda Fabia R5",18)
    ,(82,"Citroën C3 R5",18)
    ,(83,"Volkswagen Polo GTI R5",18)

    ,(84,"Chevrolet Camaro GT4-R",19)
    ,(85,"Porsche 911 RGT Rally Spec",19)
    ,(86,"Aston Martin V8 Vantage GT4",19)
    ,(87,"Ford Mustang GT4",19);

INSERT INTO Locations(
     LocationID
    ,LocationDesc
    ,LocationCountry
)
VALUES
    (1,"Catamarca Province","Argentina")
    ,(2,"Monaro","Australia")
    ,(3,"Jämsä","Finland")
    ,(4,"Baumholder","Germany")
    ,(5,"Argolis","Greece")
    ,(6,"Monte Carlo","Monaco")
    ,(7,"Hawkes Bay","New Zealand")
    ,(8,"Łęczna County","Poland")
    ,(9,"Ribadelles","Spain")
    ,(10,"Värmland","Sweden")

    ,(11,"New England","USA")
    ,(12,"Yas Marina Circuit","Abu Dhabi")
    ,(13,"Mettet","Belgium")
    ,(14,"Trois-Rivières","Canada")
    ,(15,"Silverstone","England")
    ,(16,"Lydden Hill","England")
    ,(17,"Lohéac Bretagne","France")
    ,(18,"Estering","Germany")
    ,(19,"Bikernieki","Latvia")
    ,(20,"Hell","Norway")

    ,(21,"Montalegre","Portugal")
    ,(22,"Killarney International Raceway","South Africa")
    ,(23,"Circuit de Barcelona-Catalunya","Spain")
    ,(24,"Höljes","Sweden");

INSERT INTO Events(
     EventID
    ,LocationID
    ,ClassID
)
VALUES
     (1,4,16)
    ,(2,11,15);

INSERT INTO Stages(
     StageID
    ,EventID
    ,SubStage
    ,SubStageNumber
    ,Condition
)
VALUES
     (1,1,"Waldabstieg",1,"")
    ,(2,1,"Innerer Feld-Sprint",2,"")
    ,(3,1,"Kreuzungsring",3,"")
    ,(4,1,"Hammerstein",4,"")
    ,(5,1,"Oberstein",5,"")
    ,(6,1,"Innerer Feld-Sprint",6,"")
    ,(7,2,"Fury Lake Depart",1,"")
    ,(8,2,"Fuller Mountain Ascent",2,"")
    ,(9,2,"Beaver Creek Trail Forward",3,"Dark")
    ,(10,2,"North Fork Pass Reverse",4,"Dark")

    ,(11,2,"Hancock Creek Burst",5,"Wet")
    ,(12,2,"Hancock Hill Sprint Forward",6,"Wetter!");

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