USE [ECom]
GO
/****** Object:  StoredProcedure [dbo].[usp_ECom_CustomerOrder_Update]    Script Date: 2017/3/23 21:34:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		JIANPING YIN	
-- Create date: 20170311
-- Description:	UPDATE BY ID
-- =============================================
CREATE PROCEDURE [dbo].[usp_ECom_CustomerOrder_Update]
	-- Add the parameters for the stored procedure here
	@Id INT,
	@CustomerId INT,
	@StatusId INT,
	@GrandTotal DECIMAL(12,2),
	@PaymentType VARCHAR(25),
	@OrderDate DATETIME,
	@ShipToAddressId VARCHAR(25),
	@CreatedBy VARCHAR(25),
	@CreatedDate DATETIME,
	@LastModifiedBy VARCHAR(25),
	@LastModifiedDate DATETIME
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[CustomerOrder] 
	SET CustomerId=@CustomerId, StatusId=@StatusId, GrandTotal=@GrandTotal, PaymentType=@PaymentType, OrderDate=@OrderDate, ShipToAddressId=@ShipToAddressId, CreatedBy=@CreatedBy, CreatedDate=@CreatedDate, LastModifiedBy=@LastModifiedBy, LastModifiedDate=@LastModifiedDate
    WHERE Id=@Id;
	-- Insert statements for procedure here
	RETURN @@IDENTITY;
END
