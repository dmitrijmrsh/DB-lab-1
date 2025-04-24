CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE INDEX IF NOT EXISTS idx_vendor_name_trgm ON sales.iowa_liquor_sales USING gist ("Vendor Name" gist_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_item_description_trgm ON sales.iowa_liquor_sales USING gin ("Item Description" gin_trgm_ops);