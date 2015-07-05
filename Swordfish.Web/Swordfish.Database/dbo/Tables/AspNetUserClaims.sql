
CREATE TABLE dbo.AspNetUserClaims (
  Id         INT IDENTITY (1, 1) NOT NULL,
  UserId     NVARCHAR (128) NOT NULL,
  ClaimType  NVARCHAR (MAX) ,
  ClaimValue NVARCHAR (MAX) ,
  CONSTRAINT PK_AspNetUserClaims PRIMARY KEY CLUSTERED (Id ASC),
  CONSTRAINT FK_AspNetUserClaims_AspNetUsers FOREIGN KEY (UserId) REFERENCES dbo.AspNetUsers (Id) 
  ON DELETE CASCADE
)

