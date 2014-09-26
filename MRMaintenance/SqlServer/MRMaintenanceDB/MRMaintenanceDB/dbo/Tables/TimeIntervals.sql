CREATE TABLE [dbo].[TimeIntervals] (
    [intId]     BIGINT        NOT NULL,
    [intName]   NVARCHAR (50) NOT NULL,
    [intAbbr]   NVARCHAR (50) NOT NULL,
    [orderCode] INT           NOT NULL,
    CONSTRAINT [PK_TimeIntervals] PRIMARY KEY CLUSTERED ([intId] ASC)
);

