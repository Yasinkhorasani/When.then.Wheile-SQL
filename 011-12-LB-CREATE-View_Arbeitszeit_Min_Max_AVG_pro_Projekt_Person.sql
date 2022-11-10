USE [FirmaUebung]
GO

/****** Object:  View [dbo].[View_Arbeitszeit_Min_Max_Avg_pro_Projekt_Person]    Script Date: 04.11.2021 09:48:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_Arbeitszeit_Min_Max_Avg_pro_Projekt_Person]
AS
SELECT   TOP (100) PERCENT 
		dbo.Kunden.Nachname AS KuNN, dbo.Kunden.Vorname AS KuVN, 
		dbo.Projekt.Projekt, 
		dbo.Personal.Nachname AS MaNN, dbo.Personal.Vorname AS MaVN,
		dbo.Abteilung.Abteilung, 
		dbo.Beruf.Beruf, 
        dbo.Position.Position,  
		COUNT(dbo.Arbeitszeit.Datum) AS AnzTage,
        SUM(dbo.Arbeitszeit.Zeit) AS SumZeit, 
		MIN(dbo.Arbeitszeit.Zeit) AS MinZeitProTag, 
		MAX(dbo.Arbeitszeit.Zeit) AS MaxZeitProTag, 
		AVG(dbo.Arbeitszeit.Zeit) AS AvgZeitProTag
FROM dbo.Arbeitszeit 
		INNER JOIN dbo.Projektzuordnung 
			ON dbo.Arbeitszeit.ProjektzuordnungID = dbo.Projektzuordnung.ID 
		INNER JOIN dbo.Projekt 
			ON dbo.Projektzuordnung.ProjektID = dbo.Projekt.ProjektID 
		INNER JOIN dbo.Kunden 
			ON dbo.Projekt.KundenID = dbo.Kunden.KundenID 
		INNER JOIN dbo.Personal 
			ON dbo.Projektzuordnung.PersonalID = dbo.Personal.PersonalID 
		INNER JOIN dbo.Beruf 
			ON dbo.Personal.BerufID = dbo.Beruf.BerufID
		INNER JOIN dbo.Position 
			ON dbo.Personal.PositionID = dbo.Position.PositionID 
		INNER JOIN dbo.Abteilung 
			ON dbo.Personal.AbteilungsID = dbo.Abteilung.AbteilungsID

GROUP BY dbo.Kunden.Nachname, dbo.Kunden.Vorname, 
		 dbo.Projekt.Projekt, 
		 dbo.Personal.Nachname, dbo.Personal.Vorname, 
		 dbo.Abteilung.Abteilung, 
		 dbo.Beruf.Beruf, 
		 dbo.Position.Position
ORDER BY KuNN, dbo.Projekt.Projekt, MaNN, MaVN;
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[28] 4[40] 2[14] 3) )"
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
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
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
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Arbeitszeit"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 181
               Right = 233
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Projektzuordnung"
            Begin Extent = 
               Top = 15
               Left = 292
               Bottom = 175
               Right = 459
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Position"
            Begin Extent = 
               Top = 327
               Left = 1248
               Bottom = 440
               Right = 1415
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Projekt"
            Begin Extent = 
               Top = 10
               Left = 902
               Bottom = 140
               Right = 1070
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 4
               Left = 1195
               Bottom = 134
               Right = 1362
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Personal"
            Begin Extent = 
               Top = 119
               Left = 512
               Bottom = 435
               Right = 679
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Beruf"
            Begin Extent = 
               Top = 257
               Left = 1044
               Bottom = 370
               Right = 1211
            End
            ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Arbeitszeit_Min_Max_Avg_pro_Projekt_Person'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Abteilung"
            Begin Extent = 
               Top = 164
               Left = 794
               Bottom = 294
               Right = 970
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 2970
         Width = 1500
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
      Begin ColumnWidths = 12
         Column = 5295
         Alias = 1710
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 4485
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Arbeitszeit_Min_Max_Avg_pro_Projekt_Person'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Arbeitszeit_Min_Max_Avg_pro_Projekt_Person'
GO


