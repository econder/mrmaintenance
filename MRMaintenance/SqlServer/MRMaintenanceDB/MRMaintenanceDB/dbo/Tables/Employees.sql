CREATE TABLE [dbo].[Employees] (
    [empId]      BIGINT         IDENTITY (1, 1) NOT NULL,
    [facId]      BIGINT         NOT NULL,
    [levelId]    BIGINT         NOT NULL,
    [deptId]     BIGINT         NOT NULL,
    [firstName]  NVARCHAR (255) NOT NULL,
    [middleName] NVARCHAR (255) NULL,
    [lastName]   NVARCHAR (255) NOT NULL,
    [empNumber]  NVARCHAR (255) NULL,
    [addr1]      NVARCHAR (255) NULL,
    [addr2]      NVARCHAR (255) NULL,
    [city]       NVARCHAR (255) NULL,
    [stateId]    BIGINT         NULL,
    [zip]        NVARCHAR (255) NULL,
    [phone1]     NVARCHAR (10)  NULL,
    [phone2]     NVARCHAR (10)  NULL,
    [email]      NVARCHAR (255) NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([empId] ASC),
    CONSTRAINT [FK_Employees_Departments] FOREIGN KEY ([deptId]) REFERENCES [dbo].[Departments] ([deptId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Employees_EmployeeAccessLevels] FOREIGN KEY ([levelId]) REFERENCES [dbo].[EmployeeAccessLevels] ([levelId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Employees_Facilities] FOREIGN KEY ([facId]) REFERENCES [dbo].[Facilities] ([facId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Employees_States] FOREIGN KEY ([stateId]) REFERENCES [dbo].[States] ([stateId])
);

