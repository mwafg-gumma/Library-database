# 📚 Library Management Database Project (MySQL)

This project provides a complete schema and sample data for a relational database designed to manage a small library's operations, including books, authors, members, and loan records.

## ✨ Features

* **Relational Design:** Uses Foreign Keys to establish relationships between core entities (Authors, Books, Members, Loans).
* **Sample Data:** Includes initial `INSERT` statements for immediate testing and querying.
* **Scalable:** Designed to be easily extended with more tables (e.g., Book Copies, Fines, Staff).

## 🗃️ Database Schema Overview

The database uses the `library_database` schema and includes the following four tables:

| Table Name | Primary Key | Key Relationships (Foreign Keys) | Purpose |
| :--- | :--- | :--- | :--- |
| **`Authors`** | `author_id` | N/A | Stores information about the book authors. |
| **`Members`** | `member_id` | N/A | Stores registration details for library users. |
| **`Books`** | `book_id` | `author_id` (links to `Authors`) | Stores details about the books available in the library. |
| **`Loans`** | `loan_id` | `book_id` (links to `Books`), `member_id` (links to `Members`) | Records active and historical borrowing transactions. |

## 🚀 Getting Started

Follow these steps to set up the database in your local MySQL environment.

### Prerequisites

You need to have **MySQL Server** and **MySQL Workbench** (or any other MySQL client like DBeaver or Sequel Pro) installed on your machine.

### Installation

1.  **Download the File:** Clone this repository or download the `library_schema.sql` file directly.
2.  **Open MySQL Workbench:** Connect to your local MySQL Server.
3.  **Execute the Script:** Open the `library_schema.sql` file in the Query Editor.
4.  **Run:** Execute the entire script.

The script will automatically perform the following actions:
* Create the `library_database`.
* Use the new database.
* Create all four tables with constraints.
* Insert sample data into the tables.

## 🔎 Example Queries

You can use the following queries to test the relationships and data:

### 1. Find all books written by a specific author:
```sql
SELECT B.title, A.first_name, A.last_name
FROM Books AS B
JOIN Authors AS A ON B.author_id = A.author_id
WHERE A.last_name = 'Mohamed';
