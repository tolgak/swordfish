
create table dbo.City ( 
  Id int identity(1,1) not null
, PlateId varchar(5) not null
, Name nvarchar(250) not null
, constraint PK_City primary key clustered (Id ASC) 
)
go





