CREATE TABLE Bands (
    BandID INTEGER PRIMARY KEY,
    BandName TEXT NOT NULL
);

CREATE TABLE Albums (
    AlbumID INTEGER PRIMARY KEY,
    BandID INTEGER NOT NULL,
    AlbumName TEXT NOT NULL,
    FOREIGN KEY(BandID) REFERENCES Bands(BandID)
);

CREATE TABLE People (
    PersonID INTEGER PRIMARY KEY,
    PersonName TEXT NOT NULL
);


CREATE TABLE CDCollections (
    AlbumID INTEGER NOT NULL,
    PersonID INTEGER NOT NULL,
    FOREIGN KEY(AlbumID) REFERENCES Albums(AlbumID)
    FOREIGN KEY(PersonID) REFERENCES People(PersonID)
);

INSERT INTO Bands (BandID, BandName) 
VALUES
    (1, 'A Flock of Seagulls'),
    (2, 'Cradle of Filth'),
    (3, 'Daft Punk'),
    (4, 'The Cure'),
    (5, 'The Stone Roses'),
    (6, 'The Clash'),
    (7, 'Kraftwerk'),
    (8, 'LCD Soundsystem'),
    (9, 'Portishead'),
    (10, 'Tricky');

INSERT INTO Albums (AlbumID, BandID, AlbumName) 
VALUES
    (1, 1, 'Listen'),
    (2, 2, 'Existence Is Futile'),
    (3, 3, 'Random Access Memories'),
    (4, 4, 'Seventeen Seconds'),
    (5, 5, 'Second Coming'),
    (6, 6, 'London Calling'),
    (7, 7, 'Computer World'),
    (8, 8, 'The Long Goodby'),
    (9, 9, 'Dummy'),
    (10, 10, 'Blowback'),
    (11, 4, 'Kiss Me, Kiss Me, Kiss Me'),
    (12, 2, 'Cruelty and the Beast'),
    (13, 1, 'A Flock of Seagulls'),
    (14, 3, 'Human After All'),
    (15, 10, 'Angels with Dirty Faces'),
    (16, 6, 'Combat Rock'),
    (17, 5, 'The Stone Roses'),
    (18, 9, 'Glory Times'),
    (19, 7, 'Autobahn'),
    (20, 8, 'LCD Soundsystem');


INSERT INTO People (PersonID, PersonName)
VALUES
(1, 'Jen'),
(2, 'Moss'),
(3, 'Roy'),
(4, 'Richard');

INSERT INTO CDCollections (PersonID, AlbumID)
VALUES
(1, 1),
(1, 4),
(2, 3),
(2, 6),
(2, 7),
(3, 5),
(3, 6),
(3, 4),
(4, 2);