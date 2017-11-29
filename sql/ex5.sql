SELECT * FROM orderreferencemenu
WHERE orderNo > 5;

SELECT count(orderNo) as orders_between_time
FROM restaurantorder
WHERE  orderTime between "17:00:00" and "17:59:59";

SELECT ingredientNo, ingredientName, dateOfExpiry from ingredients ORDER BY dateOfExpiry Asc LIMIT 0, 1000;

SELECT menuNo, menuName, price-cost as profit from menuItem ORDER BY profit desc LIMIT 0, 1000;

SELECT r.orderNo as orderNo, r.orderTime as orderTime, r.orderDate as orderDate, SUM(m.price) as subtotal, SUM(m.price * 0.13) as tax, SUM(m.price * 0.13 + m.price) as total
FROM restaurantorder r
JOIN orderreferencemenu o ON r.orderNo = o.orderNo
JOIN menuItem m ON o.menuNo = m.menuNo
GROUP BY r.orderNo;

SELECT ingredientNo, COUNT(menuNo) from menureference
GROUP BY ingredientNo;
