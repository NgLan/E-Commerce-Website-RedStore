--getCategoryImage
SELECT * FROM Category;

--getFeaturedProduct
SELECT TOP 4 * FROM [Product]
WHERE [Image] NOT LIKE 'exclusive.png'
ORDER BY Rate DESC;

--getLastestProduct
SELECT TOP 8 * FROM [Product]
WHERE [Image] NOT LIKE 'exclusive.png'
ORDER BY ID DESC;

--getExclusiveProduct
SELECT * FROM [Product]
WHERE [Image] = 'exclusive.png';

--getFeedback
SELECT fb.UserID, acc.FullName, acc.[Image], fb.Review, fb.Rate
FROM Account AS acc
RIGHT JOIN Feedback AS fb
ON acc.ID = fb.UserID;

--getCartUser
SELECT P.ID AS ProductID, P.[Image], P.[Name], C.Quantity, S.ID AS SizeID, S.[Name] AS Size, Color.ID AS ColorID, Color.[Name] AS Color, P.Price FROM [Product] P
JOIN (SELECT * FROM Cart WHERE [UserID] = '2') C
ON P.ID = C.ProductID
JOIN (SELECT * FROM Size) S
ON S.ID = C.SizeID
JOIN (SELECT * FROM Color) Color
ON Color.ID = C.ColorID

--getSubImage
SELECT * FROM SubImage
WHERE ProductID = 1;