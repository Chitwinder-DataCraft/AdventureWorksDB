CREATE TABLE [dbo].[Warehouse] (
    [WarehouseID] INT IDENTITY(1,1) NOT NULL,
    [WarehouseName] NVARCHAR(100) NOT NULL,
    [Location] NVARCHAR(200) NULL,
    [CreatedAt] DATETIME2(0) NOT NULL
        CONSTRAINT [DF_Warehouse_CreatedAt] DEFAULT SYSUTCDATETIME(),
    CONSTRAINT [PK_Warehouse] PRIMARY KEY ([WarehouseID]),
    CONSTRAINT [UQ_Warehouse_WarehouseName] UNIQUE ([WarehouseName])
);
