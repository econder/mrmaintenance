CREATE TABLE [dbo].[Users] (
    [userId]   BIGINT          IDENTITY (1, 1) NOT NULL,
    [empId]    BIGINT          NOT NULL,
    [deptId]   BIGINT          NOT NULL,
    [userName] NVARCHAR (255)  NOT NULL,
    [password] NVARCHAR (4000) NULL,
    [salt]     NVARCHAR (4000) NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([userId] ASC),
    CONSTRAINT [FK_Users_Departments] FOREIGN KEY ([deptId]) REFERENCES [dbo].[Departments] ([deptId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Users_Employees] FOREIGN KEY ([empId]) REFERENCES [dbo].[Employees] ([empId])
);

