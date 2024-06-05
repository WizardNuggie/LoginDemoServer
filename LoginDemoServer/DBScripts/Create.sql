Create Database LoginDemoDB
Go
use LoginDemoDB

Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NOT NULL,
	BirthDate DATETIME NOT NULL,
	[Status] int NOT NULL,
	[Name] nvarchar(50) NOT NULL
)
Go

Create Table Grades (
	Email nvarchar(100),
	TestId int IDENTITY (1,1) PRIMARY KEY,
	TestDate DATETIME NOT NULL,
	SubName nvarchar(50) NOT NULL,
	Grade int NOT NULL,
	CONSTRAINT FK_GradesXUsers FOREIGN KEY (Email)
	REFERENCES Users(Email)
)
Go

INSERT INTO dbo.Users VALUES ('talsi@talsi.com', '1234', '+972506665835','20-may-1976',1,'Tal Simon')
Go

INSERT INTO dbo.Grades VALUES ('talsi@talsi.com', '3-june-2024', 'English', 100)
Go
--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force