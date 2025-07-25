BEGIN;

-- Add to cart
INSERT INTO cart (userId, productId) VALUES (1, 4);

-- Update product stock
UPDATE products SET stock = stock - 1 WHERE productId = 4;

COMMIT;
