IF OBJECT_ID(N'dbo.COMMENT_LIKES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[COMMENT_LIKES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [COMMENT_ID] int NOT NULL,
        [READER_ID] int NOT NULL,
        [LIKE_TYPE] nvarchar(50) NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_COMMENT_LIKES] PRIMARY KEY ([ID])
    );
END;