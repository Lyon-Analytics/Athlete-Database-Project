# 🏅 Athlete Earnings Analysis (SQL Project)

This project explores the **world’s highest-paid athletes** using SQL queries.  
The dataset is stored in a single table **`The_World's_Highest_Paid_Athletes`**, which contains athlete names, their sport, and different earning categories.

---

## 📂 Table Structure

**Table:** `The_World's_Highest_Paid_Athletes`

| Column                 | Type     | Description |
|-------------------------|----------|-------------|
| Name                   | VARCHAR  | Athlete’s full name |
| Sport                  | VARCHAR  | Sport (Soccer, Basketball, Golf, Football, etc.) |
| Total_Earnings         | DECIMAL  | Combined earnings (on + off the field) |
| On_the_Field_Earnings  | DECIMAL  | Salaries, match fees, performance-based earnings |
| Off_the_Field_Earnings | DECIMAL  | Sponsorships, endorsements, business income |

---

## 📊 Example Insights

✔️ Highest earner overall  
✔️ Top soccer, basketball, golf, and football earners  
✔️ On-the-field vs off-the-field earnings breakdown  
✔️ Total earnings by sport  
✔️ Count of athletes per sport in the top 10  

---

## 🛠️ How to Use

Import the Athete_database.sql file into your SQL environment (e.g., SQL Server, MySQL).

Ensure the table The_World's_Highest_Paid_Athletes is loaded with data.

Run the queries to generate insights.

## 📌 Use Cases

Sports data analytics

Business/sponsorship market insights

Academic SQL practice project

Comparing on-field vs off-field revenue streams

## 📜 License

This project is open-source and free for educational use.

## ⚡ Sample Queries

```sql

-- 	Who is the highest earner in off-the-field earnings?
SELECT TOP 1 Name, Sport, Off_the_field_earnings
FROM [The_World's_Highest_Paid_Athletes]
ORDER BY Off_the_Field_Earnings;


--	What are the on-the-field and off-the-field earnings for Lionel Messi?
SELECT Name, Sport, On_the_field_earnings, Off_the_field_earnings
FROM [The_World's_Highest_Paid_Athletes]
WHERE Name = 'Lionel Messi';



-- 	Who is the highest earning golf player?
SELECT TOP 1 Name, Sport, Total_Earnings
FROM [The_World's_Highest_Paid_Athletes]
WHERE Sport = 'golf' 
ORDER BY Total_Earnings DESC;


-- 	How many football players are in the top 10 earners list?
SELECT COUNT (*) AS Football_Players_in_Top10
FROM (SELECT TOP 10 Name, Sport, Total_Earnings
FROM [The_World's_Highest_Paid_Athletes]
ORDER BY Total_Earnings DESC) AS Top10
WHERE Sport = 'Football';

