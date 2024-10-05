create schema egift;
use egift;

/* ======================= TABLES ========================*/


CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) ,
    password VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15)
    );
    
    SELECT * FROM Customer;
    
    CREATE TABLE Product (
    product_id INT PRIMARY KEY ,
    product_name VARCHAR(100) NOT NULL,
    price INT NOT NULL,
    stock INT NOT NULL
);

   SELECT * FROM  Product;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    Quantity INT,
    total_price int, 
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

 SELECT * FROM  orders;

 CREATE TABLE Shipping (
    shipping_id INT PRIMARY KEY ,
    customer_id INT NOT NULL,
    order_id INT NOT NULL,
    shipping_address VARCHAR(30),
    city VARCHAR(50) NOT NULL,
    postal_code VARCHAR(10),
    shipping_date DATE,
    delivery_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

SELECT * FROM  Shipping;

CREATE TABLE Wishlist (
    wishlist_id INT PRIMARY KEY ,
    customer_id INT NOT NULL,
    added_product varchar (200) ,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

SELECT * FROM  Wishlist  ;

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY ,
    customer_id INT NOT NULL,
    order_id INT NOT NULL,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50) ,
    amount INT,
     FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

SELECT * FROM Payment;


CREATE TABLE Tracking (
    tracking_id INT PRIMARY KEY ,
    order_id INT NOT NULL,
    tracking_status VARCHAR(50),
    estimated_delivery DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

select * from  Tracking ;

CREATE TABLE Rating (
    rating_id INT PRIMARY KEY ,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    rating INT CHECK (rating >= 1 AND rating <= 5),
    review TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

SELECT * FROM Rating;