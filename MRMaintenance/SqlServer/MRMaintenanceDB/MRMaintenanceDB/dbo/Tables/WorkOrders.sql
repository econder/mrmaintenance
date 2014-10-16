CREATE TABLE [dbo].[WorkOrders] (
    [woID]            BIGINT          IDENTITY (1, 1) NOT NULL,
    [reqId]           BIGINT          NOT NULL,
    [woDateCreated]   DATETIME        CONSTRAINT [DF_WorkOrders_woDateCreated] DEFAULT (getdate()) NOT NULL,
    [woDateDue]       DATETIME        NOT NULL,
    [woNotes]         NVARCHAR (4000) NULL,
    [woComplete]      BIT             CONSTRAINT [DF_WorkOrders_woComplete] DEFAULT ((0)) NOT NULL,
    [woDateCompleted] DATETIME        CONSTRAINT [DF_WorkOrders_woDateCompleted] DEFAULT (getdate()) NULL,
    [woCompletedBy]   NVARCHAR (255)  NULL,
    CONSTRAINT [PK_WorkOrders] PRIMARY KEY CLUSTERED ([woID] ASC)
	
);

