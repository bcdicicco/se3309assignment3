INSERT INTO menuitem VALUES (6, "Strawberry_Pie", 1.50, 14.99);

INSERT INTO ingredients (ingredientNo, supplierNo)
SELECT 2, (SELECT supplierNo FROM supplier WHERE supplierNo=1) as supplierNo;

INSERT INTO menuItem (menuNo, menuName) VALUES (7, "Pizza");