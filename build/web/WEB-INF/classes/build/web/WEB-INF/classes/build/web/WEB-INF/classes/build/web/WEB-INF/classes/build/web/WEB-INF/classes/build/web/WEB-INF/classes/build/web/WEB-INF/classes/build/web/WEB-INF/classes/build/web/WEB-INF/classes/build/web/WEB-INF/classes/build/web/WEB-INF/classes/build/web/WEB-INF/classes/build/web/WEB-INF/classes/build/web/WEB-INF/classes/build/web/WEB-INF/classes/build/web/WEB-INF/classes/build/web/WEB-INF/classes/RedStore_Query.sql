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