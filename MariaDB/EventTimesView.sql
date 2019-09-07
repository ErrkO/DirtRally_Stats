DROP TEMPORARY TABLE IF EXISTS EventTimes;

SET @EventID = 4;

CREATE TEMPORARY TABLE EventTimes(
		 EventID INT
		,DriverID INT
		,TotalTime TIME
);

INSERT INTO EventTimes( 
		 EventID
		,DriverID
		,TotalTime
)
SELECT
		 s.EventID
		,sd.DriverID
		,SEC_TO_TIME(SUM(TIME_TO_SEC(sd.StageTime))) AS TotalTime
FROM StageDetails sd
INNER JOIN Stages s ON sd.StageID = s.StageID
GROUP BY s.EventID
			,sd.DriverID;

SELECT MIN(TotalTime) FROM EventTimes WHERE EventID = @EventID INTO @MinTime;
		
SELECT EventID 
		,DriverID
		,TotalTime
		,TIMEDIFF(TotalTime,@MinTime) AS Diff
FROM EventTimes 
WHERE EventId = @EventID
GROUP BY EventID
			,DriverID
			,TotalTime
ORDER BY Diff ASC;

DROP TEMPORARY TABLE EventTimes;