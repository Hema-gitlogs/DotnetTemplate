CREATE PROCEDURE dbo.usp_Get_All_InnovaUsers
AS
BEGIN
	SELECT 
		ID,
		Name 
	FROM Users
END
GO

