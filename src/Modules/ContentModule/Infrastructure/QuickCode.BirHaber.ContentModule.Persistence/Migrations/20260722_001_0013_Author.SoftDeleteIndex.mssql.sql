IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.AUTHORS', N'U') AND name = N'IX_AUTHORS_IsDeleted')
BEGIN
    CREATE INDEX [IX_AUTHORS_IsDeleted] ON [dbo].[AUTHORS] ([IsDeleted]);
END