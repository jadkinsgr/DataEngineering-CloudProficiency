# Data Engineering and Cloud Proficiency 🧑‍💻

## Welcome to the Repository!

This project is dedicated to delivering a comprehensive solution for file ingestion, catalog creation, and the generation of reporting views for combined data tables. Technologies leveraged in this example include: Amazon web services and a free 14 day trial of databricks.

Slideshow Link 
1. [Tendo]([https://accounts.cloud.databricks.com/workspaces/1179215281469068](https://docs.google.com/presentation/d/15okopOQQMM01EgepdgbQaMBymA6SL1EU4HZDOsSJDhQ/edit?usp=sharing))

Resource Links include: 
1. [Databricks Cloud Console](https://accounts.cloud.databricks.com/workspaces/1179215281469068)
2. [Databricks Workspace](https://dbc-f59dffe9-297c.cloud.databricks.com/onboarding?o=5960597514985596#)
3. [Databricks Adding Data](https://dbc-f59dffe9-297c.cloud.databricks.com/dataingestion/add?o=5960597514985596#)
4. [AWS Console](https://us-east-2.console.aws.amazon.com/console/home?region=us-east-2)

## Table of Contents

1. [Introduction](#introduction)
2. [Ingesting Files](#ingesting-files)
3. [Creating Catalogs](#creating-catalogs)
    * [SourceSystem Catalog](#sourcesystem-catalog)
    * [Staging Catalog](#staging-catalog)
    * [Reporting Catalog](#reporting-catalog)

## Introduction <a name="introduction"></a>

This project aims to streamline the process of handling files and generating meaningful reports from the data they contain. By following the steps outlined in this Readme, you will efficiently ingest files, organize them into catalogs, and generate reporting views for analysis.

## Ingesting Files <a name="ingesting-files"></a>

To ingest files into the system, follow these steps:

1. **Step 1:** Obtain the data source files - this can occur from SSIS, or even flat file ingestion.
2. **Step 2:** Prep formats and set up a data ingestion cycle.
3. **Step 3:** Rinse and repeat for every new source file.

## Creating Catalogs <a name="creating-catalogs"></a>

In this project, we organize our data into three catalogs: **SourceSystem**, **Staging**, and **Reporting**. Optional - Set these up as databases within one catalog.

### SourceSystem Catalog <a name="sourcesystem-catalog"></a>

The **SourceSystem** catalog serves as the initial storage for ingested files. Files may be unstructured, not normalized, and subject to errors from the source system. Follow these steps to create the **SourceSystem** catalog:

1. Create the catalog.
2. Create the schema.
3. Create the tables.

### Staging Catalog <a name="staging-catalog"></a>

The **Staging** catalog acts as an intermediate storage for the data before it is transformed for reporting purposes. Follow these steps to create the **Staging** catalog:

1. Leverage the source tables in the first phase: Check for quality problems and address any issues - setting up a notification at this stage is ideal so errors are caught early. Think - duplicates, bad source data, or incorrect data types.
2. Normalize the source tables. Each source system column may have different names for the same thing. Normalize it to pass it on to the next phase.

   **Example:**

   | Source System | Column                  | Normalized Column Name |
   | -------------- | ----------------------- | ----------------------- |
   | Epic           | PatientID               | PatientID               |
   | Meditech       | PatientIdentificationCD | PatientID               |
   | Cerner         | PATIENT_CD              | PatientID               |
   | Allscripts     | patient                 | PatientID               |

3. Produce finalized staging tables and potentially aggregate multiple source tables as needed. Think Clinical Encounter Tables from (Meditech, Cerner, Epic, Allscripts, etc.). As you combine multiple sources together, remember context. For example, PatientID must be an integer and casted as such if brought in as a string from the source system.

### Reporting Catalog 📊 <a name="reporting-catalog"></a>

The **Reporting** catalog contains the finalized combined tables of data that are ready for reporting. Follow these steps to create the **Reporting** catalog:

1. Leverage your normalized tables to create a reporting table or view for business intelligence analysts, data scientists, and clients. Provide one centralized resource that contains all the data they may need to make informed strategic decisions.

## Price Transparency

Price transparency refers to the practice of making information about the costs of goods and services accessible and understandable to consumers. In the context of healthcare, price transparency involves disclosing the prices of medical procedures, treatments, and services, enabling patients to make more informed decisions about their healthcare expenses.

Python, a versatile programming language, can be employed in a repository designed for web scraping to extract data from various hospitals' websites. Web scraping involves extracting information from websites by automating the retrieval of data from HTML pages. In the case of healthcare price transparency, Python can be utilized to gather pricing information from competing hospitals.

By leveraging Python for web scraping, a repository can systematically collect and organize pricing data from multiple hospitals, allowing clients to compare costs across different healthcare providers. This competitive edge enables individuals, insurance companies, or healthcare organizations to make well-informed decisions based on accurate and up-to-date pricing information.

In summary, price transparency in healthcare involves making cost information accessible to consumers, and Python can be a powerful tool in creating a repository for web scraping that collects pricing data from various hospitals. This approach empowers clients with a competitive advantage by providing them with valuable insights into the costs associated with healthcare services from different providers.

## ETL Standards and Overall efficiency

Efficient ETL (Extract, Transform, Load) processes play a pivotal role in the realm of data management and analytics for several reasons. Firstly, they ensure the timely processing of data, providing up-to-date information crucial for decision-making and operational activities. Moreover, ETL efficiency contributes significantly to maintaining high data quality by addressing issues like inconsistencies or missing data. This, in turn, supports accurate reporting and analysis. The cost savings associated with optimized ETL workflows, stemming from reduced resource utilization and streamlined processes, are noteworthy. Scalability is another key aspect, allowing ETL systems to handle increasing data volumes without compromising performance. Business agility is enhanced as efficient ETL processes enable organizations to swiftly adapt to changing market conditions or implement new strategies. Compliance with regulatory requirements, user satisfaction through timely access to data, seamless integration with other systems, and the facilitation of advanced analytics further underscore the critical importance of ETL efficiency in the successful utilization of data assets within organizations.




