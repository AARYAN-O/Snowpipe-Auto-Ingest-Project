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

<img width="1903" height="888" alt="image" src="https://github.com/user-attachments/assets/64628c4a-edfe-438a-bae5-a42cbe700da7" />

<img width="1911" height="826" alt="image" src="https://github.com/user-attachments/assets/9936e155-f554-45e0-bc1d-1cde61c51c04" />

<img width="1877" height="830" alt="image" src="https://github.com/user-attachments/assets/dff72e8a-c77d-428d-a3cc-7f6bd88321ee" />

<img width="1892" height="822" alt="image" src="https://github.com/user-attachments/assets/30a4a708-c6c5-478f-91b0-5450f95e6ff9" />

<img width="1121" height="298" alt="image" src="https://github.com/user-attachments/assets/9722abc6-709b-426a-b270-bde20498ff0b" />

<img width="1767" height="697" alt="image" src="https://github.com/user-attachments/assets/7c153c9b-94dd-4e98-b7b6-3905b835a912" />

<img width="1742" height="880" alt="image" src="https://github.com/user-attachments/assets/3ca4e947-e3cd-4217-a683-f36c3d5354fa" />

