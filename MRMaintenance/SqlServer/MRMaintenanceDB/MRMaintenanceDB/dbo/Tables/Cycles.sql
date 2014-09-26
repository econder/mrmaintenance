CREATE TABLE [dbo].[Cycles] (
    [cycleId]    BIGINT   IDENTITY (1, 1) NOT NULL,
    [equipId]    BIGINT   NOT NULL,
    [cyclesDate] DATETIME CONSTRAINT [DF_Cycles_cyclesDate] DEFAULT (getdate()-(1)) NULL,
    [cycles]     BIGINT   NOT NULL,
    CONSTRAINT [PK_Cycles] PRIMARY KEY CLUSTERED ([cycleId] ASC),
    CONSTRAINT [FK_Cycles_Equipment] FOREIGN KEY ([equipId]) REFERENCES [dbo].[Equipment] ([equipId]) ON DELETE CASCADE ON UPDATE CASCADE
);

