CREATE OR REPLACE STORAGE INTEGRATION s3_snowpipe_integration
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = S3
ENABLED = TRUE
STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::074116122235:role/aaryan-s3-snowpipe-project-role'
STORAGE_ALLOWED_LOCATIONS = ('s3://aaryan-snowflake-project-bucket/');
