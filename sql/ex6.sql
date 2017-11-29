update restaurantorder
set orderTime = "12:39:32",
orderDate = "2017-11-05"
where orderNo = 1;

update menuitem
set price = cost * 3;

delete from orderreferencemenu
where menuNo in (
select menuitem.menuNo from menuitem
where menuitem.menuNo = 5);

delete from menureference
where menuNo in (
select menuitem.menuNo from menuitem
where menuitem.menuNo = 5);

delete from menuItem
where menuNo = 5;

