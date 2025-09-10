CREATE OR REPLACE STAGE ADIDAS_SALES_STAGE
URL='s3://aaryan-snowflake-project-bucket/'
STORAGE_INTEGRATION = s3_snowpipe_integration;
