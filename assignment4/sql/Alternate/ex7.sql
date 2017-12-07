CREATE VIEW menuItemView AS SELECT menuNo, menuName, cost, price, (price - cost) as revenue FROM menuItem;
CREATE VIEW ingredientView AS SELECT ingredientNo, ingredientName, dateOfPurchase, dateOfExpiry, cost, quantity, (quantity * cost) as value FROM ingredients;
CREATE VIEW inventoryView AS SELECT inventoryNo, inventoryName, cost, quantity, (quantity * cost) as value FROM inventory;
