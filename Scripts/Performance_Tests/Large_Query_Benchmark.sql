-- Query that needs optimization (use EXPLAIN ANALYZE)
SELECT *
FROM products
WHERE description LIKE '%discount%' AND stock > 0;
