IF OBJECT_ID(N'dbo.TAG_STATISTICS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[TAG_STATISTICS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [TAG_ID] int NOT NULL,
        [DAILY_ARTICLES] int NOT NULL DEFAULT '0',
        [DAILY_VIEWS] int NOT NULL DEFAULT '0',
        [DAILY_SEARCHES] int NOT NULL DEFAULT '0',
        [STATISTICS_DATE] datetime2(7) NOT NULL,
        [TOTAL_SEARCHES] nvarchar(50) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_TAG_STATISTICS] PRIMARY KEY ([ID])
    );
END;