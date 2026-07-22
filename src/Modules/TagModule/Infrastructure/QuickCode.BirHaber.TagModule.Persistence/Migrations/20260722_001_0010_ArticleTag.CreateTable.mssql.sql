IF OBJECT_ID(N'dbo.ARTICLE_TAGS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[ARTICLE_TAGS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [ARTICLE_ID] int NOT NULL,
        [TAG_ID] int NOT NULL,
        [ASSIGNED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_ARTICLE_TAGS] PRIMARY KEY ([ID])
    );
END;