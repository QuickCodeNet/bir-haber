IF OBJECT_ID(N'dbo.WEATHER_ALERTS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[WEATHER_ALERTS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [CITY_ID] int NOT NULL,
        [ALERT_TYPE] nvarchar(50) NOT NULL,
        [SEVERITY] nvarchar(50) NOT NULL,
        [DESCRIPTION] nvarchar(1000) NOT NULL,
        [START_TIME] datetime2(7) NOT NULL,
        [END_TIME] datetime2(7) NOT NULL,
        [IS_ACTIVE] bit NOT NULL DEFAULT 1,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_WEATHER_ALERTS] PRIMARY KEY ([ID])
    );
END;