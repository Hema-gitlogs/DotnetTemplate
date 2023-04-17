CREATE PROCEDURE dbo.usp_Get_CustomerUsers_By_CustomerId(@CustomerId INT)
AS
BEGIN
  SELECT
	Id,
    Name
  FROM CustomerUser 
 
END





