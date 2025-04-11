# Library Borrowing System

A web-based Library Borrowing System built with PHP and MySQL. This project is based on the open-source code from [CampCodes](https://www.campcodes.com/projects/librarysystemusingphp/).

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

----

### System Login (Login Page) 
The default **login name** is
```bash
admin
```
The default **password** is 
```bash
admin
```
----

### Book Borrow (Book Borrow Page) 
#### Access the Book Borrow Page 
1. After logging in as admin, go to the left sidebar. 
2. Click on “Transaction” to expand the menu. 
3. Select “Borrow” to open the Book Borrow page. 

#### Borrow a Book(s) 
1. Click the “+ Borrow” button located at the top of the table. 
2. A form will appear for entering borrowing information: 
    - Student ID – Select or enter the ID of the student borrowing the book. 
    - ISBN – Enter the ISBN of the book being borrowed. 
3. If there is more than one book to borrow, press the “+ Book Field” button to add an ISBN input field. 
4. Click “Save” to record the transaction. 

#### View Borrowed Books 
The Borrow Books page displays a table of all borrowing transactions. Each row includes: 
- Date of the transaction 
- Student ID and Name 
- Book ISBN and Title 
- Status – Indicates whether the book has been returned: 
- Green “returned” tag: The book has been returned. 
- Red “not returned” tag: The book is still on loan. 

#### Search and Navigation   
- Use the Search box to filter transactions by student, book title, ISBN, or date. 
- Use the Previous and Next buttons to navigate between pages if there are many entries. 

----

### Book Return (Book Return Page) 
1. Access the Book Return Page 
2. After logging in as admin, go to the left sidebar. 
3. Click on “Transaction” to expand the dropdown menu. 
4. Select “Return” to open the Return Books page. 

#### Record a Returned Book(s) 
1. Click the “+ Returns” button at the top of the table. 
2. A form will appear requiring the following information: 
    - Student ID – The ID of the student returning the book. 
    - ISBN – The ISBN of the book being returned. 
3. If there is more than one book to return, press the “+ Book Field” button to add an ISBN input field. 
4. Click “Save” to record the return. 

#### View Return Records 
The Return Books table shows a list of recent return transactions. 
Each entry includes: 
    - Return Date 
    - Student ID 
    - Student Name 
    - Book ISBN 
    - Book Title 

#### Search and Navigation 
Use the Search box to filter transactions by student, book title, ISBN, or date. 
Use the Previous and Next buttons to navigate between pages if there are many entries 

----

### Book Management (Book Update Page) 
#### Access the Book List Page 
1. After logging in as admin, go to the left sidebar. 
2. Click on “Books” to expand the menu. 
3. Select “Book List” to open the Book Update page. 
4. You will see a table listing all books currently recorded in the system. 

#### Features of the Book List Page 
Each entry in the table includes the following information: 
- Category (e.g., Engineering, History, Mathematics)
    - ISBN 
    - Title 
    - Author 
    - Publisher
- Status – Indicates if the book is: 
    - Available (book is on shelf)
    - Borrowed (book is currently loaned out) 
- Tools – Two action buttons are available:
    - Edit (green button) – Modify book details.
    - Delete (red button) – Remove the book from the system. 

#### Add a New Book 
Click the “+ New” button at the top of the page. 
1. A form will appear where you must enter: 
    - ISBN 
    - Title 
    - Category 
    - Author 
    - Publisher 
    - Publish Date 
3. Click “Save” to add the book. 

#### Edit Book Details 
1. Locate the book you want to edit from the table. 
2. Click the green “Edit” button next to it. 
3. Update any of the fields (e.g., title, author, category). 
4. Click “Save” to apply changes. 

#### Delete a Book 
1. Click the red “Delete” button beside the book entry. 
2. Confirm the deletion if prompted. 
3. The book will be permanently removed from the system. 

#### Search and Navigation 
- Use the Category dropdown at the top right to filter books by category. 
- Use the Search box to quickly find books by title, ISBN, or author. 
- You can also sort by any column by clicking the header (e.g., sort by title or publisher). 

----

### Book Category Management (Book Category Page) 
#### Access the Book Category Page 
1. After logging in as admin, go to the left sidebar. 
2. Click on “Books” to expand the menu. 
3. Select “Category” to open the Book Category Page. 

#### Features of the Book Category Page 
Each entry in the table includes the following information: 
- Category List: Displays all existing book categories. 
- Tools: 
    - Edit (green button): Modify the category name. 
    - Delete (red button): Remove the category. 

#### Add a New Category 
1. Click the “+ New” button. 
2. A popup form titled “Add New Category” will appear. 
3. Enter the category name (e.g., Engineering, History).
4. Click Save to add it to the system.
5. The new category will now be available when adding or editing books in the Book List page. 

#### Edit a Category 
1. Click the “Edit” button next to the category you want to change.
2. A popup titled “Edit Category” will open.
3. Modify the Name field as needed.
4. Click Update to save the changes. 

#### Delete a Category 
1. Click the “Delete” button next to the category you want to remove.
2. A confirmation popup will display the category name.
3. Click Delete again to confirm the removal. 

----

### Student Management (Student List Page) 
#### Access the Student List Page 
1. After logging in as admin, go to the left sidebar.
2. Click on “Students” to expand the menu.
3. Select “Student List” to open the Student List page. 

#### Add a New Student 
1. Click the “+ New” button at the top of the table.
2. A form will appear where you can input the following information: 
    - First Name
    - Last Name
    - Course (e.g. BSCS, BSIS, COMP S351F)
    - Photo (optional, upload student’s image)
3. Click “Save” to register the student and automatically generate a student ID. 
4. The new student will appear on the list. 

#### Edit Student Details 
1. Locate the student entry you wish to edit.
2. Click the green “Edit” button next to the student’s record.
3. Update the information as needed.
4. Click “Save” to apply the changes. 

#### Delete a Student 
1. Find the student you want to remove.
2. Click the red “Delete” button next to their name.
3. Confirm the deletion if prompted. 

#### Search and Navigation   
- Use the Search box at the top right of the table to quickly find students by name, ID, or course. 
- Click on any column header (e.g. Firstname, Lastname) to sort the list in ascending or descending order. 

----

### Student Course Management (Student Course Page)   
#### Access the Student Course Page 
1. After logging in as admin, go to the left sidebar.
2. Click on “Students” to expand the menu.
3. Select “Course” to open the Student Course Page. 

#### Features of the Student Course Page 
Each entry in the table includes the following information: 
- Course List: Displays all existing student courses or program codes. 
- Tools: 
    - Edit (green button): Modify the course name or code. 
    - Delete (red button): Remove the course from the system. 

#### Add a New Course 
1. Click the “+ New” button.
2. A popup form titled “Add New Course” will appear.
3. Enter the course name or code (e.g., BSCS, COMP S351F, BSIS).
4. Click Save to add it to the system.
5. The new course will now be available when adding or editing student records in the Student List page. 

#### Edit a Course 
1. Click the “Edit” button next to the course you want to change.
2. A popup titled “Edit Course” will open.
3. Modify the Name field as needed.
4. Click Update to save the changes. 

#### Delete a Course 
1. Click the “Delete” button next to the course you want to remove.
2. A confirmation popup will display the course name.
3. Click Delete again to confirm the removal. 

----

### Book List Page 
To access the Book List Page, visit the following URL: 
```bash
http://localhost/libsystem/
```
