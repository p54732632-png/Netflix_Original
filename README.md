# 📊 Netflix Originals Data Analysis Project

## 📌 Project Overview

This project focuses on analyzing Netflix Originals data to discover meaningful insights using **SQL analytics concepts**. The goal is to understand how Netflix content performs across different genres, ratings, and runtime patterns.

This project simulates a **real Data Analyst use-case**, where raw data is transformed into actionable business insights.

---

## 📂 Dataset Description

### 1️⃣ Netflix_Originals Table

This dataset contains information about Netflix original titles.

| Column        | Description                    |
| ------------- | ------------------------------ |
| Title         | Name of the Netflix original   |
| GenreID       | Genre identifier (foreign key) |
| Runtime       | Duration in minutes            |
| IMDBScore     | IMDb rating of the title       |
| Language      | Language of the title          |
| Premiere_Date | Release date on Netflix        |

---

### 2️⃣ Genre_Details Table

| Column  | Description                                |
| ------- | ------------------------------------------ |
| GenreID | Unique genre identifier                    |
| Genre   | Genre name (Action, Drama, Thriller, etc.) |

---

## 🔗 Data Model

The project uses a **Many-to-One relationship** between Netflix Originals and Genre Details using the `GenreID` field.

---

## 🎯 Business Questions Solved

* What is the average IMDb score for each genre?
* Which genres perform better than the overall average rating?
* Which Netflix Originals have the highest ratings?
* What are the longest Netflix Originals by runtime?
* How do titles rank within their respective genres?
* Which titles perform above the platform average?
* How many titles exist in each genre?
* Which genres consistently produce highly rated content?
* What are the top-performing genres on Netflix?

---

## 📈 Key Insights

* Identified high-performing genres based on average IMDb ratings.
* Highlighted top-ranked Netflix Originals within each genre.
* Discovered genres with the most consistently high-rated content.
* Analyzed runtime patterns to find the longest productions.
* Benchmarked titles against the platform average rating.

---

## 🛠 Tools & Technologies

* MySQL
* SQL Analytics Concepts
* GitHub

---

## 💼 Skills Demonstrated

* Data cleaning & understanding
* SQL Joins & Aggregations
* Business logic implementation
* Analytical thinking
* Dataset modeling

---

## 🔗 Connect with Me

If you found this project helpful or would like to collaborate, feel free to connect with me on LinkedIn:

👉 **LinkedIn:** *(https://www.linkedin.com/in/pankaj-kumar-278986331)*

---

## 👤 Author

**Pankaj Kumar**
Aspiring Data Analyst

