CREATE TABLE [dbo].[States] (
    [stateId] BIGINT       IDENTITY (1, 1) NOT NULL,
    [name]    VARCHAR (50) NOT NULL,
    [abbr]    CHAR (2)     NOT NULL,
    CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED ([stateId] ASC)
);

