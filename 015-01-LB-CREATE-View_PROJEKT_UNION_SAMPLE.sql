USE [FirmaUebung]
GO

/****** Object:  View [dbo].[View_PROJEKT_UNION_SAMPLE]    Script Date: 10.11.2022 11:01:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_PROJEKT_UNION_SAMPLE]
AS
SELECT TOP 100 PERCENT dbo.Kunden.Nachname, dbo.Kunden.Vorname, 
	   COUNT(dbo.Projekt.Projekt) AS Anzahl, 
	   'Nicht abgeschlossen' AS Status
FROM dbo.Kunden 
	INNER JOIN dbo.Projekt 
		ON dbo.Kunden.KundenID = dbo.Projekt.KundenID
WHERE (dbo.Projekt.Abgeschlossen = 0)
GROUP BY dbo.Kunden.Nachname, dbo.Kunden.Vorname

UNION

SELECT  TOP 100 PERCENT dbo.Kunden.Nachname, dbo.Kunden.Vorname, 
	   COUNT(dbo.Projekt.Projekt) AS Anzahl, 
	   'Abgeschlossen' AS Status
FROM dbo.Kunden 
	INNER JOIN dbo.Projekt 
		ON dbo.Kunden.KundenID = dbo.Projekt.KundenID
WHERE (dbo.Projekt.Abgeschlossen = 1)
GROUP BY dbo.Kunden.Nachname, dbo.Kunden.Vorname
-- ORDER BY gilt für die gesamte Ausgabe
ORDER BY dbo.Kunden.Nachname, dbo.Kunden.Vorname;
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[26] 2[34] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2[66] 3) )"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 5
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      PaneHidden = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_PROJEKT_UNION_SAMPLE'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_PROJEKT_UNION_SAMPLE'
GO


