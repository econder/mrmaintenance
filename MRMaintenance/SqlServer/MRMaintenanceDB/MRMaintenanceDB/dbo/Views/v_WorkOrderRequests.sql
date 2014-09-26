CREATE VIEW dbo.v_WorkOrderRequests
AS
SELECT     dbo.WorkOrderRequests.reqId, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, dbo.WorkOrderRequests.equipId, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.WorkOrderRequests.intId, 
                      dbo.TimeIntervals.intName, dbo.TimeIntervals.intAbbr, dbo.WorkOrderRequests.lastCompleted, dbo.WorkOrderRequests.enabled, dbo.Equipment.equipName, 
                      dbo.Locations.facId, dbo.Facilities.name AS facName, dbo.Locations.name AS locName, dbo.WorkOrderRequests.deptId, dbo.Departments.name AS deptName, 
                      dbo.WorkOrderRequests.priorityId, dbo.Priorities.priorityName, rt.runtime, cyc.cycles, 
                      CASE WHEN dbo.TimeIntervals.intAbbr = '1x' THEN lastCompleted WHEN dbo.TimeIntervals.intAbbr = 'cyc' THEN NULL 
                      WHEN dbo.TimeIntervals.intAbbr = 'rt' THEN NULL WHEN dbo.TimeIntervals.intAbbr = 'n' THEN DATEADD(MINUTE, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'h' THEN DATEADD(HOUR, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'd' THEN DATEADD(DAY, timeFreq, 
                      lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'ww' THEN DATEADD(WEEK, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'm' THEN DATEADD(MONTH, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'q' THEN DATEADD(QUARTER, timeFreq, 
                      lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'yyyy' THEN DATEADD(YEAR, timeFreq, lastcompleted) 
                      WHEN dbo.TimeIntervals.intAbbr = 'w' THEN DATEADD(WEEKDAY, timeFreq, lastcompleted) WHEN dbo.TimeIntervals.intAbbr = 'y' THEN DATEADD(DAYOFYEAR, 
                      timeFreq, lastcompleted) END AS nextDue, wo.woCount
FROM         dbo.Facilities INNER JOIN
                      dbo.Locations ON dbo.Facilities.facId = dbo.Locations.facId INNER JOIN
                      dbo.TimeIntervals INNER JOIN
                      dbo.WorkOrderRequests ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId INNER JOIN
                      dbo.Equipment ON dbo.WorkOrderRequests.equipId = dbo.Equipment.equipId ON dbo.Locations.locId = dbo.Equipment.locId INNER JOIN
                      dbo.Priorities ON dbo.WorkOrderRequests.priorityId = dbo.Priorities.priorityId INNER JOIN
                      dbo.Departments ON dbo.WorkOrderRequests.deptId = dbo.Departments.deptId LEFT OUTER JOIN
                          (SELECT     reqId, COUNT(*) AS woCount
                            FROM          dbo.WorkOrders
                            WHERE      (woComplete = 0)
                            GROUP BY reqId) AS wo ON dbo.WorkOrderRequests.reqId = wo.reqId LEFT OUTER JOIN
                          (SELECT     equipId, SUM(runtime) AS runtime
                            FROM          dbo.Runtimes
                            GROUP BY equipId) AS rt ON dbo.Equipment.equipId = rt.equipId LEFT OUTER JOIN
                          (SELECT     equipId, SUM(cycles) AS cycles
                            FROM          dbo.Cycles
                            GROUP BY equipId) AS cyc ON dbo.Equipment.equipId = cyc.equipId
GROUP BY dbo.WorkOrderRequests.reqId, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, dbo.WorkOrderRequests.equipId, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.TimeIntervals.intName, 
                      dbo.WorkOrderRequests.lastCompleted, dbo.WorkOrderRequests.enabled, dbo.Equipment.equipName, dbo.Facilities.name, dbo.Locations.name, rt.runtime, 
                      cyc.cycles, dbo.TimeIntervals.intAbbr, wo.woCount, dbo.Priorities.priorityName, dbo.WorkOrderRequests.priorityId, dbo.Departments.name, 
                      dbo.WorkOrderRequests.deptId, dbo.WorkOrderRequests.intId, dbo.Locations.facId

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[8] 4[3] 2[34] 3) )"
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
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 215
               Left = 716
               Bottom = 306
               Right = 867
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 172
               Left = 512
               Bottom = 370
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TimeIntervals"
            Begin Extent = 
               Top = 386
               Left = 330
               Bottom = 494
               Right = 481
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 14
               Left = 14
               Bottom = 268
               Right = 181
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 116
               Left = 262
               Bottom = 285
               Right = 441
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Priorities"
            Begin Extent = 
               Top = 507
               Left = 326
               Bottom = 585
               Right = 493
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Departments"
            Begin Extent = 
               Top = 297
               Left = 322
               Bottom = 375
               Right = 489
            End', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_WorkOrderRequests';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "wo"
            Begin Extent = 
               Top = 12
               Left = 297
               Bottom = 90
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 2
               Left = 731
               Bottom = 80
               Right = 882
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cyc"
            Begin Extent = 
               Top = 47
               Left = 927
               Bottom = 125
               Right = 1078
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
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
         Column = 2145
         Alias = 960
         Table = 1695
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_WorkOrderRequests';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_WorkOrderRequests';

