-- Find products with invalid category references
SELECT *
FROM products p
LEFT JOIN categories c ON p.categoryId = c.categoryId
WHERE c.categoryId IS NULL;
