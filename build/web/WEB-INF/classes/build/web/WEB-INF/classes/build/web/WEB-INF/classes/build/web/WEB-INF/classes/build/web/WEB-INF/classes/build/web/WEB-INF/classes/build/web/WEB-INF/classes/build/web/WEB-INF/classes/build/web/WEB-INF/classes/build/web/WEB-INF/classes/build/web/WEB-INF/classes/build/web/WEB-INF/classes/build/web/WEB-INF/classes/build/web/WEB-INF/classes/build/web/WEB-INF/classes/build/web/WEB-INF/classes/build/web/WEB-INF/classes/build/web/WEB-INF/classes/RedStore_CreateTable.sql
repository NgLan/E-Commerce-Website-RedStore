--CREATE DATABASE RedStore;
--DROP DATABASE RedStore;
--USE RedStore;

CREATE TABLE Category (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL
);

CREATE TABLE [Product] (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL,
	[Image] NVARCHAR(MAX) NOT NULL,
	Price MONEY NOT NULL,
	[Description] NTEXT NOT NULL,
	CategoryID INT,
	CONSTRAINT FK_CategoryProduct FOREIGN KEY (CategoryID) REFERENCES Category(ID)
);

CREATE TABLE [Role] (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL
);

--DROP TABLE Account;
CREATE TABLE Account (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	[User] VARCHAR(255) UNIQUE NOT NULL,
	[Password] VARCHAR(255) NOT NULL,
	RoleID INT,
	CONSTRAINT FK_RoleAccount FOREIGN KEY (RoleID) REFERENCES [Role](ID)
);

CREATE TABLE Size (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL
);

CREATE TABLE ProductSize (
	ProductID INT,
	SizeID INT,
	CONSTRAINT PK_ProductSize PRIMARY KEY (ProductID, SizeID),
	CONSTRAINT FK_ProductSize FOREIGN KEY (ProductID) REFERENCES [Product](ID),
	CONSTRAINT FK_SizeProduct FOREIGN KEY (SizeID) REFERENCES Size(ID)
);

CREATE TABLE Color (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL
);

CREATE TABLE ProductColor (
	ProductID INT,
	ColorID INT,
	CONSTRAINT PK_ProductColor PRIMARY KEY (ProductID, ColorID),
	CONSTRAINT FK_ProductColor FOREIGN KEY (ProductID) REFERENCES [Product](ID),
	CONSTRAINT FK_ColorProduct FOREIGN KEY (ColorID) REFERENCES Color(ID)
);

--DROP TABLE Cart;
CREATE TABLE Cart (
	UserID INT, 
	ProductID INT,
	SizeID INT,
	ColorID INT,
	Quantity INT NOT NULL,
	CONSTRAINT PK_Cart PRIMARY KEY (UserID, ProductID, SizeID, ColorID),
	CONSTRAINT FK_UserCart FOREIGN KEY (UserID) REFERENCES Account(ID),
	CONSTRAINT FK_ProductCart FOREIGN KEY (ProductID) REFERENCES [Product](ID),
	CONSTRAINT FK_SizeProductCart FOREIGN KEY (SizeID) REFERENCES Size(ID),
	CONSTRAINT FK_ColorProductCart FOREIGN KEY (ColorID) REFERENCES Color(ID),
);

CREATE TABLE [Image] (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	[Option] CHAR(7) NOT NULL,
	Link NVARCHAR(MAX) NOT NULL,
	--CONSTRAINT FK_ProductImage FOREIGN KEY ([Option]) REFERENCES [Product](ID)
);

--DROP TABLE [Image];
--DROP TABLE ProductColor;
--DROP TABLE ProductSize;
--DROP TABLE Cart;
--DROP TABLE Account;
--DROP TABLE [Product];
--DROP TABLE [Role];
--DROP TABLE Category;
--DROP TABLE Color;
--DROP TABLE Size;

--DELETE FROM Account;
--DELETE FROM Cart;
--DELETE FROM Category;
--DELETE FROM [Product];
--DELETE FROM Color;
--DELETE FROM Size;
--DELETE FROM ProductColor;
--DELETE FROM ProductSize;
--DELETE FROM [Role];
--DELETE FROM [Image];