Description:
Implemented a real-time data ingestion pipeline using Snowflake Snowpipe Auto-Ingest, tightly integrated with AWS services for secure and automated data loading. Configured IAM roles and policies to ensure secure access, leveraged Amazon S3 for raw data storage, and used SNS event notifications to trigger ingestion into Snowflake.

Key Contributions:

Designed and deployed Snowpipe Auto-Ingest pipelines to stream files from S3 into Snowflake with minimal latency.

Configured AWS IAM roles and trust relationships to securely connect Snowflake with AWS resources.

Built and managed Amazon S3 buckets for raw and curated data storage.

Integrated AWS SNS event notifications with Snowflake to enable automatic ingestion triggers.

Created Snowflake databases, schemas, and tables optimized for querying and downstream analytics.

Automated deployment of DDL & DML scripts via CI/CD for consistent and version-controlled database changes.

Implemented monitoring, error handling, and logging to ensure pipeline reliability.


Tech Stack:

Cloud: AWS (IAM, S3, SNS)

Data Warehouse: Snowflake (Snowpipe, Stages, Storage Integrations)

Automation & Orchestration: Apache Airflow, CI/CD (GitHub Actions / Azure DevOps / Jenkins)

Languages & Tools: Snowflake SQL, Python


Impact:
✅ Reduced ingestion latency to near real-time, enabling faster analytics and decision-making.
✅ Enhanced data security and governance with IAM-based access controls.
✅ Improved pipeline reliability and reduced manual intervention by 80%, boosting overall efficiency.
