IF OBJECT_ID(N'dbo.WEATHER_DATAS', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[WEATHER_DATAS] (
        [ID] int IDENTITY(1,1) NOT NULL,
        [CITY_ID] int NOT NULL,
        [TEMPERATURE] decimal(18,8) NOT NULL,
        [FEELS_LIKE] decimal(18,8) NOT NULL,
        [HUMIDITY] tinyint NOT NULL,
        [PRESSURE] int NOT NULL,
        [WIND_SPEED] decimal(18,8) NOT NULL,
        [WIND_DIRECTION] nvarchar(50) NOT NULL,
        [CONDITION] nvarchar(50) NOT NULL,
        [VISIBILITY] int NOT NULL,
        [UV_INDEX] tinyint NOT NULL,
        [PRECIPITATION] decimal(18,8) NOT NULL,
        [CLOUD_COVERAGE] tinyint NOT NULL,
        [LAST_UPDATED] datetime2(7) NOT NULL,
        [CREATED_DATE] datetime2(7) NOT NULL,
        [IsDeleted] bit NOT NULL DEFAULT 0,
        [DeletedOnUtc] datetime2(7) NULL,
        CONSTRAINT [PK_WEATHER_DATAS] PRIMARY KEY ([ID])
    );
END;