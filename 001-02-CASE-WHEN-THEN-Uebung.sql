USE FirmaUebung;
GO

SELECT  [KundenID],
		[Nachname],
		[Vorname],
		[GebDat]--,		
	/*
	TODO: 
	'jung' - wenn geboren ab 1980,
	'mittelalt' - zwischen 1950 und 1979,
	bis 1949 - 'alt',
	wenn NULL - 'unbekannt'
	AS 'Altersgruppe'	
	*/
FROM [FirmaUebung].[dbo].[Kunden];

SELECT  [KundenID],
		[Nachname],
		[Vorname],
		[GebDat],		
	CASE
			WHEN (GebDat >= '1980') THEN 'Jung'
			WHEN (GebDat BETWEEN '01.01.1950' AND  '01.01.1979') THEN 'mittelalt'	
			WHEN (GebDat <= '1949' ) THEN 'Alt'
			Else 'unbekannt'
	   END
	   AS  'Alter'

FROM [FirmaUebung].[dbo].[Kunden];