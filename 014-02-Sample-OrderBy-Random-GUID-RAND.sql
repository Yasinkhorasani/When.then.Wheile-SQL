USE FirmaUebung;
GO

SELECT Nachname, Vorname
FROM Personal;

SELECT NEWID() AS 'Sample Unique Value Typ uniqueidentifier';
-- Globally Unique Identifier
-- https://de.wikipedia.org/wiki/Globally_Unique_Identifier
-- Ein Globally Unique Identifier (GUID [gu:id]) ist eine Zahl mit 128 Bit (16 Bytes), 
-- die in verteilten Computersystemen zum Einsatz kommt. 
-- GUID stellt eine Implementierung des Universally-Unique-Identifier-Standards (UUID) dar.
-- GUIDs werden üblicherweise im 8-4-4-4-12 Format 
-- XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX dargestellt, 
-- wobei jedes X für ein Zeichen aus dem Hexadezimalsystem steht 
-- und damit eine Ziffer 0–9 oder ein Buchstabe A–F sein kann, 
-- z. B. 936DA01F-9ABD-4D9D-80C7-02AF85C822A8 
-- (32 Buchstaben/Ziffern, mit Bindestrichen 36 Zeichen).

-- NEWID() Erstellt einen eindeutigen Wert vom Typ uniqueidentifier
-- https://docs.microsoft.com/de-de/sql/t-sql/functions/newid-transact-sql?view=sql-server-ver15


SELECT NEWID() AS 'RandomUnique', Nachname, Vorname 
FROM Personal
ORDER BY 'RandomUnique';

SELECT Nachname, Vorname, NEWID() AS 'RandomUnique'
FROM Personal
ORDER BY 'RandomUnique';

SELECT TOP 1 
		Nachname, Vorname, NEWID() AS 'RandomUnique'
FROM Personal
ORDER BY 'RandomUnique';

----- RAND() ---
SELECT RAND() AS 'Zufallzahl' --Zufallzahl zwischen 0 (inklusiv) und 1 (0,9999999)
-- >= 0 und <1

PRINT GETDATE();
SELECT GETDATE();
PRINT DATEPART(YEAR, GETDATE());
PRINT DATEPART(MONTH, GETDATE());
PRINT DATEPART(MILLISECOND, GETDATE());
PRINT RAND(DATEPART(MILLISECOND, GETDATE()));

PRINT RAND(1);
PRINT RAND(10);
PRINT RAND(100);
PRINT RAND(1000);
PRINT RAND(10000);
PRINT RAND(100000);
PRINT RAND(200000);
PRINT RAND(300000);
PRINT RAND(400000);
PRINT RAND(500000);
PRINT RAND(600000);
PRINT RAND(1000000);
PRINT RAND(10000000);
PRINT RAND(100000000);
PRINT RAND(1000000000);

DECLARE @SeedForRandom AS int;
SET @SeedForRandom = RAND()*1000000000;
PRINT @SeedForRandom;
PRINT RAND(@SeedForRandom);

