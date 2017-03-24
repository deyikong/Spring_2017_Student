USE [ECom]
GO

/****** Object:  StoredProcedure [dbo].[usp_Customer_Get]    Script Date: 2017/3/23 20:19:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_Customer_Get] 
	-- Add the parameters for the stored procedure here
	@Id INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT Id, UserName, FirstName, LastName, CreateBy, CreateDate, LastModifiedBy, LastModifiedDate
	FROM [dbo].[Customer]
	WHERE Id = @Id
END

GO
