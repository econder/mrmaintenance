CREATE VIEW dbo.v_WorkOrderTasks
AS
SELECT     TOP (100) PERCENT dbo.WorkOrderTasks.taskId AS woTaskId, dbo.WorkOrderTasks.taskStep, dbo.WorkOrderTasks.taskComplete, 
                      dbo.WorkOrderTasks.taskDateComplete, dbo.WorkOrderTasks.taskDuration, dbo.WorkOrderTasks.woTaskNotes, dbo.Tasks.taskName, dbo.Tasks.taskDescr, 
                      dbo.Tasks.taskEstDuration, dbo.Tasks.equipShutdownRequired, dbo.Parts.partName, dbo.Parts.partDescr, dbo.Parts.partNumber
FROM         dbo.Parts INNER JOIN
                      dbo.TaskParts ON dbo.Parts.partId = dbo.TaskParts.partId RIGHT OUTER JOIN
                      dbo.WorkOrderRequests INNER JOIN
                      dbo.Equipment ON dbo.WorkOrderRequests.equipId = dbo.Equipment.equipId INNER JOIN
                      dbo.WorkOrderTasks INNER JOIN
                      dbo.Tasks ON dbo.Tasks.taskId = dbo.WorkOrderTasks.taskId INNER JOIN
                      dbo.EquipmentModels ON dbo.EquipmentModels.modelId = dbo.WorkOrderTasks.modelId ON dbo.Equipment.modelId = dbo.EquipmentModels.modelId INNER JOIN
                      dbo.WorkOrders ON dbo.WorkOrderRequests.reqId = dbo.WorkOrders.reqId ON dbo.TaskParts.taskId = dbo.Tasks.taskId
ORDER BY dbo.WorkOrderTasks.taskStep

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[15] 2[34] 3) )"
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
         Begin Table = "Parts"
            Begin Extent = 
               Top = 71
               Left = 1634
               Bottom = 243
               Right = 1785
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TaskParts"
            Begin Extent = 
               Top = 109
               Left = 1413
               Bottom = 205
               Right = 1564
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 42
               Left = 214
               Bottom = 178
               Right = 381
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 25
               Left = 430
               Bottom = 174
               Right = 609
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderTasks"
            Begin Extent = 
               Top = 34
               Left = 914
               Bottom = 195
               Right = 1082
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tasks"
            Begin Extent = 
               Top = 68
               Left = 1164
               Bottom = 194
               Right = 1361
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EquipmentModels"
            Begin Extent = 
               Top = 20
               Left = 700
               Bottom = 98
               Right = 851
            End
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_WorkOrderTasks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrders"
            Begin Extent = 
               Top = 9
               Left = 16
               Bottom = 143
               Right = 172
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 10380
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_WorkOrderTasks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_WorkOrderTasks';

