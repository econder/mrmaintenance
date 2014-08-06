USE [MRMaintenance]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'

GO
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'

GO
/****** Object:  View [dbo].[v_WorkOrdersDetailed]    Script Date: 8/5/2014 8:42:34 PM ******/
DROP VIEW [dbo].[v_WorkOrdersDetailed]
GO
/****** Object:  View [dbo].[v_WorkOrdersDetailed]    Script Date: 8/5/2014 8:42:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_WorkOrdersDetailed]
AS
SELECT     dbo.v_WorkOrders.woSchedId, dbo.v_WorkOrders.name, dbo.v_WorkOrders.descr, dbo.v_WorkOrders.startDate, dbo.v_WorkOrders.timeFreq, 
                      dbo.v_WorkOrders.intName, dbo.v_WorkOrders.lastcompleted, dbo.v_WorkOrders.nextDue, dbo.Equipment.equipNumber, dbo.Equipment.equipName, 
                      dbo.Equipment.descr AS equipDescr, dbo.Equipment.equipSerial, dbo.Equipment.equipModel, dbo.Departments.name AS deptName, dbo.Locations.name AS locName, 
                      dbo.Locations.addr1 AS locAddr1, dbo.Locations.addr2 AS locAddr2, dbo.Locations.city AS locCity, dbo.States.stateId AS locState, dbo.Locations.zip AS locZip, 
                      dbo.Locations.lat AS locLat, dbo.Locations.long AS locLong, dbo.EquipmentTypes.typeName AS equipType, dbo.Vendors.name AS venName, 
                      dbo.Vendors.addr1 AS venAddr1, dbo.Vendors.addr2 AS venAddr2, dbo.Vendors.city AS venCity, dbo.Vendors.zip AS venZip, dbo.Vendors.phone1 AS venPhone1, 
                      dbo.Vendors.phone2 AS venPhone2, dbo.Vendors.fax AS venFax, dbo.Vendors.web AS venWeb, dbo.Facilities.facId, dbo.Facilities.name AS facName, 
                      dbo.Facilities.addr1 AS facAddr1, dbo.Facilities.addr2 AS facAddr2, dbo.Facilities.city AS facCity, dbo.Facilities.zip AS facZip, dbo.Facilities.lat AS facLat, 
                      dbo.Facilities.long AS facLong, dbo.Facilities.phone1 AS facPhone1, dbo.Facilities.phone2 AS facPhone2, dbo.Facilities.fax AS facFax, dbo.States.abbr AS stateAbbr, 
                      dbo.Manufacturers.name AS manName, dbo.Manufacturers.addr1 AS manAddr1, dbo.Manufacturers.addr2 AS manAddr2, dbo.Manufacturers.city AS manCity, 
                      dbo.Manufacturers.zip AS manZip, dbo.Manufacturers.phone1 AS manPhone1, dbo.Manufacturers.phone2 AS manPhone2, dbo.Manufacturers.fax AS manFax, 
                      dbo.Manufacturers.web AS manWeb
FROM         dbo.EquipmentTypes INNER JOIN
                      dbo.Equipment ON dbo.EquipmentTypes.typeId = dbo.Equipment.equipTypeId INNER JOIN
                      dbo.Locations ON dbo.Equipment.locId = dbo.Locations.locId INNER JOIN
                      dbo.Facilities ON dbo.Locations.facId = dbo.Facilities.facId INNER JOIN
                      dbo.Manufacturers ON dbo.Equipment.manId = dbo.Manufacturers.manId INNER JOIN
                      dbo.Vendors ON dbo.Equipment.vendorId = dbo.Vendors.venId INNER JOIN
                      dbo.v_WorkOrders ON dbo.Equipment.equipId = dbo.v_WorkOrders.equipId INNER JOIN
                      dbo.Departments ON dbo.v_WorkOrders.deptId = dbo.Departments.deptId LEFT OUTER JOIN
                      dbo.States ON dbo.Locations.stateId = dbo.States.stateId AND dbo.Facilities.stateId = dbo.States.stateId AND dbo.Manufacturers.stateId = dbo.States.stateId AND 
                      dbo.Vendors.stateId = dbo.States.stateId

GO
ALTER AUTHORIZATION ON [dbo].[v_WorkOrdersDetailed] TO  SCHEMA OWNER 
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[17] 4[29] 2[18] 3) )"
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
         Begin Table = "EquipmentTypes"
            Begin Extent = 
               Top = 176
               Left = 728
               Bottom = 268
               Right = 879
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Equipment"
            Begin Extent = 
               Top = 52
               Left = 348
               Bottom = 237
               Right = 527
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Locations"
            Begin Extent = 
               Top = 50
               Left = 644
               Bottom = 158
               Right = 795
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Facilities"
            Begin Extent = 
               Top = 29
               Left = 864
               Bottom = 137
               Right = 1015
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Manufacturers"
            Begin Extent = 
               Top = 285
               Left = 820
               Bottom = 446
               Right = 971
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Vendors"
            Begin Extent = 
               Top = 320
               Left = 609
               Bottom = 428
               Right = 760
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "v_WorkOrders"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 211
               Right = 189
            End
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Departments"
            Begin Extent = 
               Top = 251
               Left = 354
               Bottom = 338
               Right = 505
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 162
               Left = 1067
               Bottom = 255
               Right = 1218
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
         Width = 1500
         Width = 1995
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_WorkOrdersDetailed'
GO
