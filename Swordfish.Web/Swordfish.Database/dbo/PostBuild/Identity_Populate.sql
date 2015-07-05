
if not exists(select 1 from dbo.AspNetRoles where Name = 'Admin')
  INSERT INTO dbo.AspNetRoles(Id, Name)
    VALUES('a1abfeba-3dba-4baf-a2ca-28ca9091cf46','Admin')

if not exists(select 1 from dbo.AspNetRoles where Name = 'User')
  INSERT INTO dbo.AspNetRoles(Id, Name)
    VALUES('e24dcb9d-b6e8-49d8-ab75-4a26eb1cc14d','User')



if not exists(select 1 from dbo.AspNetUsers where Email = 'admin@example.com')
  INSERT INTO dbo.AspNetUsers(Id, Email, EmailConfirmed, PasswordHash, SecurityStamp, PhoneNumber, PhoneNumberConfirmed, TwoFactorEnabled, LockoutEndDateUtc, LockoutEnabled, AccessFailedCount, UserName)
    VALUES('b6b3eaaa-d846-4eae-97c7-b255f56aeca2','admin@example.com', 0, 'AIJC+j8CnoNv2hnaRlnl3A5LqLYB0SDn03IofkRWRriAkl+3/wH1d5d2T2Q7faRgdQ==','28c525a8-9353-4235-a9ae-6f9a4d5dc43d', NULL, 0, 0, NULL, 0, 0, 'admin@example.com')

if not exists(select 1 from dbo.AspNetUsers where Email = 'tolga.kurkcuoglu@gmail.com')
  INSERT INTO dbo.AspNetUsers(Id,Email,EmailConfirmed,PasswordHash,SecurityStamp,PhoneNumber,PhoneNumberConfirmed,TwoFactorEnabled,LockoutEndDateUtc,LockoutEnabled,AccessFailedCount,UserName)
    VALUES('fa384cb1-464a-43e9-9bb4-f7bcf72f36ff','tolga.kurkcuoglu@gmail.com',0,'AAoptpO3vBaI0n2ytZ45RpmhAifxZRcvRsDCx4NjOOFWarY7z2oEILKyct9FWq1sSQ==','38c02c26-9c43-4784-8f16-118162990e75','+905366881775',1,0,NULL,1,0,'tolga.kurkcuoglu@gmail.com')



declare @tolga_Id nvarchar(128)
select @tolga_Id = Id from dbo.AspNetUsers where Email = 'tolga.kurkcuoglu@gmail.com' 

declare @admin_Id nvarchar(128)
select @admin_Id = Id from dbo.AspNetUsers where Email = 'admin@example.com'

declare @roleId   nvarchar(128)
select @roleId = Id from dbo.AspNetRoles where Name = 'Admin'

if not exists(select 1 from dbo.AspNetUserRoles where UserId = @admin_Id and RoleId = @roleId)
  INSERT INTO dbo.AspNetUserRoles(UserId,RoleId)
    VALUES(@admin_Id, @roleId)

if not exists(select 1 from dbo.AspNetUserRoles where UserId = @tolga_Id and RoleId = @roleId)
  INSERT INTO dbo.AspNetUserRoles(UserId,RoleId)
    VALUES(@tolga_Id, @roleId)

