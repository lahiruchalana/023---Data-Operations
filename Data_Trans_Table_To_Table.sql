CREATE SCHEMA cog_test_v4;
CREATE SCHEMA cog_test_v5;


-- v4 table create and data inserting start

CREATE TABLE cog_test_v4.item_v4 (
	itemId int,
    itemName varchar(125),
    category int,
    descriptionOfItem text
);

INSERT INTO cog_test_v4.item_v4
VALUES (1, "Heavy duty mobility scooter", 2, "This scooter helps for transportation.");

INSERT INTO cog_test_v4.item_v4 
VALUES (3, "Litemighweight mobility scooter", 2, "This scooter helps for transportation."), 
		(4, "Slingshot", 5, "This scooter helps for transportation."), 
        (5, "Hospital bed", 9, "This scooter helps for transportation."),
        (6, "Extra large heavy mobility scooter", 2, "This scooter helps for transportation."),
        (7, "Knee scooter", 2, "This scooter helps for transportation."),
        (8, "Double Stroller", 7, "This Stroller helps for transportation.");

-- v4 table create and data inserting end


-- v5 table create and data inserting start

CREATE TABLE cog_test_v5.item_v5 (
	itemId int,
    itemName varchar(125),
    category int,
    descriptionOfItem text,
    newValue varchar(255)
);

-- or use 

CREATE TABLE cog_test_v5.item_v5 LIKE cog_test_v4.item_v4;
        
-- v5 table create and data inserting end


-- data transfer from table to another table start

INSERT INTO cog_test_v5.item_v5 SELECT * FROM cog_test_v4.item_v4;

-- data transfer from table to another table end


-- clear all data in new table start

DELETE FROM cog_test_v5.item_v5;

-- clear all data in new table end


-- data transfer from table to another table start

INSERT INTO cog_test_v5.item_v5 SELECT * FROM cog_test_v4.item_v4 
WHERE cog_test_v4.item_v4.category = 2;

-- data transfer from table to another table end

-- data transfer from table to another table start

INSERT INTO cog_test_v5.item_v5 SELECT * FROM cog_test_v4.item_v4 
WHERE cog_test_v4.item_v4.category = 2;

-- data transfer from table to another table end
