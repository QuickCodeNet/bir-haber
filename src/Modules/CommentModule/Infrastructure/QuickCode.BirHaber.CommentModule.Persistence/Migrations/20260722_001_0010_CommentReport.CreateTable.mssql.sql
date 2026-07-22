IF OBJECT_ID(N'dbo.COMMENT_REPORTS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[COMMENT_REPORTS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [COMMENT_ID] int NOT NULL,
        [REPORTER_ID] int NOT NULL,
        [REPORT_REASON] nvarchar(50) NOT NULL,
        [REPORT_DESCRIPTION] nvarchar(1000) NOT NULL,
        [STATUS] nvarchar(50) NOT NULL DEFAULT 'PENDING',
        [MODERATOR_ID] int NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [RESOLVED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_COMMENT_REPORTS] PRIMARY KEY ([ID])
    );
END;