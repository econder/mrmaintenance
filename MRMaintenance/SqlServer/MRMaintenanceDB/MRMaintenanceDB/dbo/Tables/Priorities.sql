CREATE TABLE [dbo].[Priorities] (
    [priorityId]   INT           IDENTITY (1, 1) NOT NULL,
    [priorityName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Priorities] PRIMARY KEY CLUSTERED ([priorityId] ASC)
);

