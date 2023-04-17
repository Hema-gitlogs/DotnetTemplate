CREATE PROCEDURE dbo.usp_Get_OrgHeirarchyDetails_By_CustomerId (@CustomerId INT)
AS
BEGIN
  SELECT
	OH.Id AS OrgHeirId,
	CUser.Id AS UserId,
    CUser.Name,
    OH.Designation AS Designation,
    IK.Name AS InfluencerOrKdm,
	IK.Id AS InfluencerKdmId,
    EL.Id AS EngagementLevelId,
	EL.Name AS EngagementLevel,
	OH.InnovaDMId AS InnovaDMId,
    U.Name AS InnovaDM,
    CReport.Name AS ReportsTo,
	CReport.Id AS ParentId,
    OH.CustomerId,
    OH.Persona,
    OH.RoleDescription,
    OH.LinkedInUrl,
    OH.Gender
  FROM OrgHierarchy OH
  INNER JOIN Users U
    ON OH.InnovaDMId = U.Id
  INNER JOIN CustomerUser CUser
    ON OH.UserId = CUser.Id
    AND OH.CustomerId = CUser.CustomerId
  INNER JOIN InfluencerKdm IK
    ON OH.InfluencerKdmID = IK.Id
INNER JOIN EngagementLevel EL
    ON OH.EngagementLevelId = EL.Id
  LEFT JOIN CustomerUser CReport
    ON OH.ReportsToId = CReport.Id
    AND OH.CustomerId = CReport.CustomerId
  WHERE OH.CustomerId = @CustomerId
END
GO




