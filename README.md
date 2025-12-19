# DBT-Snowflake-Airflow-Movie-dataset
DBT Snowflake Main Code : dbt-dag/dags/movie

This repository demonstrates a **data engineering workflow** using **dbt**, **Snowflake**, and **Airflow**, applied to the **Movie dataset**.

---
💼 **Business Problem**  
Analysts and data engineers often need reliable pipelines to transform raw datasets into **analysis-ready tables**. This Movie Streaming dataset project automates data ingestion, ensures data quality, and enable insights without manual intervention. This project addresses the end-to-end workflow from **raw data in Snowflake** to **analysis-ready tables** via dbt models orchestrated with Airflow.

⚙️ **SYSTEM DESIGN**  
<img width="1418" height="919" alt="DBT Architecture drawio" src="https://github.com/user-attachments/assets/4fb98f47-54c0-4494-af79-ad74ccaa78fa" />

⚙️ **Methodology**  

1. **Data Ingestion & Loading**  
   - Loaded Movie CSV datasets into Snowflake  
   - Configured dbt seeds for small reference tables
   - Used Airflow DAGs to automate dbt runs on a schedule
<img width="1382" height="1010" alt="Screenshot 2025-12-19 at 12 26 53 PM" src="https://github.com/user-attachments/assets/85edcc9f-a784-4941-b083-080c04f8b09e" />

2. **Data Transformation with dbt**  
   - Created **dimension (`dim`) tables**: movies, users, tags.  
   - Created **fact (`fct`) tables**: ratings, genome scores.  
  - **Snapshots**: tracked historical changes in source data to manage slowly changing dimensions.
<img width="1910" height="835" alt="s (snapshot)- 1" src="https://github.com/user-attachments/assets/009db2cc-d5c5-41e2-a560-d894e2370d2d" />

  - **dbt Model Types**:  
    - **Table**: full materialization for core tables.  
    - **View**: lightweight transformations for analysis.  
    - **Incremental**: processed only new or updated records to optimize large datasets.  
    - **Ephemeral**: temporary models for reusable in-memory transformations.  
    - **Seed**: preloaded static reference datasets.  
    - **Analysis**: queries for exploration and insights.
<img width="1823" height="880" alt="s- anlaysis" src="https://github.com/user-attachments/assets/ee61e187-bf51-480f-9eba-5f2a94fcc5b6" />
      
   - Applied dbt tests to ensure data quality.

3. **Workflow Orchestration with Airflow**  
   - Scheduled dbt runs daily via Airflow DAGs.
<img width="965" height="766" alt="Screenshot 2025-12-18 at 10 57 20 PM" src="https://github.com/user-attachments/assets/8a6997eb-e64d-4893-8836-dee1421f7f55" />

🧠 **Skills & Tech Stack**  
- **Languages & Libraries**: SQL
- **Tools**: dbt (models, seeds, tests), Airflow DAGs, Snowflake (warehouse, database, schemas)  
- **Concepts**: ELT pipelines, data modeling, orchestration

📈 **Results**
- Developed a fully automated **ELT pipeline** producing **Snowflake analytics tables** for analysis.

💼 **Business Recommendation**  
- Snowflake + dbt pipelines allow analysts to **quickly explore data and generate insights**. 
- Automated pipelines reduce errors and ensure reproducible metrics for decision-making.  

🚀 **Outcome**  
- Hands-on experience with **modern data engineering tools**.  
- Delivered a **production-ready data pipeline** with automated scheduling, testing, and analytics.  
- Developed skills in **ELT design, Snowflake optimization, dbt modeling, and Airflow orchestration**.
