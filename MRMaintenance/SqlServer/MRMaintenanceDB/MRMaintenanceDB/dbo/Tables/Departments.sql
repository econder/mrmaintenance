CREATE TABLE [dbo].[Departments] (
    [deptId] BIGINT         IDENTITY (1, 1) NOT NULL,
    [name]   NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED ([deptId] ASC)
);

