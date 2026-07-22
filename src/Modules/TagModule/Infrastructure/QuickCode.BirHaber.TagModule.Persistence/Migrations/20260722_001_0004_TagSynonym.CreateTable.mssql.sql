IF OBJECT_ID(N'dbo.TAG_SYNONYMS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[TAG_SYNONYMS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [PRIMARY_TAG_ID] int NOT NULL,
        [SYNONYM_TAG_ID] int NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_TAG_SYNONYMS] PRIMARY KEY ([ID])
    );
END;