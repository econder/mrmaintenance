CREATE TABLE [dbo].[EquipmentModels] (
    [modelId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [modelName] NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_EquipmentModels] PRIMARY KEY CLUSTERED ([modelId] ASC)
);

