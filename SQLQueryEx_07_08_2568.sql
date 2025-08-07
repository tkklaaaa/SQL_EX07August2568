-- แบบฝึกหัด SQL ใช้ฐานข้อมูล  Minimart
-- 1. สินค้าที่มีราคา 15 บาท
-- 2. สินค้าที่มีจำนวนคงเหลือในสต๊อกต่ำกว่า 250
-- 3. รหัสสินคา ชื่อสินค้าที่เลิกจำหน่ายแล้ว
-- 4. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีราคามากกว่า 100
-- 5. รหัสสินค้า และราคาของยางลบ
-- 6. หมายเลขใบเสร็จ วันที่ และ ราคารวม ของใบเสร็จที่ออกก่อนวันที่ 15 ก.พ.
-- 7. รหัสสินค้า ชื่อสินค้า ที่มีจำนวนคงเหลือตั้งแต่ 400 ขึ้นไป
-- 8. รหัสสินค้า ชื่อสินค้า ราคา และ จำนวนคงเหลือ ของแชมพู,แป้งเด็ก,ดินสอ,ยางลบ
-- 9. รายละเอียดของสินค้าประเภทเครื่องเขียน
-- 10. รหัสประเภทสินค้า ชื่อประเภท และรายละเอียดของ สินค้าประเภทเครื่องสำอาง
-- 11.คำนำหน้า ชื่อ นามสกุล ของพนักงานที่เป็น Sale Representative
-- 12. รหัสพนักงาน ชื่อพนักงาน ชื่อผู้ใช้ รหัสผ่าน ของพนักงานทุกคน
-- 13. ชื่อผู้ใช้ และรหัสผ่านของพนักงานที่ชื่อก้องนิรันดร์
-- 14. รหัสพนักงานที่ออกใบเสร็จหมายเลข 3
-- 15. รหัสสินค้า ชื่อสินค้า ราคา ของสินค้าที่มีรหัสประเภท 2, 4

select * from Products
where UnitPrice = 15;

select * from Products
where UnitsInStock < 250;

select * from Products
where Discontinued = 1;

select ProductID,ProductName,UnitPrice
from Products
where UnitPrice > 100;

select ProductID, UnitPrice
from Products
where ProductName = 'ยางลบ';

select ReceiptID, ReceiptDate, TotalCash
from Receipts
where ReceiptDate < '2023-02-15';

select ProductID, ProductName
from Products
where UnitsInStock >= 400;