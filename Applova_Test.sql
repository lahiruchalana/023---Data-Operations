USE nyle;

CREATE TABLE customers (
	custId INTEGER NOT NULL AUTO_INCREMENT,
    custName VARCHAR(255) NOT NULL,
    custPhoneNo VARCHAR(20) NOT NULL,
    custCity VARCHAR(255), 
    PRIMARY KEY (custId)
);

SELECT * FROM customers;

INSERT INTO customers (custName, custPhoneNo, custCity)
VALUE ("lahiru", 6165453, "wwwww"), ("chalana", 645453, "wwwww");

CREATE TABLE orders(
	orderId INTEGER NOT NULL AUTO_INCREMENT,
    custId INTEGER NOT NULL,
    orderTotal DECIMAL(9,2) NOT NULL,
    orderDateTime DATETIME NOT NULL,
    PRIMARY KEY (orderId),
    FOREIGN KEY (custId) REFERENCES customers(custId)
);

SELECT * FROM orders;

INSERT INTO orders (custId, orderTotal, orderDateTime)
VALUE (2, 500, "2022-02-12 12:31:25"), (2, 3100, "2021-02-12 12:31:25");

SELECT MAX(sumOfOrdersByCustId) 
FROM (SELECT SUM(orderTotal) AS sumOfOrdersByCustId FROM orders GROUP BY custId) AS t_new;


