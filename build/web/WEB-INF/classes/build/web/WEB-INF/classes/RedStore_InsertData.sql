INSERT INTO Category (Name, Image) VALUES (N'Quần', N'category-1.jpg');
INSERT INTO Category (Name, Image) VALUES (N'Áo', N'category-3.jpg');
INSERT INTO Category (Name, Image) VALUES (N'Giày', N'category-2.jpg');
INSERT INTO Category (Name, Image) VALUES (N'Tất', N'category-2.jpg');
INSERT INTO Category (Name, Image) VALUES (N'Đồng Hồ', N'category-3.jpg');

INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Quần Jeans', N'product-1.jpg', 500000, N'Quần jeans thời trang', 1, 4.5);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Quần Tây', N'product-2.jpg', 400000, N'Quần tây công sở', 1, 5);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Áo Thun', N'product-3.jpg', 200000, N'Áo thun cotton', 2, 5);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Áo Sơ Mi', N'product-4.jpg', 350000, N'Áo sơ mi lịch lãm', 2, 4.5);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Áo Khoác', N'product-5.jpg', 600000, N'Áo khoác mùa đông', 2, 4);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Giày Thể Thao', N'product-6.jpg', 700000, N'Giày thể thao năng động', 3, 3.5);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Giày Tây', N'product-7.jpg', 800000, N'Giày tây da thật', 3, 4.5);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Tất Cổ Cao', N'product-8.jpg', 50000, N'Tất cổ cao', 4, 4);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Tất Cổ Ngắn', N'product-9.jpg', 40000, N'Tất cổ ngắn', 4, 4);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Đồng Hồ Thời Trang', N'product-10.jpg', 1500000, N'Đồng hồ đeo tay thời trang', 5, 3.5);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Đồng Hồ Thể Thao', N'product-11.jpg', 1800000, N'Đồng hồ đeo tay thể thao', 5, 4.5);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Đồng Hồ Sang Trọng', N'product-12.jpg', 3000000, N'Đồng hồ sang trọng', 5, 4);
INSERT INTO [Product] (Name, Image, Price, Description, CategoryID, Rate) VALUES (N'Smart Band 4', N'exclusive.png', 3000000, N'The Mi Smart Band 4 features a 39.9% larger (than Mi Band 3) AMOLED color full-touch display width adjustable brightness, so everything is clear as can be.', 5, 5);

INSERT INTO Role (Name) VALUES (N'Customer');
INSERT INTO Role (Name) VALUES (N'Admin');

INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user1', 'password1', 1, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user2', 'password2', 1, N'user-2.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user3', 'password3', 1, N'user-3.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user4', 'password4', 1, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user5', 'password5', 1, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user6', 'password6', 1, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user7', 'password7', 1, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user8', 'password8', 1, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user9', 'password9', 1, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('user10', 'password10', 1, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('admin1', 'password11', 2, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('admin2', 'password12', 2, N'user-1.png');
INSERT INTO Account ([User], Password, RoleID, Image) VALUES ('admin3', 'password13', 2, N'user-1.png');

INSERT INTO Color (Name) VALUES (N'Đỏ');
INSERT INTO Color (Name) VALUES (N'Đen');
INSERT INTO Color (Name) VALUES (N'Xám');
INSERT INTO Color (Name) VALUES (N'Xanh Dương');
INSERT INTO Color (Name) VALUES (N'Trắng');

INSERT INTO ProductColor (ProductID, ColorID) VALUES (1, 1);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (2, 2);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (3, 3);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (4, 4);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (5, 5);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (6, 1);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (7, 2);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (8, 3);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (9, 4);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (10, 5);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (11, 1);
INSERT INTO ProductColor (ProductID, ColorID) VALUES (12, 2);

INSERT INTO Size (Name) VALUES (N'S');
INSERT INTO Size (Name) VALUES (N'M');
INSERT INTO Size (Name) VALUES (N'L');
INSERT INTO Size (Name) VALUES (N'XL');
INSERT INTO Size (Name) VALUES (N'XXL');

INSERT INTO ProductSize (ProductID, SizeID) VALUES (1, 1);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (2, 2);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (3, 3);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (4, 4);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (5, 5);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (6, 1);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (7, 2);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (8, 3);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (9, 4);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (10, 5);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (11, 1);
INSERT INTO ProductSize (ProductID, SizeID) VALUES (12, 2);

INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (1, 1, 1, 1, 2);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (2, 2, 2, 2, 1);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (3, 3, 3, 3, 4);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (4, 4, 4, 4, 1);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (5, 5, 5, 5, 2);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (6, 6, 1, 1, 1);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (7, 7, 2, 2, 3);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (8, 8, 3, 3, 2);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (9, 9, 4, 4, 1);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (10, 10, 5, 5, 3);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (1, 11, 1, 2, 1);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (2, 12, 2, 3, 4);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (3, 1, 3, 4, 2);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (4, 2, 4, 5, 1);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (5, 3, 5, 1, 3);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (6, 4, 1, 2, 2);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (7, 5, 2, 3, 1);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (8, 6, 3, 4, 4);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (9, 7, 4, 5, 1);
INSERT INTO Cart (UserID, ProductID, SizeID, ColorID, Quantity) VALUES (10, 8, 5, 1, 2);

--C: category, L: logo, P: product, P1: subimage of product 1, U: user, O: other
--INSERT INTO Image (ProductID, Link) VALUES (1, 'category-1.jpg');
--INSERT INTO Image (ProductID, Link) VALUES (1, 'category-2.jpg');
--INSERT INTO Image (ProductID, Link) VALUES (1, 'category-3.jpg');
--INSERT INTO Image (ProductID, Link) VALUES (1, 'logo-coca-cola.png');
--INSERT INTO Image (ProductID, Link) VALUES ('L', 'logo-godrej.png');
--INSERT INTO Image (ProductID, Link) VALUES ('L', 'logo-oppo.png');
--INSERT INTO Image ([Option], Link) VALUES ('L', 'logo-paypal.png');
--INSERT INTO Image ([Option], Link) VALUES ('L', 'logo-philips.png');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-1.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-2.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-3.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-4.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-5.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-6.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-7.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-8.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-9.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-10.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-11.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'product-12.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'exclusive.png');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'buy-1.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'buy-2.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('P', 'buy-3.jpg');
INSERT INTO SubImage (ProductID, Link) VALUES (1, N'gallery-1.jpg');
INSERT INTO SubImage (ProductID, Link) VALUES (1, N'gallery-2.jpg');
INSERT INTO SubImage (ProductID, Link) VALUES (1, N'gallery-3.jpg');
INSERT INTO SubImage (ProductID, Link) VALUES (1, N'gallery-4.jpg');
--INSERT INTO Image ([Option], Link) VALUES ('U', 'user-1.png');
--INSERT INTO Image ([Option], Link) VALUES ('U', 'user-2.png');
--INSERT INTO Image ([Option], Link) VALUES ('U', 'user-3.png');
--INSERT INTO Image ([Option], Link) VALUES ('O', 'app-store.png');
--INSERT INTO Image ([Option], Link) VALUES ('O', 'cart.png');
--INSERT INTO Image ([Option], Link) VALUES ('O', 'image1.png');
--INSERT INTO Image ([Option], Link) VALUES ('O', 'logo.png');
--INSERT INTO Image ([Option], Link) VALUES ('O', 'logo-white.png');
--INSERT INTO Image ([Option], Link) VALUES ('O', 'menu.png');
--INSERT INTO Image ([Option], Link) VALUES ('O', 'play-store.png');

INSERT INTO Feedback (UserID, Review, Rate) VALUES 
(1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. 
Pariatur minima, necessitatibus sequi tempora sunt cupiditate 
nisi alias error aperiam harum delectus minus voluptates quia 
commodi! Nostrum, sapiente! Aperiam, modi vero.', 4);
INSERT INTO Feedback (UserID, Review, Rate) VALUES 
(2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. 
Pariatur minima, necessitatibus sequi tempora sunt cupiditate 
nisi alias error aperiam harum delectus minus voluptates quia 
commodi! Nostrum, sapiente! Aperiam, modi vero.', 4);
INSERT INTO Feedback (UserID, Review, Rate) VALUES 
(3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. 
Pariatur minima, necessitatibus sequi tempora sunt cupiditate 
nisi alias error aperiam harum delectus minus voluptates quia 
commodi! Nostrum, sapiente! Aperiam, modi vero.', 4);