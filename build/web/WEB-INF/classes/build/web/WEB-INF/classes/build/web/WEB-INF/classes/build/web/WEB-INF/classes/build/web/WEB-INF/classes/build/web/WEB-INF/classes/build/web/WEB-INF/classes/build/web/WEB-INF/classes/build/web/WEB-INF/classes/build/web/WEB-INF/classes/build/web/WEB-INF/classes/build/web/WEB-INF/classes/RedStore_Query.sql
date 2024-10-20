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