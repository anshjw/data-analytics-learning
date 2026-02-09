# Basics
## 1️⃣ SQL Introduction
- What is SQL?
- CRUD operations
    - Create
    - Read
    - Update
    - Delete
- What are server
- Attributes
- Database
    - Relational
    - Non-relational
- ER Diagram (Entity-Relationship)
- Fact tables
- Dimension tables
- Keys
- Constraints
- Syntax
- NULL Values

---

## 2️⃣ The Basics!  
📊 SQL is an scripting language which often used to perform operations on the database to fetch the required data.
- Keywords
```
SELECT/FROM, LIMIT, DISTINCT, WHERE, --, /**/, OREDER BY
 ```
- Select only required columns
- Dot operator (**.**)
- Limit (limits the number of rows)

---

## 3️⃣ Comparisons
Compare the one attricute to other then show the results according to it.
- Comparison operator
    - =, <>, >, <, >=, <=
- Logical Operator
    - AND, OR, BETWEEN, NOT, & IN
- Practice problem one according to it

---

## 4️⃣ Wildcards & Alias
Wildcards are used to substitute one or more characters in a string
- `%` used with `LIKE` to find the similar characters
- `_` used to find spaced words  

AS - renames a column in a table; a temporary name(alias)
- Make columns more readable
- Make short form for the columns
- Sometimes it does not required to write `AS`

---

## 5️⃣ Operations
Used in SELECT, WHERE, GROUP BY, ORDER BY
- `+`: Adds two numbers 
- `-`: Subrtact two numbers
- `*`: Multiply two numbers
- `/`: Writes quotient after dividing numbers
- `%`: Writes remainder after dividing two numbers

---

## 6️⃣ Aggregation
Used to get the single result from the input values
- `SUM()`: Adds the column values
- `COUNT()`: Count the values in column
- `AVG()`: Prints the average of column
- `MAX()`: Maximum of the column
- `MIN()`: Minimum of the column
- `GROUP BY`: Group rows with similar values
- `HAVING`: Filter query based on aggr functions & grouping

---

## 7️⃣Joins
🔁 Used to establish the connection between two tables using the unique key and foreign key
- Outer Joins
    - `LEFT OUTER JOIN`: Writes the whole data of 1st table and matching from 2nd.
    - `RIGHT OUTER JOIN`:  Writes the whole data of 2nd table and matching from 1st.
    - `FULL OUETR JOIN`: All data from both tables without repetations
- `INNER JOIN`: Writes all the similar content of both the table
- `SLEF JOIN`: Joins the table itself by treating it as another table

---

## ⭐Order Of Execution
`SELECT` -> `FROM/JOIN` -> `WHERE` -> `GROUP BY` -> `HAVING` -> `ORDER BY` -> `LIMIT/OFFSET`

---