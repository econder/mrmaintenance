CREATE TABLE [dbo].[WorkOrderRequests] (
    [reqId]            BIGINT          IDENTITY (1, 1) NOT NULL,
    [reqName]          NVARCHAR (255)  NOT NULL,
    [reqDescr]         NVARCHAR (4000) NULL,
    [equipId]          BIGINT          NOT NULL,
    [deptId]           BIGINT          NULL,
    [reqDateSubmitted] DATETIME        CONSTRAINT [DF_WorkOrderRequests_reqDateSubmitted] DEFAULT (getdate()) NOT NULL,
    [reqStartDate]     DATETIME        NOT NULL,
    [timeFreq]         INT             NOT NULL,
    [intId]            BIGINT          NOT NULL,
    [lastCompleted]    DATETIME        NULL,
    [enabled]          BIT             CONSTRAINT [DF_WOSchedules_enabled] DEFAULT ((1)) NOT NULL,
    [priorityId]       INT             CONSTRAINT [DF_WorkOrderRequests_priorityId] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_WorkOrderRequests] PRIMARY KEY CLUSTERED ([reqId] ASC),
    CONSTRAINT [FK_WorkOrderRequests_Departments] FOREIGN KEY ([deptId]) REFERENCES [dbo].[Departments] ([deptId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_WorkOrderRequests_Equipment] FOREIGN KEY ([equipId]) REFERENCES [dbo].[Equipment] ([equipId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_WorkOrderRequests_Priorities] FOREIGN KEY ([priorityId]) REFERENCES [dbo].[Priorities] ([priorityId]) ON DELETE SET DEFAULT ON UPDATE CASCADE,
    CONSTRAINT [FK_WorkOrderRequests_TimeIntervals] FOREIGN KEY ([intId]) REFERENCES [dbo].[TimeIntervals] ([intId])
);

