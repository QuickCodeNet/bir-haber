IF OBJECT_ID(N'dbo.CONTENT_REVISIONS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[CONTENT_REVISIONS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [ARTICLE_ID] int NOT NULL,
        [REVISION_NUMBER] int NOT NULL,
        [TITLE] nvarchar(250) NOT NULL,
        [CONTENT] nvarchar(max) NOT NULL,
        [CHANGED_BY_ID] int NOT NULL,
        [CHANGE_REASON] nvarchar(1000) NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_CONTENT_REVISIONS] PRIMARY KEY ([ID])
    );
END;