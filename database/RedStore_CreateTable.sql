--CREATE DATABASE RedStore;
--DROP DATABASE RedStore;
--USE RedStore;

CREATE TABLE Category (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL,
	[Image] NVARCHAR(MAX) NOT NULL
);

CREATE TABLE [Product] (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	[Name] NVARCHAR(255) NOT NULL,
	[Image] NVARCHAR(MAX) NOT NULL,
	Price MONEY NOT NULL,
	[Description] NTEXT NOT NULL,
	CategoryID INT NOT NULL,
	Rate FLOAT NOT NULL, 
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
	RoleID INT NOT NULL,
	FullName NVARCHAR(255) NOT NULL,
	[Image] NVARCHAR(MAX) NOT NULL,
	CONSTRAINT FK_RoleAccount FOREIGN KEY (RoleID) REFERENCES [Role](ID)
);

CREATE TABLE Feedback (
	UserID INT NOT NULL,
	Review NVARCHAR(MAX) NOT NULL,
	Rate FLOAT NOT NULL,
	CONSTRAINT PK_Feedback PRIMARY KEY (UserID),
	CONSTRAINT FK_UserFeedback FOREIGN KEY (UserID) REFERENCES Account(ID)
);

CREATE TABLE Size (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL
);

CREATE TABLE ProductSize (
	ProductID INT NOT NULL,
	SizeID INT NOT NULL,
	CONSTRAINT PK_ProductSize PRIMARY KEY (ProductID, SizeID),
	CONSTRAINT FK_ProductSize FOREIGN KEY (ProductID) REFERENCES [Product](ID),
	CONSTRAINT FK_SizeProduct FOREIGN KEY (SizeID) REFERENCES Size(ID)
);

CREATE TABLE Color (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	Name NVARCHAR(50) NOT NULL
);

CREATE TABLE ProductColor (
	ProductID INT NOT NULL,
	ColorID INT NOT NULL,
	CONSTRAINT PK_ProductColor PRIMARY KEY (ProductID, ColorID),
	CONSTRAINT FK_ProductColor FOREIGN KEY (ProductID) REFERENCES [Product](ID),
	CONSTRAINT FK_ColorProduct FOREIGN KEY (ColorID) REFERENCES Color(ID)
);

--DROP TABLE Cart;
CREATE TABLE Cart (
	UserID INT NOT NULL, 
	ProductID INT NOT NULL,
	SizeID INT NOT NULL,
	ColorID INT NOT NULL,
	Quantity INT NOT NULL,
	CONSTRAINT PK_Cart PRIMARY KEY (UserID, ProductID, SizeID, ColorID),
	CONSTRAINT FK_UserCart FOREIGN KEY (UserID) REFERENCES Account(ID),
	CONSTRAINT FK_ProductCart FOREIGN KEY (ProductID) REFERENCES [Product](ID),
	CONSTRAINT FK_SizeProductCart FOREIGN KEY (SizeID) REFERENCES Size(ID),
	CONSTRAINT FK_ColorProductCart FOREIGN KEY (ColorID) REFERENCES Color(ID),
);

CREATE TABLE SubImage (
	ID INT IDENTITY(1, 1) PRIMARY KEY,
	ProductID INT NOT NULL,
	Link NVARCHAR(MAX) NOT NULL,
	CONSTRAINT FK_ProductSubImage FOREIGN KEY (ProductID) REFERENCES [Product](ID)
);

--DROP TABLE SubImage;
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