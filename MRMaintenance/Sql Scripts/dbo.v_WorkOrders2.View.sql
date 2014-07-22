USE [MRMaintenance]
GO
/****** Object:  View [dbo].[v_WorkOrders2]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrders2]
AS
SELECT     wo.woSchedId, wo.name, wo.descr, wo.startDate, wo.timeFreq, wo.timeInterval, wo.lastcompleted, wo.nextDue, dbo.Departments.name AS department, 
                      dbo.Equipment.equipName, dbo.Locations.name AS location, rt.runtime, cyc.cycles
FROM         (SELECT     equipId, SUM(cycles) AS cycles
                       FROM          dbo.Cycles
                       GROUP BY equipId) AS cyc RIGHT OUTER JOIN
                      dbo.v_WorkOrders AS wo INNER JOIN
                      dbo.Departments ON wo.deptId = dbo.Departments.deptId INNER JOIN
                      dbo.Locations INNER JOIN
                      dbo.Equipment ON dbo.Locations.locId = dbo.Equipment.locId INNER JOIN
                      dbo.Facilities ON dbo.Locations.facId = dbo.Facilities.facId ON wo.equipId = dbo.Equipment.equipId LEFT OUTER JOIN
                          (SELECT     equipId, SUM(runtime) AS runtime
                            FROM          dbo.Runtimes
                            GROUP BY equipId) AS rt ON wo.equipId = rt.equipId ON cyc.equipId = wo.equipId

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[31] 4[29] 2[20] 3) )"
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
         Begin Table = "cyc"
            Begin Extent = 
               Top = 150
               Left = 254
               Bottom = 228
               Right = 405
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "wo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "Departments"
            Begin Extent = 
               Top = 6
               Left = 416
               Bottom = 84
               Right = 567
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 37
               Left = 792
               Bottom = 145
               Right = 943
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 6
               Left = 605
               Bottom = 189
               Right = 762
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 145
               Left = 983
               Bottom = 253
               Right = 1134
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 6
               Left = 227
               Bottom = 84
               Right = 378
            End
            DisplayFlags = 280
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1995
         Width = 960
         Width = 765
         Width = 1500
         Width = 1995
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2'
GO
