/*
 Pre-Deployment Script Template              
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.  
 Use SQLCMD syntax to include a file in the pre-deployment script.      
 Example:      :r .\myfile.sql                
 Use SQLCMD syntax to reference a variable in the pre-deployment script.    
 Example:      :setvar TableName MyTable              
               SELECT * FROM [$(TableName)]          
--------------------------------------------------------------------------------------
*/

if exists(select * from sys.indexes where name = 'RoleNameIndex')
  drop index IX_RoleName on dbo.AspNetRoles
go

if exists(select * from sys.indexes where name = 'IX_Claims_UserId')
  drop index IX_Claims_UserId on dbo.AspNetUserClaims
go

if exists(select * from sys.indexes where name = 'UserNameIndex')
  drop index IX_UserName on dbo.AspNetUsers
go

if exists(select * from sys.indexes where name = 'IX_Logins_UserId')
  drop index IX_Logins_UserId on dbo.AspNetUserLogins
go

if exists(select * from sys.indexes where name = 'IX_UserRoles_UserId')
  drop index IX_UserRoles_UserId on AspNetUserRoles
go

if exists(select * from sys.indexes where name = 'IX_UserRoles_RoleId')
  drop index IX_UserRoles_RoleId on AspNetUserRoles
go

