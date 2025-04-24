SELECT show_trgm('example');

EXPLAIN ANALYZE
    SELECT "Vendor Name" AS vendor_name
    FROM sales.iowa_liquor_sales
    WHERE "Vendor Name" LIKE 'Disaronno%';

BEGIN;
    EXPLAIN ANALYZE
        UPDATE sales.iowa_liquor_sales
        SET "Vendor Name" = 'Some new vendor'
        WHERE "Item Number" BETWEEN 200 AND 230;
ROLLBACK;

EXPLAIN ANALYZE
    SELECT "Item Description" AS item_description
    FROM sales.iowa_liquor_sales
    WHERE "Item Description" LIKE '%Crystal%';

DROP INDEX IF EXISTS sales.idx_vendor_name_trgm;
DROP INDEX IF EXISTS sales.idx_item_description_trgm;