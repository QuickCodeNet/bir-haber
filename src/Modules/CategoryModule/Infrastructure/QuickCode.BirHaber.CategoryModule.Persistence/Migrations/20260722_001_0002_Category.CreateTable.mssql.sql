IF OBJECT_ID(N'dbo.CATEGORIES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[CATEGORIES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [NAME] nvarchar(50) NOT NULL,
        [SLUG] nvarchar(50) NOT NULL,
        [DESCRIPTION] nvarchar(1000) NOT NULL,
        [PARENT_CATEGORY_ID] int NOT NULL,
        [ICON_URL] nvarchar(1000) NOT NULL,
        [DISPLAY_ORDER] int NOT NULL DEFAULT '0',
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'ACTIVE',
        [ARTICLE_COUNT] int NOT NULL DEFAULT '0',
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_CATEGORIES] PRIMARY KEY ([ID])
    );
END;