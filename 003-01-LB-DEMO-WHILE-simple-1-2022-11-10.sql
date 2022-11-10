DECLARE @i tinyint; -- Zähler
SET @i = 0;
PRINT ' -------------- Schleife - Anfang --------------';
WHILE (@i < 3)
BEGIN ---Schleife - Anfang
	SET @i = @i + 1;
	-- Version 1 - nur Ausgabe
	PRINT @i;
END -- Schleife - Ende
PRINT ' -------------- Schleife - Ende --------------';