CREATE TABLE [dbo].[Tasks] (
    [taskId]                BIGINT          IDENTITY (1, 1) NOT NULL,
    [taskName]              NVARCHAR (255)  NOT NULL,
    [taskDescr]             NVARCHAR (4000) NOT NULL,
    [taskEstDuration]       FLOAT (53)      NOT NULL,
    [equipShutdownRequired] BIT             NOT NULL,
    CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED ([taskId] ASC)
);


