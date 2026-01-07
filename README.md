# 🎬 Movie-Ratings-Data-Analysis-using-MySQL

## 📌 Project Overview
This project focuses on analyzing a **Movies & Ratings dataset** using **MySQL**.  
A reduced dataset of **100 sample movies** and **100 sample ratings** was imported into MySQL, and multiple SQL queries were written to explore movie performance and user behavior.

This project is perfect for **beginners**, **students**, and **entry-level data analysts** looking to showcase SQL skills on GitHub or resumes.

---

## 🛠️ Tools & Technologies
- MySQL
- MySQL Workbench
- CSV Dataset (movies + ratings)
- SQL (DDL & DML)

---

## 🗂️ Database Details
**Schema Name:** `movies_db`  
**Tables:** `movies`, `ratings`

### Movies Table Structure
| Column Name | Data Type |
|-------------|-----------|
| movieid     | INT (Primary Key) |
| title       | VARCHAR |
| genres      | VARCHAR |

### Ratings Table Structure
| Column Name | Data Type |
|-------------|-----------|
| userid      | INT |
| movieid     | INT (Foreign Key) |
| rating      | DECIMAL |
| timestamp   | BIGINT |

---

## 📊 SQL Queries Performed
- Filtering using `where`
- Sorting using `order by`
- Aggregation using `count`, `avg`
- Grouping using `group by`
- Joining tables using `join`
- Top-N analysis using `limit`
- Conditional filtering using `having`
- Extracting year using `substring_index`

A total of **15 beginner-friendly SQL queries** were executed.

---

## 🚀 How to Run This Project
1. Open **MySQL Workbench**
2. Run `schema/movies_schema.sql` to create tables
3. Import:
   - `movies_small.csv` into `movies`
   - `ratings_small.csv` into `ratings`
4. Run SQL queries from `queries/movies_queries.sql`

---

## 📈 Key Insights
- Found highest-rated movies
- Identified most-rated movies
- Analyzed low-rated movies
- Discovered most active users
- Extracted genre-based patterns
- Filtered movies released after 2010

---

## 📌 Resume Description
**Movie Ratings SQL Analysis (MySQL)**  
Created a relational movie database, imported sample datasets, and executed 15+ SQL queries including joins, aggregations, filtering, and ranking to analyze movie trends and user rating patterns.

---

## 👤 Author
**Suyog Bundiwale**  
