CREATE TABLE [dbo].[Runtimes] (
    [runtimeId]   BIGINT     IDENTITY (1, 1) NOT NULL,
    [equipId]     BIGINT     NOT NULL,
    [runtimeDate] DATETIME   CONSTRAINT [DF_Runtimes_runtimeDate] DEFAULT (getdate()-(1)) NULL,
    [runtime]     FLOAT (53) NOT NULL,
    CONSTRAINT [PK_Runtimes] PRIMARY KEY CLUSTERED ([runtimeId] ASC),
    CONSTRAINT [FK_Runtimes_Equipment] FOREIGN KEY ([equipId]) REFERENCES [dbo].[Equipment] ([equipId]) ON DELETE CASCADE ON UPDATE CASCADE
);

