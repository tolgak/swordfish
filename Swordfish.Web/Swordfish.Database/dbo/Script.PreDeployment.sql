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

if exists(select * from sys.objects where type = N'P' and name = 'spProspectCustomer_GetById')
  drop procedure spProspectCustomer_GetById
if exists(select * from sys.objects where type = N'P' and name = 'spProspectCustomer_Insert')
  drop procedure spProspectCustomer_Insert
if exists(select * from sys.objects where type = N'P' and name = 'spProspectCustomer_Update')
  drop procedure spProspectCustomer_Update
if exists(select * from sys.objects where type = N'P' and name = 'spProspectCustomer_Delete')
  drop procedure spProspectCustomer_Delete
if exists(select * from sys.objects where type = N'P' and name = 'spProspectCustomer_List')
  drop procedure spProspectCustomer_List
if exists(select * from sys.objects where type = N'P' and name = 'spProspectCustomer_PagedList')
  drop procedure spProspectCustomer_PagedList
go


