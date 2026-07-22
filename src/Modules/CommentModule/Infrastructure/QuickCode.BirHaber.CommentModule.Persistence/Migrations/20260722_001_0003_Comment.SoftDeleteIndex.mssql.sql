IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.COMMENTS', N'U') AND name = N'IX_COMMENTS_IsDeleted')
BEGIN
    CREATE INDEX [IX_COMMENTS_IsDeleted] ON [dbo].[COMMENTS] ([IsDeleted]);
END