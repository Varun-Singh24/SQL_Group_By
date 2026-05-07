#  SQL GROUP BY Clause Practice

This repository demonstrates the usage of the **GROUP BY** clause in SQL using the `people` table.  
`GROUP BY` is used to organize rows with similar values into groups and is commonly used with aggregate functions like:

- `COUNT()`
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`

---

## 📂 Table Used

- **people**

Example columns used:
- `first_name`
- `state_code`
- `quiz_points`

---

# 🧠 What is GROUP BY?

The `GROUP BY` statement groups rows that have the same values in specified columns into summary rows.

It is mostly used together with aggregate functions.

---

# 1️⃣ Grouping by First Name

## 🧾 Code

```sql
SELECT first_name, COUNT(first_name)
FROM people
GROUP BY first_name;
````

---

## 📘 Explanation

* Groups all records based on `first_name`
* Counts how many times each first name appears

### Example Output

| first_name | COUNT |
| ---------- | ----- |
| John       | 3     |
| Sarah      | 2     |

---

## 🎯 Use Case

✔ Finding duplicate names
✔ User frequency analysis
✔ Customer statistics

---

# 2️⃣ Grouping by State Code

## 🧾 Code

```sql
SELECT state_code, COUNT(state_code)
FROM people
GROUP BY state_code;
```

---

## 📘 Explanation

* Groups people based on their state
* Counts number of people in each state

### Example Output

| state_code | COUNT |
| ---------- | ----- |
| CA         | 10    |
| NY         | 7     |

---

## 🎯 Use Case

✔ Regional analysis
✔ State-wise reporting
✔ Population statistics

---

# 3️⃣ GROUP BY with Multiple Selected Columns (Incorrect Usage Example)

## 🧾 Code

```sql
SELECT state_code, quiz_points, COUNT(quiz_points)
FROM people
GROUP BY state_code;
```

---

## 📘 Explanation

This query may produce an error in many SQL databases because:

* `quiz_points` is selected
* But it is NOT included in the `GROUP BY`
* And it is NOT wrapped inside an aggregate function

### ⚠️ Important Rule

When using `GROUP BY`:

* Every selected column must either:

  * Be inside an aggregate function
  * OR be included in the GROUP BY clause

---

## 🎯 Learning Purpose

✔ Understanding GROUP BY rules
✔ Avoiding SQL grouping errors
✔ Interview preparation

---

# 4️⃣ GROUP BY Multiple Columns

## 🧾 Code

```sql
SELECT state_code, quiz_points, COUNT(quiz_points)
FROM people
GROUP BY state_code, quiz_points;
```

---

## 📘 Explanation

* Groups records by:

  * `state_code`
  * `quiz_points`
* Creates grouped combinations

### Example Output

| state_code | quiz_points | COUNT |
| ---------- | ----------- | ----- |
| CA         | 10          | 4     |
| CA         | 20          | 2     |
| NY         | 15          | 5     |

---

## 🎯 Use Case

✔ Multi-level analytics
✔ Score distribution analysis
✔ Reporting dashboards

---

# 🚀 Real-World Use Cases of GROUP BY

✔ Sales reports by region
✔ Employee counts by department
✔ Customer segmentation
✔ Student marks analysis
✔ Product category summaries

---

# 🧩 Aggregate Functions Commonly Used with GROUP BY

| Function | Purpose             |
| -------- | ------------------- |
| COUNT()  | Counts rows         |
| SUM()    | Adds values         |
| AVG()    | Calculates average  |
| MAX()    | Finds maximum value |
| MIN()    | Finds minimum value |

---

# ⚠️ Important Notes

* GROUP BY is often used with aggregate functions
* Every non-aggregated column must be included in GROUP BY
* Helps summarize large datasets efficiently

---

# 🤝 Contributing

You can enhance this repo by adding:

* HAVING clause
* ORDER BY with GROUP BY
* GROUP BY with JOIN
* Real-world datasets
