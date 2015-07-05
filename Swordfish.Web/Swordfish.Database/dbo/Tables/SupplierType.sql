
create table dbo.SupplierType ( 
    Id int identity(1,1) not null
	, ParentTypeId int 
	, Name nvarchar(250) not null
	, IsActive bit not null default ((0))
  , constraint PK_SupplierType primary key clustered (Id ASC) 
)
go


