/*==================== INSERT TABLES ======================*/

INSERT INTO Customer (customer_id, Name, Email, password, phone_number)
VALUES
 (1, 'Karthikeyan', 'karthi@gmail.com', 'password123', '8789098767'),
(2, 'Razith', 'ra@gmail.com', 'password456', '8876543218'),
(3, 'Ragul', 'ragul@gmail.com', 'ragul1234', '8978923456'),
(4, 'sharma', 'sh@gmail.com', 'sharma3454', '9023456789'),
(5, 'shushmitha', 'nira@gmail.com', 'nira12345', '9090876543'),
(6, 'Nira', 'vai@gmail.com', 'karthi12345', '8899887766');


INSERT INTO Product (product_id, product_name, price, stock) VALUES
(101, 'Hallmark Small Gift Box', 350, 100),
(115, 'Baby doll', 800, 200),
(202, 'remote car', 960, 150),
(223, 'Flower Bouquet',530, 250),
(333, 'Luxury Watch', 2500, 50),
(623, 'Smartphone', 10800, 25);


INSERT INTO Orders (order_id, customer_id, product_id, Quantity,total_price,order_date)
VALUES
(1234,1,101,2,700,'2024-09-13'),
(1334,1,115,1,800,'2024-09-13'),
(1145,2,202,3,2880,'2024-06-23'),
(1554,3,223,4,2120,'2023-01-24'),
(1678,4,333,1,2500,'2022-02-13'),
(1900,5,623,1,10800,'2024-09-24'),
(1903,5,333,1,2500,'2023-09-24'),
(1913,6,115,1,800,'2020-01-24');



INSERT INTO Shipping(shipping_id, customer_id, order_id, shipping_address, city, postal_code, shipping_date, delivery_date)
VALUES
(76777, 1, 1234, 'Balamurugannagar', 'Madhurai', 639113, '2024-09-14', '2024-09-20'),
(76788, 1, 1334, 'Balamurugan nagar', 'Madhurai', 639113, '2024-09-14', '2024-09-21'),
(78900, 2, 1145, 'Gandhipuram', 'Karur', 639005, '2024-06-23', '2024-06-29'),
(77888, 3, 1554, 'Gandhinagar', 'Velachery', 600042, '2023-01-24', '2023-01-30'), 
(77901, 4, 1678, 'Anna Nagar', 'Erode', 639003, '2022-02-13', '2022-02-19'),
(77876, 5, 1900, 'Balamurugannagar', 'Karur', 639005, '2024-09-25', '2024-09-30'),
(69876, 5, 1903, 'Balamurugannagar', 'Karur', 639005, '2023-09-24', '2023-09-30'),
(56778, 6, 1913, 'Balamurugan nagar', 'Erode', 639003, '2020-01-24', '2020-01-27');

INSERT INTO Wishlist ( wishlist_id ,customer_id,added_product ) 
VALUES
(9001,1,'Hallmark Small Gift Box,Baby doll'),
(9220,2,'remote car'),
(9223,3,'Flower Bouquet'),
(9444,4, 'Luxury Watch'),
(9876,5,'Smartphone,Luxury Watch'),
(7788,6,'Baby doll');


INSERT INTO Payment ( payment_id,customer_id , order_id, payment_method,payment_status,amount)
values
(99551,1,1234,"UPITransaction","Success",700),
(99121,1,1334,"UPITransaction","Success",800),
(45811,2,1145,"CASH ON DELIVERY","Pending",2880),
(66991,3,1554,"UPITransaction","Success",2120),
(89822,4,1678,"DEBITCARD","Success",2120),
(68555,5,1900,"CASH ON DELIVERY","Pending",10800),
(87998,5,1903,"UPITransaction","Success",2500),
(66778,6,1913,"CREDITCARD","Success",800);


INSERT INTO Tracking(tracking_id, order_id, tracking_status, estimated_delivery)
VALUES
(111, 1234, 'DELIVERED', '2024-09-20'),
(444, 1334, 'DELIVERED', '2024-09-21'),
(333, 1145, 'INTRANSIT', '2024-06-29'),
(222, 1554, 'OUTOF DELIVERY', '2023-01-30'),
(555, 1678, 'DELIVERED', '2022-09-19'),
(666, 1900, 'INTRANSIT', '2024-09-30'),
(777, 1903, 'DELIVERED', '2023-09-30'),
(888, 1913, 'DELIVERED', '2020-01-27') ;


INSERT INTO Rating (rating_id, customer_id, product_id, rating, review)
VALUES
(908760,1,101,5,"Excellent product! Highly recommend"),
(906780,1,115,4,"Excellent product! Highly recommend"),
(912360,2,202,2,"Not satisfied with the quality"),
(967560,3,223,4,"Good value for money"),
(923460,4,333,1,"Terrible product, do not buy"),
(889777,5,623,3,"Good value for money"),
(566667,5,333,3,"good"),
(676656,6,115,5,"Good value for money");