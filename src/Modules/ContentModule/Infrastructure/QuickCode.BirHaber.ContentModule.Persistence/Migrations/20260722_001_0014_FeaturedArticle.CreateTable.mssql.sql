IF OBJECT_ID(N'dbo.FEATURED_ARTICLES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[FEATURED_ARTICLES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [ARTICLE_ID] int NOT NULL,
        [FEATURED_POSITION] int NOT NULL,
        [START_DATE] datetime2(7) NOT NULL,
        [END_DATE] datetime2(7) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_FEATURED_ARTICLES] PRIMARY KEY ([ID])
    );
END;