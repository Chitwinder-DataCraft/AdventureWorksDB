CREATE PROCEDURE [dbo].[uspAddWarehouse]
    @WarehouseName NVARCHAR(100),
    @Location NVARCHAR(200) = NULL,
    @WarehouseID INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [dbo].[Warehouse] ([WarehouseName], [Location])
    VALUES (@WarehouseName, @Location);

    SET @WarehouseID = CONVERT(INT, SCOPE_IDENTITY());
END;