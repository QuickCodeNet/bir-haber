IF OBJECT_ID(N'dbo.AUTHORS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[AUTHORS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [NAME] nvarchar(250) NOT NULL,
        [EMAIL] nvarchar(500) NOT NULL,
        [BIO] nvarchar(1000) NOT NULL,
        [PROFILE_IMAGE_URL] nvarchar(500) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_AUTHORS] PRIMARY KEY ([ID])
    );
END;