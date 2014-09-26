CREATE TABLE [dbo].[EmployeeAccessLevels] (
    [levelId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [levelName] NVARCHAR (50)  NOT NULL,
    [levelDesc] NVARCHAR (255) NULL,
    [levelCode] NVARCHAR (50)  NOT NULL,
    CONSTRAINT [PK_EmployeeAccessLevels] PRIMARY KEY CLUSTERED ([levelId] ASC)
);

