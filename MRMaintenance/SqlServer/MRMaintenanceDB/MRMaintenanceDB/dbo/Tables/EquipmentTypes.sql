CREATE TABLE [dbo].[EquipmentTypes] (
    [typeId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [typeName] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_EquipmentTypes] PRIMARY KEY CLUSTERED ([typeId] ASC)
);

