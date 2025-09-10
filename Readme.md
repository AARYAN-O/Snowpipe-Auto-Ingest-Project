# Snowpipe Auto Ingest Project

This project demonstrates **continuous ingestion and transformation** of data into Snowflake using:

- **S3 + Storage Integration** (secure external stage)
- **Snowpipe with Auto-ingest** (continuous loading from S3)
- **Streams** (Change Data Capture / CDC)
- **Tasks** (scheduled transformations)

---

## 📌 Flow
1. Data arrives in **S3 bucket** → `aaryan-snowflake-project-bucket`
2. **Snowpipe** auto-ingests into **staging table (`ADIDAS_SALES_STG`)**
3. A **Stream** tracks changes in the staging table
4. A **Task** runs every 1 minute, transforming and loading data into the **curated table (`ADIDAS_SALES_CURATED`)**

---

## 📂 Folder Structure
- `sql/` → All SQL scripts
- `data/` → Sample CSV file for ingestion

---

## 🚀 Steps to Run

### 1. Database & Schema
```sql
CREATE OR REPLACE DATABASE SNOWPIPE_AUTO_INGEST;
USE DATABASE SNOWPIPE_AUTO_INGEST;

CREATE OR REPLACE SCHEMA SNOWPIPE_AUTOINGEST_SCHEMA;


snowpipe-auto-ingest/
│
├── README.md
├── sql/
│   ├── 01_database_schema.sql
│   ├── 02_storage_integration.sql
│   ├── 03_stage.sql
│   ├── 04_pipe.sql
│   ├── 05_tables.sql
│   ├── 06_streams.sql
│   └── 07_tasks.sql
└── data/
    └── Adidas_US_Sales_Datasets.csv   # sample file to upload to S3

<img width="1911" height="826" alt="image" src="https://github.com/user-attachments/assets/9fe8fce8-b1c0-4311-ae23-e7f319c9d907" />

