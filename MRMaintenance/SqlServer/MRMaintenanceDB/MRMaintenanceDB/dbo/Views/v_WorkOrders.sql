CREATE VIEW dbo.v_WorkOrders
AS
SELECT     dbo.WorkOrders.woID, dbo.WorkOrders.reqId, dbo.WorkOrders.woDateCreated, dbo.WorkOrders.woDateDue, dbo.WorkOrders.woNotes, dbo.WorkOrders.woComplete, 
                      dbo.WorkOrders.woDateCompleted, dbo.WorkOrders.woCompletedBy, dbo.WorkOrderRequests.reqName, dbo.WorkOrderRequests.reqDescr, 
                      dbo.WorkOrderRequests.reqDateSubmitted, dbo.WorkOrderRequests.reqStartDate, dbo.WorkOrderRequests.timeFreq, dbo.WorkOrderRequests.lastCompleted, 
                      dbo.WorkOrderRequests.enabled, dbo.TimeIntervals.intName, dbo.Equipment.equipId, dbo.Equipment.equipNumber, dbo.Equipment.equipName, 
                      dbo.Equipment.descr AS equipDescr, dbo.Equipment.equipSerial, dbo.Equipment.equipMccLoc, dbo.Equipment.equipMccPanel, dbo.EquipmentTypes.typeName, 
                      dbo.EquipmentModels.modelName, dbo.Locations.name AS locName, dbo.Locations.facId, dbo.Facilities.name AS facName, dbo.Facilities.addr1 AS facAddr1, 
                      dbo.Facilities.addr2 AS facAddr2, dbo.Facilities.fax AS facFax, dbo.Facilities.phone2 AS facPhone2, dbo.Facilities.phone1 AS facPhone1, dbo.Facilities.long AS facLong,
                       dbo.Facilities.lat AS facLat, dbo.Facilities.city AS facCity, dbo.States.abbr AS facState, dbo.Facilities.zip AS facZip, dbo.Locations.addr1 AS locAddr1, 
                      dbo.Locations.addr2 AS locAddr2, dbo.Locations.city AS locCity, dbo.Locations.lat AS locLat, dbo.Locations.long AS locLong, dbo.Manufacturers.name AS manName, 
                      dbo.Manufacturers.web AS manWeb, dbo.Manufacturers.phone1 AS manPhone1, dbo.Manufacturers.phone2 AS manPhone2, dbo.Manufacturers.fax AS manFax, 
                      dbo.Vendors.name AS venName, dbo.Priorities.priorityName
FROM         dbo.Vendors INNER JOIN
                      dbo.Facilities INNER JOIN
                      dbo.TimeIntervals INNER JOIN
                      dbo.WorkOrderRequests ON dbo.TimeIntervals.intId = dbo.WorkOrderRequests.intId INNER JOIN
                      dbo.Equipment ON dbo.WorkOrderRequests.equipId = dbo.Equipment.equipId INNER JOIN
                      dbo.EquipmentTypes ON dbo.Equipment.equipTypeId = dbo.EquipmentTypes.typeId INNER JOIN
                      dbo.Locations ON dbo.Equipment.locId = dbo.Locations.locId ON dbo.Facilities.facId = dbo.Locations.facId INNER JOIN
                      dbo.Manufacturers ON dbo.Equipment.manId = dbo.Manufacturers.manId INNER JOIN
                      dbo.WorkOrders ON dbo.WorkOrderRequests.reqId = dbo.WorkOrders.reqId ON dbo.Vendors.venId = dbo.Equipment.vendorId INNER JOIN
                      dbo.Priorities ON dbo.WorkOrderRequests.priorityId = dbo.Priorities.priorityId INNER JOIN
                      dbo.States ON dbo.Facilities.stateId = dbo.States.stateId LEFT OUTER JOIN
                      dbo.EquipmentModels ON dbo.Equipment.modelId = dbo.EquipmentModels.modelId

GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane1', @value = N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[12] 4[5] 2[46] 3) )"
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
         Left = -672
      End
      Begin Tables = 
         Begin Table = "Vendors"
            Begin Extent = 
               Top = 389
               Left = 741
               Bottom = 497
               Right = 892
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 42
               Left = 970
               Bottom = 231
               Right = 1121
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TimeIntervals"
            Begin Extent = 
               Top = 301
               Left = 507
               Bottom = 414
               Right = 658
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrderRequests"
            Begin Extent = 
               Top = 29
               Left = 263
               Bottom = 267
               Right = 430
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 32
               Left = 496
               Bottom = 293
               Right = 675
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EquipmentTypes"
            Begin Extent = 
               Top = 182
               Left = 740
               Bottom = 263
               Right = 891
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 7
               Left = 741
               Bottom = 180
               Right = 892
            E', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_WorkOrders';






GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPane2', @value = N'nd
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Manufacturers"
            Begin Extent = 
               Top = 278
               Left = 739
               Bottom = 386
               Right = 890
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkOrders"
            Begin Extent = 
               Top = 96
               Left = 41
               Bottom = 296
               Right = 197
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Priorities"
            Begin Extent = 
               Top = 345
               Left = 297
               Bottom = 423
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EquipmentModels"
            Begin Extent = 
               Top = 502
               Left = 740
               Bottom = 590
               Right = 891
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 31
               Left = 1319
               Bottom = 124
               Right = 1470
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
      Begin ColumnWidths = 55
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1995
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 6030
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
         Width = 2175
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
      Begin ColumnWidths = 11
         Column = 2595
         Alias = 1380
         Table = 2940
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
', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_WorkOrders';






GO
EXECUTE sp_addextendedproperty @name = N'MS_DiagramPaneCount', @value = 2, @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'v_WorkOrders';

