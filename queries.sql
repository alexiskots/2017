SELECT Motherboard_Mobo.mobo_model,Motherboard_Mobo.mobo_socket,Central_Processing_Unit.cpu_socket_name,COUNT(*)
FROM Motherboard_Mobo,Central_Processing_Unit
WHERE Motherboard_Mobo.mobo_socket=Central_Processing_Unit.cpu_socket_name
ORDER BY COUNT(*) ASC;

SELECT AVG(Ssalary_amount),Ssalary_month,Ssalary_year
FROM S_SALARY
WHERE Ssalary_month >=3 AND Ssalary_year() ;
SELECT AVG(Jsalary_amount),Jsalary_month,Jsalary_year
FROM J_SALARY
WHERE Jsalary_month >=3 AND Jsalary_year() ;

SELECT hd_model_id ,hd__capacity,hd_price,hd_category,order_products
FROM HARD_DRIVE_HD,CUSTOMER_ORDER
WHERE hd_model_id = order_products;

SELECT count(*),psu_id_model, psu_power
FROM Power_Supply_Unit_PSU, CUSTOMER_ORDER
WHERE order_products = psu_id_model AND NOT LIKE ‘PLUS%’
ORDER BY COUNT ASC 0,3;

SELECT count(*),.order_customer_id,customer_name , customer_firstname
FROM CUSTOMER_ORDER,CUSTOMER
ORDER BY COUNT(*) ASC LIMIT 0,1;

SELECT Jadministrator_name,Jadministrator_firstname,Sadministrator_name,Jadministrator_firstname
FROM Administrators_JUNIOR,Administrators_SENIOR, SUPERVISION
WHERE senior LIKE Sadministrator_id