USE FirmaUebung;
GO

-- Übung Alter -----
SELECT Current_Timestamp AS 'Current_Timestamp',
GETDATE() AS 'Getdate';

SELECT DATEDIFF(YEAR, '01.01.2000', Current_Timestamp) AS 'Differenz - Jahr';
SELECT DATEDIFF(YEAR, '31.12.2000', Current_Timestamp) AS 'Differenz - Jahr';
SELECT DATEDIFF(MONTH, '01.01.2000', Current_Timestamp) AS 'Differenz - Monat';
SELECT DATEDIFF(DAY, '01.01.2000', Current_Timestamp) AS 'Differenz - Tag';

SELECT [KundenID]
      ,[Nachname]
      ,[Vorname]
      ,[GebDat]
	  ,YEAR([GebDat]) AS 'Geburtsjahr'
	  ,MONTH([GebDat]) AS 'Geburthmonth'
	  ,DAY([GebDat]) AS 'GebsTag'

	  -- TODO: Monat, Tag, Alter
FROM [FirmaUebung].[dbo].[Kunden]
ORDER BY [GebDat];

SELECT DATEDIFF(YEAR, '01.03.1980', Current_Timestamp) AS 'Differenz - Jahr Ron Weasley';
SELECT DATEDIFF(YEAR, '01.07.1980', Current_Timestamp) AS 'Differenz - Jahr Harry Potter';
SELECT DATEDIFF(YEAR, '31.12.1980', Current_Timestamp) AS 'Differenz - Jahr 31.12.1980';
SELECT DATEDIFF(YEAR, '1932-12-22', Current_Timestamp) AS 'Differenz - Jahr 1932-12-22';

-- CASE -- https://docs.microsoft.com/de-de/sql/mdx/case-statement-mdx?view=sql-server-ver15
-- CAST
-- CONVERT
-- DATEDIFF