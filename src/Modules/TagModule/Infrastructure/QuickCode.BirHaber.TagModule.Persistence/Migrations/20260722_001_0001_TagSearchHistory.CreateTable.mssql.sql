IF OBJECT_ID(N'dbo.TAG_SEARCH_HISTORIES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[TAG_SEARCH_HISTORIES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [TAG_ID] int NOT NULL,
        [SEARCH_QUERY] nvarchar(250) NOT NULL,
        [SEARCH_COUNT] int NOT NULL DEFAULT '1',
        [LAST_SEARCHED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_TAG_SEARCH_HISTORIES] PRIMARY KEY ([ID])
    );
END;