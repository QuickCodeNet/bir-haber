IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.TAGS', N'U') AND name = N'IX_TAGS_IsDeleted')
BEGIN
    CREATE INDEX [IX_TAGS_IsDeleted] ON [dbo].[TAGS] ([IsDeleted]);
END