CREATE PROCEDURE dbo.usp_Get_All_DM
AS
BEGIN
SELECT 
	U.InnovaId,
	U.UserName,
	U.UserEmail,
	U.Designation,
	UR.NAME AS UserRole,
	U.IsActive
FROM USERS U
INNER JOIN UserRole UR ON U.userroleid=UR.Userroleid
END