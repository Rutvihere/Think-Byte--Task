# Toy Car Data Scraper

This project scrapes toy car data from [TinyTown](https://www.tinytown.in/collections/all) and stores it in a PostgreSQL database.

## Features

- **Basic Car Details**: Extracts name, price, and product URL.
- **Full Car Details**: Scrapes detailed specifications for each car.
- **Suggested Cars**: Retrieves suggested cars from each product’s page.

## Prerequisites

- Python 3.x
- PostgreSQL
- Install dependencies using:

  ```bash
  pip install -r requirements.txt
  
Database Setup
Create the PostgreSQL database:

```bash
psql -U postgres -c "CREATE DATABASE toy_car_db;
```
Set up the .env file (copy from .env.example):

```bash
DB_NAME=toy_car_db
DB_USER=postgres
DB_PASSWORD=your_password
DB_HOST=localhost
DB_PORT=5432
```

```bash
psql -U postgres -d toy_car_db -f toy_car_db.sql
```
Running the Scripts
1. Basic Car Details
```bash
python basic_Car_details.py
```
2. Full Car Details
```bash
python full_Car_details.py
```
3. Suggested Cars
```bash
python suggested_cars.py
```
