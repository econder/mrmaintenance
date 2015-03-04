CREATE TABLE [dbo].[VendorContacts] (
    [venContId] BIGINT          IDENTITY (1, 1) NOT NULL,
    [venId]     BIGINT          NOT NULL,
    [firstName] NVARCHAR (255)  NOT NULL,
    [midName]   NVARCHAR (255)  NULL,
    [lastName]  NVARCHAR (255)  NOT NULL,
    [title]     NVARCHAR (255)  NULL,
    [phone1]    NVARCHAR (15)   NULL,
    [phone2]    NVARCHAR (15)   NULL,
    [fax]       NVARCHAR (15)   NULL,
    [email]     NVARCHAR (4000) NULL,
    CONSTRAINT [PK_VendorContacts] PRIMARY KEY CLUSTERED ([venContId] ASC),
    CONSTRAINT [FK_VendorContacts_Vendors] FOREIGN KEY ([venId]) REFERENCES [dbo].[Vendors] ([venId]) ON DELETE CASCADE ON UPDATE CASCADE
);



