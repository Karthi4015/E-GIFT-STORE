-- STORED PROCEDURE

-- Retrieve the Average Product Price:
DELIMITER $$

CREATE PROCEDURE getAverageProductPrice()
BEGIN
    SELECT AVG(price) AS average_price FROM Product;
END $$

DELIMITER ;

CALL getAverageProductPrice();

DELIMITER $$

-- retrieve orders by customer location
DELIMITER $$

CREATE PROCEDURE GetOrdersByLocation(IN city_name VARCHAR(50))
BEGIN
    SELECT 
        Orders.order_id, 
        Customer.Name, 
        Product.product_name, 
        Shipping.shipping_address, 
        Shipping.city
    FROM 
        Orders
    JOIN 
        Customer ON Orders.customer_id = Customer.customer_id
      WHERE 
        Shipping.city = city_name;
END $$

DELIMITER ;

CALL GetOrdersByLocation('Erode');