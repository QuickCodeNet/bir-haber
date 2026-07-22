IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.CITIES', N'U') AND name = N'IX_CITIES_IsDeleted')
BEGIN
    CREATE INDEX [IX_CITIES_IsDeleted] ON [dbo].[CITIES] ([IsDeleted]);
END