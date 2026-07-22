IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.READERS', N'U') AND name = N'IX_READERS_IsDeleted')
BEGIN
    CREATE INDEX [IX_READERS_IsDeleted] ON [dbo].[READERS] ([IsDeleted]);
END