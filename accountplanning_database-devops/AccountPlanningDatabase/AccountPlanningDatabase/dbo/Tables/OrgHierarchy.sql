CREATE TABLE dbo.OrgHierarchy 
	(
		Id INT IDENTITY(1,1) PRIMARY KEY,
		UserId INT,
		Designation NVARCHAR(200), 
		
		EngagementLevelId INT,
		
		ReportsToId INT,
		LinkedlnUrl NVARCHAR(MAX),
		Persona NVARCHAR(MAX),
		RoleDescription NVARCHAR(200),
		
		Gender NVARCHAR(20),
		UpdateAt datetime,
		UpdatedBy int
		
		FOREIGN KEY (EngagementLevelID) REFERENCES EngagementLevel(Id),

		FOREIGN KEY (ReportsToId) REFERENCES CustomerUser(Id)
	)