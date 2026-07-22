IF NOT EXISTS (SELECT 1 FROM sys.indexes WHERE object_id = OBJECT_ID(N'dbo.EDITORS', N'U') AND name = N'IX_EDITORS_IsDeleted')
BEGIN
    CREATE INDEX [IX_EDITORS_IsDeleted] ON [dbo].[EDITORS] ([IsDeleted]);
END