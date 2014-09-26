CREATE TABLE [dbo].[EquipmentDocs] (
    [equipDocId]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [equipId]      BIGINT          NOT NULL,
    [equipDocName] NVARCHAR (50)   NOT NULL,
    [equipDocLink] NVARCHAR (4000) NOT NULL,
    CONSTRAINT [PK_EquipmentDocs] PRIMARY KEY CLUSTERED ([equipDocId] ASC),
    CONSTRAINT [FK_EquipmentDocs_Equipment] FOREIGN KEY ([equipId]) REFERENCES [dbo].[Equipment] ([equipId]) ON DELETE CASCADE ON UPDATE CASCADE
);

