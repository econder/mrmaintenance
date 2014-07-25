USE [MRMaintenance]
GO
/****** Object:  View [dbo].[v_WorkOrders2]    Script Date: 7/24/2014 11:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrders2]
AS
SELECT     wo.woSchedId AS ID, wo.name, wo.descr AS Description, wo.startDate AS [Start Date], wo.timeFreq AS Frequency, wo.intName AS Interval, 
                      wo.lastcompleted AS [Last Completed], wo.nextDue AS [Next Due], dbo.Departments.name AS Department, dbo.Equipment.equipName AS Equipment, 
                      dbo.Locations.name AS Location, dbo.Locations.facId AS [Facility ID], rt.runtime, cyc.cycles
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
ALTER AUTHORIZATION ON [dbo].[v_WorkOrders2] TO  SCHEMA OWNER 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[22] 4[46] 2[13] 3) )"
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
               Top = 170
               Left = 247
               Bottom = 248
               Right = 398
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
               Top = 93
               Left = 427
               Bottom = 171
               Right = 578
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 46
               Left = 805
               Bottom = 154
               Right = 956
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
               Top = 135
               Left = 1054
               Bottom = 243
               Right = 1205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 0
               Left = 219
               Bottom = 78
               Right = 370
            End
            DisplayFlags = 280
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         TopColumn = 0
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
         Alias = 1455
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
