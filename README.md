# Fitness Database

## Table of Contents
1. [Introduction](#introduction)
2. [Project Structure](#project-structure)
3. [Setup](#setup)
4. [Usage](#usage)
5. [Contributors](#contributors)

## Introduction
This project was developed by Eduardo Peretto and Fernando Sulzbach as part of the course "Fundamentals of Databases" at UFRGS. The aim of the project is to create a database for a fitness project, where data such as the calories and nutrients from meals or foods can be obtained through queries.

## Project Structure
The repository consists of the following files:

- `create_tables.sql`: Contains SQL statements to create the tables for modeling foods and meals.
- `calories_procedures.sql`: Contains SQL procedures related to calorie calculations.
- `example_dataset.sql`: Provides an example dataset to populate the database.
- `example_queries.sql`: Contains example queries to retrieve data from the database.

## Setup
To set up the database, follow these steps:

1. Choose a database management system (DBMS) that accepts SQL, such as SQLite, MySQL, PostgreSQL, etc.
2. Execute the SQL statements in `create_tables.sql` to create the necessary tables.
3. Execute the SQL statements in `calories_procedures.sql` to set up the required procedures.
4. Populate the database using the example dataset provided in `example_dataset.sql`.

## Usage
You can run the example queries provided in `example_queries.sql` to retrieve data from the database and see how it works.

### Example
```sql
-- Example query to retrieve all foods with their calorie information
SELECT * FROM Foods;
```

## Contributors
- Eduardo Peretto
- Fernando Sulzbach
