IF OBJECT_ID(N'dbo.TAGS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[TAGS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [NAME] nvarchar(50) NOT NULL,
        [SLUG] nvarchar(50) NOT NULL,
        [DESCRIPTION] nvarchar(1000) NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'ACTIVE',
        [USAGE_COUNT] int NOT NULL DEFAULT '0',
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_TAGS] PRIMARY KEY ([ID])
    );
END;