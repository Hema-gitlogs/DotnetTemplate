
CREATE PROCEDURE dbo.usp_Get_OrgHeirDetail_By_OrgHeirarchyId(@OrgHeirId int)
AS
BEGIN
	SELECT 
		Id,
		UserId,
		Designation,
		
		EngagementLevelID,
		
		ReportsToId,
		Persona,
		RoleDescription,
		
		Gender
	FROM OrgHierarchy 
	WHERE Id=@OrgHeirId
END

Select * from OrgHierarchy

EXEC dbo.usp_Get_OrgHeirDetail_By_OrgHeirarchyId 1
