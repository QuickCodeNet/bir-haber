IF OBJECT_ID(N'dbo.NOTIFICATION_QUEUES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[NOTIFICATION_QUEUES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [NOTIFICATION_ID] int NOT NULL,
        [READER_ID] int NOT NULL,
        [CHANNEL] nvarchar(50) NOT NULL,
        [RETRY_COUNT] int NOT NULL DEFAULT '0',
        [LAST_RETRY_DATE] datetime2(7) NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'PENDING',
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_NOTIFICATION_QUEUES] PRIMARY KEY ([ID])
    );
END;