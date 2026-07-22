IF OBJECT_ID(N'dbo.READERS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[READERS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [NAME] nvarchar(250) NOT NULL,
        [EMAIL] nvarchar(500) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_READERS] PRIMARY KEY ([ID])
    );
END;