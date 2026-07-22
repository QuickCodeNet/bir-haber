IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.ARTICLES', N'U') AND name = N'IX_ARTICLES_IsDeleted')
BEGIN
    CREATE INDEX [IX_ARTICLES_IsDeleted] ON [dbo].[ARTICLES] ([IsDeleted]);
END