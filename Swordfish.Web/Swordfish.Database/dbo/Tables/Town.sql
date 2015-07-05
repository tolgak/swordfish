
create table dbo.Town ( 
  Id int identity(1,1) not null
, CityId int not null
, Name nvarchar(250) not null
, constraint PK_xxx primary key clustered (Id ASC) 
)
go

