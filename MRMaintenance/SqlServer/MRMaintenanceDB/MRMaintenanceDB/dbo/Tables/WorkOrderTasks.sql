CREATE TABLE [dbo].[WorkOrderTasks] (
    [woTaskId]         BIGINT          IDENTITY (1, 1) NOT NULL,
    [reqId]            BIGINT          NOT NULL,
    [modelId]          BIGINT          NOT NULL,
    [taskId]           BIGINT          NOT NULL,
    [taskStep]         INT             NULL,
    [taskComplete]     BIT             CONSTRAINT [DF_WorkOrderTasks_taskComplete] DEFAULT ((0)) NULL,
    [taskDateComplete] DATETIME        NULL,
    [taskDuration]     FLOAT (53)      NULL,
    [woTaskNotes]      NVARCHAR (4000) NULL,
    CONSTRAINT [PK_WorkOrderTasks] PRIMARY KEY CLUSTERED ([woTaskId] ASC),
    CONSTRAINT [FK_WorkOrderTasks_EquipmentModels] FOREIGN KEY ([modelId]) REFERENCES [dbo].[EquipmentModels] ([modelId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_WorkOrderTasks_Tasks] FOREIGN KEY ([taskId]) REFERENCES [dbo].[Tasks] ([taskId]) ON DELETE CASCADE ON UPDATE CASCADE
);



