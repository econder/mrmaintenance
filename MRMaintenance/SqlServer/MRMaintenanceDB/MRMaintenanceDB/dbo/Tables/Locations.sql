CREATE TABLE [dbo].[Locations] (
    [locId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [facId]   BIGINT         NOT NULL,
    [name]    NVARCHAR (255) NOT NULL,
    [addr1]   NVARCHAR (255) NULL,
    [addr2]   NVARCHAR (255) NULL,
    [city]    NVARCHAR (255) NULL,
    [stateId] BIGINT         NULL,
    [zip]     VARCHAR (10)   NULL,
    [lat]     FLOAT (53)     NULL,
    [long]    FLOAT (53)     NULL,
    CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED ([locId] ASC),
    CONSTRAINT [FK_Locations_Facilities] FOREIGN KEY ([facId]) REFERENCES [dbo].[Facilities] ([facId]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Locations_States] FOREIGN KEY ([stateId]) REFERENCES [dbo].[States] ([stateId])
);

