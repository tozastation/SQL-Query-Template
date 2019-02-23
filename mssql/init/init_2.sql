CREATE TABLE Sample.dbo.Artist
(
    ArtistId INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    ArtistName NVARCHAR(255) NOT NULL,
);

GO

CREATE TABLE Sample.dbo.Album
(
    AlbumId INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    AlbumName NVARCHAR(255) NOT NULL,
    ReleaseDate DATE NOT NULL,
    ArtistId INT NOT NULL,
    GenreId INT NOT NULL
    -- 非依存型リレーションをNO ACTIONを宣言できる
    CONSTRAINT FK_Album_Artist FOREIGN KEY (ArtistId)     
        REFERENCES Sample.dbo.Artist (ArtistId)     
        ON DELETE NO ACTION    
        ON UPDATE NO ACTION    
);

GO

CREATE TABLE Sample.dbo.Genre
(
    GenreId INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    GenreName NVARCHAR(255) NOT NULL,
);

GO

SET IDENTITY_INSERT Sample.dbo.Artist ON
INSERT INTO Sample.dbo.Artist (ArtistId, ArtistName) VALUES (
    1,
    'IZ-ONE'
);
SET IDENTITY_INSERT Sample.dbo.Artist OFF
GO

SET IDENTITY_INSERT Sample.dbo.Genre ON
INSERT INTO Sample.dbo.Genre (GenreId, GenreName) VALUES (
    1,
    'K-POP'
);
SET IDENTITY_INSERT Sample.dbo.Genre OFF
GO

SET IDENTITY_INSERT Sample.dbo.Album ON
INSERT INTO Sample.dbo.Album (AlbumId, AlbumName, ReleaseDate, ArtistId, GenreId)  VALUES (
    1,
    '好きと言わせたい',
    '2019-02-01',
    1,
    1
);
SET IDENTITY_INSERT Sample.dbo.Album OFF