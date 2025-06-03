DROP DATABASE IF EXISTS ShopDB;
CREATE DATABASE ShopDB;
USE ShopDB;

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN input_warehouse_id INT)
BEGIN
    SELECT 
        p.Name AS ProductName,
        pi.Amount AS Quantity
    FROM 
        ProductInventory pi
    JOIN 
        Products p ON pi.ProductID = p.ID
    WHERE 
        pi.WarehouseID = input_warehouse_id;
END //

DELIMITER ;