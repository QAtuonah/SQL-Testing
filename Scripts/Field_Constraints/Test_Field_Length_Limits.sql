-- Test if name field exceeds limit
INSERT INTO products (productId, name, price, description, image, stock, categoryId)
VALUES (99, repeat('A', 300), 10.0, 'desc', 'img.png', 10, 1);
