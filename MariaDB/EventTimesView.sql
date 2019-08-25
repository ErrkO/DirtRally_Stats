#CREATE TEMPORARY TABLE EventTimes
SELECT s.EventID
		,sd.DriverID
		,TIME(SUM(sd.StageTime)) AS TotalTime
FROM StageDetails sd
INNER JOIN Stages s ON sd.StageID = s.StageID
GROUP BY s.EventID
			,sd.DriverID;
			
SELECT s.EventID
		,sd.DriverID
		,sd.StageTime
		#,TIME(SUM(sd.StageTime)) AS TotalTime
FROM StageDetails sd
INNER JOIN Stages s ON sd.StageID = s.StageID
WHERE s.EventID = 4;
			
			
/*
SELECT s.EventID
		,d.FName
		,sd.VehicleID
		,sd.StageTime
		,((SELECT MIN(sd.StageTime)
			FROM StageDetails sd
			INNER JOIN stages s ON sd.stageid = s.StageID
			WHERE s.StageID = 1) - sd.StageTime) AS 'Diff'
FROM StageDetails sd
INNER JOIN Drivers d ON sd.DriverID = d.DriverID
INNER JOIN Stages s ON sd.StageID = s.StageID
WHERE sd.StageID = 1
GROUP BY sd.DriverID
			,s.EventID
ORDER BY sd.StageTime ASC */