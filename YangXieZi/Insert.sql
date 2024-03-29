USE [ECom]
GO
/****** Object:  StoredProcedure [dbo].[usp_ECom_CustomerOrder_Insert]    Script Date: 2017/3/23 20:19:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Zhe,,Wang>
-- Create date: <3/12/2017,,>
-- Description:	<CustomerOrder Insert,,>
-- =============================================
ALTER PROCEDURE [dbo].[usp_ECom_CustomerOrder_Insert]
	@CustomerId INT,
	@Status VARCHAR(25),
	@GrandTotal DECIMAL(12,2),
	@PaymentType VARCHAR(25),
	@OrderDate DateTime,
	@ShipToAddressId VARCHAR(200),
	@OrderNumber VARCHAR(15),
	@LastModifiedDate DATETIME,
	@CreatedDate DATETIME,
	@CreatedBy VARCHAR(25),
	@LastModifiedBy VARCHAR(25)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[CustomerOrder] (CustomerId, Status, GrandTotal, PaymentType, OrderDate, ShipToAddressId, OrderNumber, LastModifiedDate, CreatedDate, CreatedBy, LastModifiedBy)
	VALUES (@CustomerId, @Status, @GrandTotal, @PaymentType, @OrderDate, @ShipToAddressId, @OrderNumber, @LastModifiedDate, @CreatedDate, @CreatedBy, @LastModifiedBy)

	RETURN @@IDENTITY
END
