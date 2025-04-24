CREATE EXTENSION IF NOT EXISTS pg_bigm;

CREATE INDEX IF NOT EXISTS idx_store_location_bigm ON sales.iowa_liquor_sales USING gin ("Store Location" gin_bigm_ops);