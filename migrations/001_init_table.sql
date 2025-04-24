CREATE SCHEMA IF NOT EXISTS sales;

CREATE TABLE sales.iowa_liquor_sales (
    "Invoice/Item Number" TEXT PRIMARY KEY,
    "Date" DATE,
    "Store Number" INT,
    "Store Name" TEXT,
    "Address" TEXT,
    "City" TEXT,
    "Zip Code" TEXT,
    "Store Location" TEXT,
    "County Number" INT,
    "County" TEXT,
    "Category" INT,
    "Category Name" TEXT,
    "Vendor Number" INT,
    "Vendor Name" TEXT,
    "Item Number" INT,
    "Item Description" TEXT,
    "Pack" INT,
    "Bottle Volume (ml)" DECIMAL,
    "State Bottle Cost" TEXT,
    "State Bottle Retail" TEXT,
    "Bottles Sold" INT,
    "Sale (Dollars)" TEXT,
    "Volume Sold (Liters)" DECIMAL,
    "Volume Sold (Gallons)" DECIMAL
);

COPY sales.iowa_liquor_sales FROM '/source/Iowa_Liquor_Sales.csv' DELIMITER ',' CSV HEADER;