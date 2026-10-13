**Personal Library Database System**



This repository contains a simple relational database system I built to manage my personal book collection. I used this project as a practical exercise to apply the database design and SQL concepts I learned during the SQL course on the Satr platform.



Instead of working with mock data, I designed the schema around my own physical books, including titles by authors such as Agatha Christie, Osama Al-Muslim, Amin Maalouf, Ibrahim Abbas, and Elizabeth Gaskell.



**Project Summary**



The goal was to design a clean relational schema and write SQL scripts to handle data definition, manipulation, and reporting.



The project covers:



Designing a multi-table database schema with primary and foreign key relationships.



Enforcing data integrity using foreign key constraints (ON DELETE SET NULL).



Optimizing search performance by creating indexes on frequently queried columns (such as book titles).



Writing queries with JOIN operations to merge relational data across tables.



Using conditional logic (CASE statements) to build dynamic reports for book borrowing statuses.



**Database Structure**



The system consists of three main entities:



authors: Holds author details (ID, name, biography).



books: Stores book metadata (title, release year, category) and links to the authors table via author\_id.



borrowings: Tracks borrowing transactions, return dates, and member links.



**Tools Used**



Database Engine: SQLite



Database Client: DBeaver Community Edition



Language: SQL



**Sample Query Result**



Below is a screenshot from DBeaver showing the output of a query that joins the books table with authors to generate an organized report of the collection:

