IF OBJECT_ID(N'dbo.ARTICLES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[ARTICLES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [TITLE] nvarchar(250) NOT NULL,
        [SLUG] nvarchar(50) NOT NULL,
        [DESCRIPTION] nvarchar(1000) NOT NULL,
        [CONTENT] nvarchar(max) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_ARTICLES] PRIMARY KEY ([ID])
    );
END;