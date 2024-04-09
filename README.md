# Hospital Database Management System Using Microsoft SQL Server

This repository contains SQL scripts for setting up and populating a hospital database. The database schema, tables, and initial data are defined using Data Definition Language (DDL) statements in `DDL.sql`. Data Manipulation Language (DML) statements in `DML.sql` are used to insert data into the tables.

## DDL.sql

The `DDL.sql` file contains SQL statements for defining the database schema, including tables, constraints, and relationships. Below is an overview of the content:

- Creation of tables such as `PatientInformation`, `DoctorInformation`, `NurseInformation`, etc.
- Definition of relationships between tables using foreign key constraints.
- Specification of primary keys and unique constraints.
- Creation of views, indexes, and other database objects.

## DML.sql

The `DML.sql` file contains SQL statements for inserting initial data into the tables defined in the `DDL.sql` file. Here's a summary of what it includes:

- Insertion of sample patient information, doctor information, nurse information, etc.
- Population of appointment data, billing information, medical records, etc.
- Initialization of pharmacy data, medical procedures, and other relevant information.

## Queries

The SQL queries included in the project are as follows:

- **AndQuery**: Demonstrates the usage of the `AND` operator in SQL.
- **NotInQuery**: Utilizes the `NOT IN` clause to filter records.
- **BetweenQuery**: Retrieves records within a specified range using the `BETWEEN` keyword.
- **LikeQuery**: Filters records based on a pattern match using the `LIKE` operator.
- **BetweenAndQuery**: Combines the `BETWEEN` and `AND` operators for more complex filtering.
- **CountQuery**: Calculates the total number of patients admitted.
- **AverageQuery**: Computes the average amount paid in billing.
- **MaximumQuery**: Finds the highest billing amount recorded.
- **MinimumQuery**: Determines the earliest admission date among patients.
- **OrderByQuery**: Orders patient information based on date of birth.
- **GroupByQuery**: Groups appointments by doctor ID and counts the number of patients.
- **HavingQuery**: Filters grouped data based on specified conditions.
- **RollupQuery**: Generates subtotals and grand totals for grouped data.
- **GroupingSetsQuery**: Groups data by multiple dimensions using the `GROUPING SETS` clause.
- **CubeQuery**: Computes aggregates for all possible combinations of dimensions using the `CUBE` operator.
- **OverQuery**: Demonstrates the usage of window functions with the `OVER` clause.
- **RankQuery**: Ranks patients by age based on date of birth.
- **ExistsQuery**: Checks for the existence of related records using the `EXISTS` operator.
- **NotExistsQuery**: Filters records where related records do not exist using the `NOT EXISTS` operator.
- **AnyQuery**: Retrieves distinct doctor IDs where appointment dates are greater than any other appointment date.
- **AllQuery**: Retrieves distinct doctor IDs where appointment dates are greater than all other appointment dates.
- **CastQuery**: Converts the `TotalAmount` column to a string data type using the `CAST` function.
- **ConvertQuery**: Formats the `DOB` column into a readable date format using the `CONVERT` function.
- **DateQuery**: Extracts the date part from the `DateAndTime` column using the `CAST` function.
- **TimeQuery**: Extracts the time part from the `DateAndTime` column using the `CAST` function.
- **AnalyticsQuery**: Applies various analytics functions such as `COUNT`, `MIN`, `MAX`, `LEAD`, `LAG`, and `PERCENT_RANK` to analyze doctor appointments.
- **JoinTableQuery**: Joins patient information with appointment data based on patient ID.
- **JoinWhereQuery**: Joins patient information with appointment data and applies a filter based on appointment date.
- **JoinOrderByQuery**: Joins patient information with appointment data and orders the results by appointment date.
- **JoinGroupByHavingQuery**: Joins patient information with appointment data, groups the results by patient, and applies a filter based on the number of appointments.
- **SubQuery**: Retrieves patient information for the latest appointment date using a subquery.
- **UnionQuery**: Combines the results of two queries and returns distinct values.
- **CaseQuery**: Categorizes appointment times into morning, afternoon, and evening using a `CASE` statement.
- **MergeTableQuery**: Illustrates the usage of the `MERGE` statement to insert or update data in a target table.

## Usage

To set up the hospital database management system, follow these steps:

1. Execute the SQL statements in `DDL.sql` to create the database schema.
2. Run the SQL statements in `DML.sql` to populate the tables with initial data.

## License

This project is licensed under the [MIT License](LICENSE.txt).


## Authors

- [@OptimisticNurul](https://github.com/OptimisticNurul)


# Hi, I'm Kazi Md Nurul Islam! 👋


## 🚀 About Me

I'm a Full Stack Developer, Graphic Designer, and Digital Marketer...

🧠 Currently learning more...


## 🛠 Skills

As a Full Stack Developer:

    C#, Microsoft Sql Server, Javascript, HTML, CSS, ASP.NET Core, ASP.NET Core API, Angular, React.js, MAUI...

As a Graphic Designer:

    Photoshop Design, illustration, Logo Design, Banner / Brochure / Flyer Design, Magazine / Book Cover Design, Business Card Design, Photo Retouch, Clipping Path, Background Removing, WaterMark Removing...

As a Digital Marketer:

    Search Engine Optimization (SEO), Social Media Marketing, Lead Generation, Email Marketing, Web Scraping...

    
## 🔗 Links

[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://github.com/OptimisticNurul)

[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/optimisticnurul/)


## Support

For support, email info.kazwish@gmail.com or join our Slack channel.

