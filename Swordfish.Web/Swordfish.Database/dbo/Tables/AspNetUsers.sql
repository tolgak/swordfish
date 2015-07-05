
CREATE TABLE dbo.AspNetUsers (
  Id                   NVARCHAR (128) NOT NULL,
  Email                NVARCHAR (256) ,
  EmailConfirmed       BIT            NOT NULL,
  PasswordHash         NVARCHAR (MAX) ,
  SecurityStamp        NVARCHAR (MAX) ,
  PhoneNumber          NVARCHAR (MAX) ,
  PhoneNumberConfirmed BIT            NOT NULL,
  TwoFactorEnabled     BIT            NOT NULL,
  LockoutEndDateUtc    DATETIME       ,
  LockoutEnabled       BIT            NOT NULL,
  AccessFailedCount    INT            NOT NULL,
  UserName             NVARCHAR (256) NOT NULL,
  CONSTRAINT PK_AspNetUsers PRIMARY KEY CLUSTERED (Id ASC)
)
go



