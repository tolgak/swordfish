/*
Post-Deployment Script Template              
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.    
 Use SQLCMD syntax to include a file in the post-deployment script.      
 Example:      :r .\myfile.sql                
 Use SQLCMD syntax to reference a variable in the post-deployment script.    
 Example:      :setvar TableName MyTable              
               SELECT * FROM [$(TableName)]          
--------------------------------------------------------------------------------------
*/


:r .\PostBuild\Identity_Populate.sql
:r .\PostBuild\City_Populate.sql
:r .\PostBuild\Town_Populate.sql
:r .\PostBuild\SupplierType_Populate.sql



create unique nonclustered index IX_RoleName on dbo.AspNetRoles (Name ASC)

CREATE NONCLUSTERED INDEX IX_Claims_UserId ON dbo.AspNetUserClaims(UserId ASC)

CREATE UNIQUE NONCLUSTERED INDEX IX_UserName ON dbo.AspNetUsers(UserName ASC)

CREATE NONCLUSTERED INDEX IX_Logins_UserId ON dbo.AspNetUserLogins(UserId ASC);

CREATE NONCLUSTERED INDEX IX_UserRoles_RoleId ON dbo.AspNetUserRoles(RoleId ASC)

CREATE NONCLUSTERED INDEX IX_UserRoles_UserId ON dbo.AspNetUserRoles(UserId ASC)




ALTER TABLE [dbo].[ProspectCustomer]  WITH CHECK ADD  CONSTRAINT [FK_ProspectCustomer_AspNetUsers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO

ALTER TABLE [dbo].[ProspectCustomer] CHECK CONSTRAINT [FK_ProspectCustomer_AspNetUsers]
GO

ALTER TABLE [dbo].[ProspectCustomer]  WITH CHECK ADD  CONSTRAINT [FK_ProspectCustomer_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO

ALTER TABLE [dbo].[ProspectCustomer] CHECK CONSTRAINT [FK_ProspectCustomer_City]
GO

ALTER TABLE [dbo].[ProspectCustomer]  WITH CHECK ADD  CONSTRAINT [FK_ProspectCustomer_SupplierType] FOREIGN KEY([SupplierTypeId])
REFERENCES [dbo].[SupplierType] ([Id])
GO

ALTER TABLE [dbo].[ProspectCustomer] CHECK CONSTRAINT [FK_ProspectCustomer_SupplierType]
GO

ALTER TABLE [dbo].[ProspectCustomer]  WITH CHECK ADD  CONSTRAINT [FK_ProspectCustomer_Town] FOREIGN KEY([TownId])
REFERENCES [dbo].[Town] ([Id])
GO

ALTER TABLE [dbo].[ProspectCustomer] CHECK CONSTRAINT [FK_ProspectCustomer_Town]
GO




ALTER TABLE [dbo].[SupplierType]  WITH CHECK ADD  CONSTRAINT [FK_SupplierType_SupplierType] FOREIGN KEY([ParentTypeId])
REFERENCES [dbo].[SupplierType] ([Id])
GO

ALTER TABLE [dbo].[SupplierType] CHECK CONSTRAINT [FK_SupplierType_SupplierType]
GO



ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_City] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([Id])
GO

ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_City]
GO
