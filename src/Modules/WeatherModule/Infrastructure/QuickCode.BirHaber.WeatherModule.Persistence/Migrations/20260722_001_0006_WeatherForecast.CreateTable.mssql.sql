IF OBJECT_ID(N'dbo.WEATHER_FORECASTS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[WEATHER_FORECASTS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [CITY_ID] int NOT NULL,
        [FORECAST_DATE] datetime2(7) NOT NULL,
        [MIN_TEMPERATURE] decimal(18,8) NOT NULL,
        [MAX_TEMPERATURE] decimal(18,8) NOT NULL,
        [CONDITION] nvarchar(50) NOT NULL,
        [PRECIPITATION_PROBABILITY] tinyint NOT NULL,
        [WIND_SPEED] decimal(18,8) NOT NULL,
        [HUMIDITY] tinyint NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_WEATHER_FORECASTS] PRIMARY KEY ([ID])
    );
END;