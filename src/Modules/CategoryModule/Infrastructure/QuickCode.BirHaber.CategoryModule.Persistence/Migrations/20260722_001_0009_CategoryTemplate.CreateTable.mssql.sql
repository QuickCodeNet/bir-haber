IF OBJECT_ID(N'dbo.CATEGORY_TEMPLATES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[CATEGORY_TEMPLATES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [CATEGORY_ID] int NOT NULL,
        [TEMPLATE_NAME] nvarchar(50) NOT NULL,
        [TEMPLATE_CONFIG] nvarchar(max) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_CATEGORY_TEMPLATES] PRIMARY KEY ([ID])
    );
END;