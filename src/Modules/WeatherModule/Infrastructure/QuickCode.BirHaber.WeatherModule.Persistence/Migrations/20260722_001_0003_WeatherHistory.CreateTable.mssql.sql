IF OBJECT_ID(N'dbo.WEATHER_HISTORIES', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[WEATHER_HISTORIES] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [CITY_ID] int NOT NULL,
        [TEMPERATURE] decimal(18,8) NOT NULL,
        [CONDITION] nvarchar(50) NOT NULL,
        [HUMIDITY] tinyint NOT NULL,
        [WIND_SPEED] decimal(18,8) NOT NULL,
        [RECORDED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_WEATHER_HISTORIES] PRIMARY KEY ([ID])
    );
END;