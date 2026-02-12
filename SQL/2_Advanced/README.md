# Advanced
## 1️⃣ Data types
- `INT` - Integers, numeric, numbers with 4 bytes
- `NUMERIC` - Numbers which can cosist of decimal numbers 
- `VARCHAR(n)` - Variable string with length n
- `TEXT` - A steing of characters
- `BOOLEAN` - Boolean values of TRUE/FALSE/NULL
- `DATE` - A specific date without time
- `TIMESTAMP` - Specific date and time without time zone
- `TIMESTAMP WITH TIME ZONE` - Date & Time with zone information

---

## 2️⃣Manipulate tables
- `CREATE TABLE`: Create the new table
- `INSERT INTO`: Insert values into the table
- `ALTER TABLE`: Alters table
    - `ADD`: Add column
    - `RENAME COLUMN`: Renames the column
    - `ALTER COLUMN`: Alter the columns
    - `DROP COLUMNS`: Delete the column
- `DROP TABLE`: Delete table (Be extremly careful)

---

## 3️⃣ Database Load
- Download CSV & SQL files
- Create tables in database
- How to load database 
- How to connect `POSTGRE SQL` to VS Code
- Key Constraints
    - Primary key
    - Foriegn key
    - Super key
    - Unique key
- Load data into Tables

---

## 4️⃣ Date Functions 
- `::DATE`: Converting to a date by removing the time portion
- `AT TIME ZONE`: Convert timezone to specified timezone
- `EXTRACT`: Gets specific date part
    - MONTH
    - DAY
    - YEAR
- Refer [POSTGRE Documentations For time zones](https://www.postgresql.org/docs/current/datatype-datetime.html#DATATYPE-TIMEZONES)

---

## 5️⃣ Case Expression
A case expression in SQL is a way to apply condition logic within your SQL queries
- `CASE`: Begins the expression
- `WHEN`: Specifies the condition to look at
- `THEN`: What to do when condition is true
- `ELSE`: Else condition
- `END`: Concludes the expression

---

## 6️⃣ Subqueries & CTEs
- Subqueries
- Common table expressions
- Organising & simplifying complex queries

### Subquery
- Query within the query
- It can be used in several places
    - `SELECT`, `FROM`, `WHERE`, `HAVING` CLAUSES
- It executes first then pass the result to the outer query
- Used to perofrm query before main query

### CTEs - Common Table Expression
- Temporary result set that can reference within a `SELECT` `INSERT` `UPDATE` or `DELETE` statement
- Exist only during the execution of the query
- It is a defined query that can be refrenced by main query or CTEs
- `WITH` starts the CTEs

---

## 7️⃣ Union Operators
- Combine resulys sets of two or more `SELECT` statements
- `UNION`: Removes duplicates
- `UNION ALL`: Print with duplicates
- Each `SELECT` statement should have the same number of columns within

### UNION
- Combines results from two or more `SELECT` statements
- They need to have same amount of columns, also should match data types
- Get rid of duplicate rows

### UNION ALL
- Combines results from two or more `SELECT` statements
- They need to have same amount of columns, also should match data types
- Duplicate rows also included unlike `UNION`
