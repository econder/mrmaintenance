CREATE TABLE [dbo].[TaskParts] (
    [woPartId] BIGINT IDENTITY (1, 1) NOT NULL,
    [taskId]   BIGINT NOT NULL,
    [partId]   BIGINT NOT NULL,
    CONSTRAINT [PK_TaskParts] PRIMARY KEY CLUSTERED ([woPartId] ASC),
    CONSTRAINT [FK_TaskParts_Parts] FOREIGN KEY ([partId]) REFERENCES [dbo].[Parts] ([partId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_TaskParts_Tasks] FOREIGN KEY ([taskId]) REFERENCES [dbo].[Tasks] ([taskId]) ON DELETE CASCADE ON UPDATE CASCADE
);

