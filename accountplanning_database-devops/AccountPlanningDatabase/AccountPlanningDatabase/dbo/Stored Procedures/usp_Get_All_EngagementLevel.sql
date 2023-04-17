CREATE PROCEDURE usp_Get_All_Engagementlevel
AS
BEGIN
SELECT 
	ID,
	Name 
FROM EngagementLevel
END
