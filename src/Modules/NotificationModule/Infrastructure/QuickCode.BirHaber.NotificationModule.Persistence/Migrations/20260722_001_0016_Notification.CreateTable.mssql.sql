IF OBJECT_ID(N'dbo.NOTIFICATIONS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[NOTIFICATIONS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [READER_ID] int NOT NULL,
        [NOTIFICATION_TYPE] nvarchar(50) NOT NULL,
        [TITLE] nvarchar(250) NOT NULL,
        [MESSAGE] nvarchar(1000) NOT NULL,
        [RELATED_ARTICLE_ID] int NOT NULL,
        [RELATED_COMMENT_ID] int NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'PENDING',
        [CHANNEL] nvarchar(50) NOT NULL,
        [PRIORITY] tinyint NOT NULL DEFAULT '0',
        [READ_DATE] datetime2(7) NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [SENT_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_NOTIFICATIONS] PRIMARY KEY ([ID])
    );
END;