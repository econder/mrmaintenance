CREATE TABLE [dbo].[Tasks] (
    [taskId]                BIGINT          IDENTITY (1, 1) NOT NULL,
    [taskName]              NVARCHAR (255)  NOT NULL,
    [taskDescr]             NVARCHAR (4000) NOT NULL,
    [taskEstDuration]       FLOAT (53)      NOT NULL,
    [equipShutdownRequired] BIT             NOT NULL,
    CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED ([taskId] ASC)
);





GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Time in hours', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'taskEstDuration';

