
create table ProspectCustomer
(
  Id int identity(1,1),
  SmsNumber varchar(10) not null,
  SupplierTypeId int not null, 
  CityId int not null, 
  TownId int,
  IsSubscribed bit not null default ((0)),
  UnsubscribeDate smalldatetime,
  CreatedBy nvarchar(128),
  CreatedDate smalldatetime,

  CONSTRAINT PK_ProspectCustomer PRIMARY KEY CLUSTERED (Id ASC)
)

go

