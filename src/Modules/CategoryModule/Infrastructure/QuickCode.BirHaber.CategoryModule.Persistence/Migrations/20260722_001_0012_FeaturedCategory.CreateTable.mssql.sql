IF OBJECT_ID(N'dbo.FEATURED_CATEGORIES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[FEATURED_CATEGORIES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [CATEGORY_ID] int NOT NULL,
        [FEATURED_POSITION] int NOT NULL,
        [START_DATE] datetime2(7) NOT NULL,
        [END_DATE] datetime2(7) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_FEATURED_CATEGORIES] PRIMARY KEY ([ID])
    );
END;