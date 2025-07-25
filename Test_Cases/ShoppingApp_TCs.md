# 🧪 SQL Test Cases — Shopping App Database

This document contains test scenarios and expected results for validating data quality, integrity, and business logic in the shopping app database.

---

## 📌 Table: `users`

### TC001 - Verify Required Fields on User Creation
- **Objective**: Ensure all mandatory fields are populated
- **Steps**:
  1. Attempt to insert a user with missing `email`
- **Expected Result**: Insert fails due to NOT NULL constraint

### TC002 - Validate Email Format
- **Objective**: Ensure email field follows a valid format
- **Steps**:
  1. Insert user with invalid email format (e.g., `test@`)
- **Expected Result**: Insert fails (if validation exists) or flagged for cleanup

---

## 📌 Table: `products`

### TC003 - Check Product Price Cannot Be Negative
- **Objective**: Validate that product price is always greater than zero
- **Steps**:
  1. Try to insert product with price = -10
- **Expected Result**: Insert fails or is flagged

### TC004 - Validate Stock Reduction on Purchase
- **Objective**: Check if stock decreases after adding product to cart
- **Steps**:
  1. Insert a product into cart
  2. Verify stock count in `products` table
- **Expected Result**: Stock reduces by 1

---

## 📌 Table: `cart`

### TC005 - Prevent Duplicated Product in Cart for Same User
- **Objective**: Ensure same product can't be added more than once for a user
- **Steps**:
  1. Insert same `productId` twice for same `userId`
- **Expected Result**: Second insert fails or is ignored

---

## 📌 Table: `categories`

### TC006 - Validate Category Relationship
- **Objective**: Confirm that all products have a valid `categoryId`
- **Steps**:
  1. Insert a product with a non-existing `categoryId`
- **Expected Result**: Insert fails due to FK constraint

---

## 📌 Transactions

### TC007 - Validate Atomic Purchase
- **Objective**: Ensure all parts of purchase succeed or none
- **Steps**:
  1. Simulate a transaction with insert in `cart` and stock update
  2. Fail the stock update
- **Expected Result**: Cart insert is rolled back

---
