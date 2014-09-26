CREATE TABLE [dbo].[Units] (
    [unitId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [unitName] NVARCHAR (255) NOT NULL,
    [unitAbbr] NVARCHAR (255) NULL,
    CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED ([unitId] ASC)
);

