# Indexing Test – Library System

## Query Before Indexing
SELECT * FROM Users WHERE Name LIKE 'J%';

- Full table scan
- Slower execution

## Query After Indexing
CREATE INDEX idx_name ON Users(Name);
SELECT * FROM Users WHERE Name LIKE 'J%';

- Index used on `Name`
- Faster execution

## What Changed?
MySQL uses the index to find rows instead of scanning the whole table.

## Why Faster?
Indexes reduce the number of rows MySQL needs to check.

## Why Indexing is Important?
- Speeds up searches
- Improves performance on large tables
- Essential for frequently searched columns