CREATE TABLE restaurantOrder ( OrderNo INT NOT NULL PRIMARY KEY, orderTime TIME(6), orderDate DATE, subtotal double );
CREATE TABLE menuitem ( menuNo INT NOT NULL PRIMARY KEY, menuName VARCHAR(30), cost double, price double );
CREATE TABLE inventory ( inventoryNo INT NOT NULL PRIMARY KEY, inventoryName VARCHAR(30), quantity INT, cost double, supplierNo INT NOT NULL, FOREIGN KEY (supplierNo) REFERENCES supplier(supplierNo) );
CREATE TABLE supplier ( supplierNo INT NOT NULL PRIMARY KEY, supplierName VARCHAR(30), address VARCHAR(70), phoneNo CHAR(10) );
CREATE TABLE ingredients ( ingredientNo INT NOT NULL PRIMARY KEY, ingredientName VARCHAR(30), dateOfPurchase DATE, dateOfExpiry DATE, cost double, quantity INT, supplierNo INT NOT NULL, FOREIGN KEY (supplierNo) REFERENCES supplier(supplierNo) );
CREATE TABLE orderreferencemenu( orderNo int not null, menuNo int not null, PRIMARY KEY (orderNo, menuNo), FOREIGN KEY (orderNo) REFERENCES restaurantorder(orderNo), FOREIGN KEY (menuNo) REFERENCES menuItem(menuNo) );
CREATE TABLE orderreferenceinventory ( orderNo int not null, inventoryNo int not null, PRIMARY KEY (orderNo, inventoryNo), FOREIGN KEY (orderNo) REFERENCES restaurantorder(orderNo), FOREIGN KEY (inventoryNo) REFERENCES inventory(inventoryNo) );
CREATE TABLE menuReference ( menuNo int not null, ingredientNo int not null, PRIMARY KEY (menuNo, ingredientNo), FOREIGN KEY (menuNo) REFERENCES menuItem(menuNo), FOREIGN KEY (ingredientNo) REFERENCES ingredients(ingredientNo) );
