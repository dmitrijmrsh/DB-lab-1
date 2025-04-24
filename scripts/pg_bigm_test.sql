SELECT show_bigm('example');

EXPLAIN ANALYZE
    SELECT "Store Location" AS store_location
    FROM sales.iowa_liquor_sales
    WHERE "Store Location" LIKE '%WASHINGTON%';

BEGIN;
    EXPLAIN ANALYZE
        UPDATE sales.iowa_liquor_sales
        SET "Store Location" = 'Updated store location'
        WHERE "Date" = '2015-03-03';
ROLLBACK;

DROP INDEX IF EXISTS sales.idx_store_location_bigm;