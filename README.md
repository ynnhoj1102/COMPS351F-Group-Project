# Library Borrowing System

A web-based Library Borrowing System built with PHP and MySQL. This project is based on the open-source code.

## Features

- Admin login/logout
- Manage books, authors, categories
- Issue/return books
- Student registration
- Real-time Updates
- User-friendly dashboard

## Tech Stack

- PHP (Backend)
- MySQL (Database)
- HTML/CSS/JS (Frontend)
- XAMPP (Local server environment)

## Installation

### 1. Install XAMPP

Download and install from [XAMPP official site](https://www.apachefriends.org/index.html).

### 2. Clone This Repo

```bash
git clone https://github.com/ynnhoj1102/COMPS351F-Group-Project.git
```

Or download ZIP and extract it.

### 3. Move to htdocs

Place the folder inside your XAMPP `htdocs` directory:
```bash
C:\xampp\htdocs\libsystem
```
Which `C:` should refer to the drive letter where your XAMPP is installed.

### 4. Create MySQL Database

- Open `phpMyAdmin` in XAMPP control panel
    1. Start module `Apache` and `MySQL` in XAMPP control panel
    2. Chick `Admin` button in module `MySQL`
       
       Or open the following URL in the browser
       ```bash
       http://localhost/phpmyadmin/
       ```
       
- Create a new database, e.g. `libsystem`

- Import the SQL file included in the project
```bash
libsystem/db/libsystem.sql
```

## Run the App

Start module `Apache` and `MySQL` in XAMPP control panel, then visit the following URL in the browser:
```bash
http://localhost/libsystem/admin/
```
The default **login name** is
```bash
admin
```
The default **password** is 
```bash
admin
```

