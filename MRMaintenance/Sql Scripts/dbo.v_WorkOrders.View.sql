USE [MRMaintenance]
GO
/****** Object:  View [dbo].[v_WorkOrders]    Script Date: 7/22/2014 12:00:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrders]
AS
SELECT     woSchedId, name, descr, equipId, deptId, startDate, timeFreq, timeInterval, lastcompleted, CASE WHEN timeInterval = '1' THEN NULL 
                      WHEN timeInterval = 'cyc' THEN NULL WHEN timeInterval = 'rt' THEN NULL WHEN timeInterval = 'n' THEN DATEADD(MINUTE, timeFreq, lastcompleted) 
                      WHEN timeInterval = 'h' THEN DATEADD(HOUR, timeFreq, lastcompleted) WHEN timeInterval = 'd' THEN DATEADD(DAY, timeFreq, lastcompleted) 
                      WHEN timeInterval = 'ww' THEN DATEADD(WEEK, timeFreq, lastcompleted) WHEN timeInterval = 'm' THEN DATEADD(MONTH, timeFreq, lastcompleted) 
                      WHEN timeInterval = 'q' THEN DATEADD(QUARTER, timeFreq, lastcompleted) WHEN timeInterval = 'yyyy' THEN DATEADD(YEAR, timeFreq, lastcompleted) 
                      WHEN timeInterval = 'w' THEN DATEADD(WEEKDAY, timeFreq, lastcompleted) WHEN timeInterval = 'y' THEN DATEADD(DAYOFYEAR, timeFreq, lastcompleted) 
                      END AS nextDue
FROM         dbo.WOSchedules

GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[2] 2[38] 3) )"
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
         Begin Table = "WOSchedules"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 217
               Right = 189
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrders'
GO
