# Employee Management Database 

## Overview
This project, is a MySQL database designed to manage employee information.  
It demonstrates fundamental database operations such as creating tables, inserting data, and performing various SQL queries for sorting, filtering, grouping, and calculations.

## Database Structure
**Database Name:** lab6  
**Table Name:** Employees

### Table Columns
| Column Name      | Data Type     | Description                              |
|------------------|---------------|------------------------------------------|
| EmpID            | DECIMAL(3,0)  | Unique employee ID (Primary Key)         |
| EmpName          | VARCHAR(50)   | Employee’s full name                     |
| Nationality      | VARCHAR(30)   | Employee’s nationality                   |
| Qualification    | VARCHAR(20)   | Academic qualification                   |
| Salary           | DECIMAL(7,2)  | Monthly salary (must be > 0)             |
| AppointmentDate  | DATE          | Hiring date                              |
| Experience       | DECIMAL(3,0)  | Years of experience                      |
| Occupation       | VARCHAR(30)   | Job title or position                    |

## Features and Queries
The program demonstrates the following SQL operations:

- **Sorting**
  - List employees by name in ascending order
  - List employees by salary in descending order

- **Filtering and Distinct Values**
  - Display unique nationalities
  - Display distinct salary values

- **Calculations**
  - Increase salaries by a fixed amount
  - Increase salary by 200 for Ahmad Saleh only
  - Display 10% bonus for each employee
  - Calculate yearly salaries

- **Aggregation**
  - Calculate total salary by nationality
  - Calculate average experience by qualification

## Learning Objectives
This project helps you understand:
- How to create and define database tables
- How to insert and manipulate data
- How to use ORDER BY, DISTINCT, and WHERE clauses
- How to perform arithmetic and aggregate SQL operations

## Usage
1. Run the SQL file in MySQL Workbench or MySQL command line.
2. Execute each query sequentially to view the results.
3. Modify or expand the data as needed for additional testing.
