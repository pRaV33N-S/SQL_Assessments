IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Movies] (
    [ID] int NOT NULL IDENTITY,
    [Title] nvarchar(max) NOT NULL,
    [Director] nvarchar(max) NOT NULL,
    [ReleaseDate] datetime2 NOT NULL,
    [Genre] nvarchar(max) NOT NULL,
    [Rating] float NOT NULL,
    CONSTRAINT [PK_Movies] PRIMARY KEY ([ID])
);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20230904090608_MoviesMig', N'7.0.10');
GO

COMMIT;
GO

