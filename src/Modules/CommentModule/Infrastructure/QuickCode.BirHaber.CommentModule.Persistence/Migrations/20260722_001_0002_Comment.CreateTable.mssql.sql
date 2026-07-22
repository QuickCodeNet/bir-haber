IF OBJECT_ID(N'dbo.COMMENTS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[COMMENTS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [ARTICLE_ID] int NOT NULL,
        [READER_ID] int NOT NULL,
        [PARENT_COMMENT_ID] int NOT NULL,
        [CONTENT] nvarchar(1000) NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'PENDING',
        [SENTIMENT] nvarchar(50) NOT NULL,
        [LIKE_COUNT] int NOT NULL DEFAULT '0',
        [DISLIKE_COUNT] int NOT NULL DEFAULT '0',
        [IS_PINNED] bit NOT NULL DEFAULT 0,
        [APPROVED_DATE] datetime2(7) NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [UPDATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_COMMENTS] PRIMARY KEY ([ID])
    );
END;