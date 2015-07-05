/*
select 'if exists(select * from sys.objects where type = N''P'' and name = ''' 
       + cast(name as varchar) + ''')' 
       + char(13) + char(10)
       + '  drop procedure ' 
       + cast(name as varchar)
from sys.objects where type = N'P'
*/


create procedure dbo.spProspectCustomer_List 
as begin
  set nocount on
  
  select P.Id
       , P.SmsNumber
       , P.SupplierTypeId
       , S.Name SupplierTypeName
       , P.CityId
       , C.Name CityName
       , P.TownId
       , T.Name TownName
       , P.IsSubscribed
       , P.UnsubscribeDate
       , P.CreatedBy
       , U.UserName
       , P.CreatedDate
  from ProspectCustomer P
  inner join SupplierType S on S.Id = P.SupplierTypeId
  inner join City         C on C.Id = P.CityId
  left join  Town         T on T.Id = P.TownId
  left join  AspNetUsers  U on U.Id = P.CreatedBy

exit_Proc:

  set nocount off
end  
go

create procedure dbo.spProspectCustomer_PagedList 
as begin
  set nocount on
  
  



exit_Proc:

  set nocount off
end  
go

create procedure dbo.spProspectCustomer_GetById @id int
as begin
  set nocount on
    
  select P.Id
       , P.SmsNumber
       , P.SupplierTypeId
       , S.Name SupplierTypeName
       , P.CityId
       , C.Name CityName
       , P.TownId
       , T.Name TownName
       , P.IsSubscribed
       , P.UnsubscribeDate
       , P.CreatedBy
       , U.UserName
       , P.CreatedDate
  from ProspectCustomer P
  inner join SupplierType S on S.Id = P.SupplierTypeId
  inner join City         C on C.Id = P.CityId
  left join  Town         T on T.Id = P.TownId
  left join  AspNetUsers  U on U.Id = P.CreatedBy
  where P.Id = @id

exit_Proc:

  set nocount off
end  
go

create procedure dbo.spProspectCustomer_Insert
  @SmsNumber varchar(10), @SupplierTypeId int, @CityId int, @TownId int, @IsSubscribed bit, @UnsubscribeDate smalldatetime
, @CreatedBy nvarchar(128), @CreatedDate smalldatetime
as begin
  set nocount on

  insert into ProspectCustomer (SmsNumber, SupplierTypeId, CityId, TownId, IsSubscribed, UnsubscribeDate, CreatedBy, CreatedDate)
    values (@SmsNumber, @SupplierTypeId, @CityId, @TownId, @IsSubscribed, @UnsubscribeDate, @CreatedBy, @CreatedDate)

exit_Proc:

  set nocount off
end  
go

create procedure dbo.spProspectCustomer_Update 
    @id int
  , @SmsNumber varchar(10)
  , @SupplierTypeId int
  , @CityId int
  , @TownId int
  , @IsSubscribed bit
  , @UnsubscribeDate smalldatetime
  , @CreatedBy nvarchar(128)
  , @CreatedDate smalldatetime
as begin
  set nocount on
  
  UPDATE [dbo].[ProspectCustomer]
     SET [SmsNumber]       = @SmsNumber
        ,[SupplierTypeId]  = @SupplierTypeId
        ,[CityId]          = @CityId
        ,[TownId]          = @TownId
        ,[IsSubscribed]    = @IsSubscribed
        ,[UnsubscribeDate] = @UnsubscribeDate
        ,[CreatedBy]       = @CreatedBy
        ,[CreatedDate]     = @CreatedDate
   WHERE Id = @id

exit_Proc:

  set nocount off
end  
go

create procedure dbo.spProspectCustomer_Delete @id int
as begin
  set nocount on
    
  delete from ProspectCustomer where Id = @id

exit_Proc:

  set nocount off
end  
go



