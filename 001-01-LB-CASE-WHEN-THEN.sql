USE FirmaUebung;
GO

SELECT [Abteilung],
       [Projektabteilung]
FROM Abteilung
ORDER BY [Abteilung];

-- Sample - Textspalte oder Formel --
SELECT [Abteilung],
       [Projektabteilung],
	   'ABC' AS 'Textbeispiel',
	   (1 + 2) AS 'Summe',
	   CURRENT_TIMESTAMP AS 'Jetzt'
FROM Abteilung
ORDER BY [Abteilung];

SELECT [Abteilung],
       [Projektabteilung],
	   CASE
			WHEN ([Projektabteilung] = 0) THEN 'Nein'
			WHEN ([Projektabteilung] = 1) THEN 'Ja'	
	   END
	   AS  'Ist Projektabteilung',
	   [Kommentar]
FROM [Abteilung]
ORDER BY [Abteilung];


SELECT [Abteilung],
       [Projektabteilung],
	   CASE
			WHEN ([Projektabteilung] = 0) THEN 'Nein'
			ELSE 'Ja'	
	   END AS 'Ist Projektabteilung',
	   [Kommentar]
FROM [Abteilung]
ORDER BY [Abteilung];

SELECT [PositionID]
      ,[Position]
	  ,CASE
			WHEN ([Position] = 'Mitarbeiter') THEN 'MA'
			WHEN ([Position] = 'Geschaeftsleiter') THEN 'GL'
			WHEN ([Position] = 'Abteilungsleiter') THEN 'AL'	
			ELSE 'abc'
	   END
	   AS  'Test'
  FROM [FirmaUebung].[dbo].[Position]
  ORDER BY [PositionID];
 
 -- ohne ELSE: Stellvertr. Geschaeftsleiterin und Gruppenleiter - NULL
SELECT [PositionID]
      ,[Position]
	  ,CASE
			WHEN ([Position] = 'Mitarbeiter') THEN 'MA'
			WHEN ([Position] = 'Geschaeftsleiter') THEN 'GL'
			WHEN ([Position] = 'Abteilungsleiter') THEN 'AL'	
			--ELSE 'abc'
	   END
	   AS  'Test'
  FROM [FirmaUebung].[dbo].[Position]
  ORDER BY [PositionID];

  SELECT [PositionID]
      ,[Position]
	  ,CASE
			WHEN ([Position] = 'Mitarbeiter') THEN 'Position ist: ' + [Position]
			WHEN ([Position] = 'Geschaeftsleiter') THEN 'GL'
			WHEN ([Position] = 'Abteilungsleiter') THEN 'AL'	
			ELSE [Position]
	   END
	   AS  'Position1'
  FROM [FirmaUebung].[dbo].[Position]
  ORDER BY Position;