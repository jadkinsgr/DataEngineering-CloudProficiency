# Data Engineering and Cloud Proficiency 🧑‍💻

Welcome to the repository! This project aims to provide a comprehensive solution for ingesting files, creating catalogs, and generating reporting views for finalized combined tables of data.

## Table of Contents

1. Introduction
2. Ingesting Files
3. Creating Catalogs
    *   SourceSystem Catalog
    *   Staging Catalog
    *   Reporting Catalog
4. Creating Reporting Views

## Introduction

In this project, we aim to streamline the process of handling files and generating meaningful reports from the data they contain. By following the steps outlined in this Readme, you'll be able to efficiently ingest files, organize them into catalogs, and generate reporting views for analysis.

## Ingesting Files

To ingest files into the system, follow these steps:

1. Step 1: Obtain the data source files - this can occur from SSIS, or even flat file ingestion.
2. Step 2: Prep formats and set up a data ingestion cycle.
3. Step 3: Rinse and repeat for every new source file

## Creating Catalogs

In this project, we organize our data into three catalogs: SourceSystem, Staging, and Reporting.

### SourceSystem Catalog

The SourceSystem catalog serves as the initial storage for ingested files. Files may be unstructured, not normalized and subject to errors from source system. Follow these steps to create the SourceSystem catalog:

1. Create the catalog.
2. Create the schema.
3. Create the tables.

### Staging Catalog

The Staging catalog acts as an intermediate storage for the data before it is transformed for reporting purposes. Follow these steps to create the Staging catalog:

1. Leveraging the source tables in the first phase: Check for quality problems and address any issues - setting up a notification at this stage is ideal so errors are caught early. Think - duplicates, bad source data, or incorrect data types.
2. Normalize the source tables, each source system column may have different names for the same thing. Normalize it to pass it on to the next phase.

For example:

| Source System | Column | Normalized column name |
| ---| ---| --- |
| Epic | PatientID | PatientID |
| Meditech | PatientIdentificationCD | PatientID |
| Cerner | PATIENT\_CD | PatientID |
| Allscripts | patient | PatientID |

1. Produce finalized staging tables and potentially aggregate multiple source tables as needed. Think Clinical Encounter Tables from (Meditech, Cerner, Epic, Allscripts etc), as you combine multiple sources together remember context. For example: PatientID must be a integer and casted as such if brought in as a string from the source system.

  

### Reporting Catalog 📊

The Reporting catalog contains the finalized combined tables of data that are ready for reporting. Follow these steps to create the Reporting catalog:

1. Leverage you normalized tables to create a reporting table or view for business intelligence analysts, data scientists and clients that provide one centralized resource that contains all the data they may need to make informed stategic decisions.

##