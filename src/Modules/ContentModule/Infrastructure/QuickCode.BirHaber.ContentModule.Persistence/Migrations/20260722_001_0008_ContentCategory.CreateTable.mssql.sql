IF OBJECT_ID(N'dbo.CONTENT_CATEGORIES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[CONTENT_CATEGORIES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [ARTICLE_ID] int NOT NULL,
        [CATEGORY_ID] int NOT NULL,
        [ASSIGNED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_CONTENT_CATEGORIES] PRIMARY KEY ([ID])
    );
END;