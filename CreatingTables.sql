CREATE TABLE IF NOT EXISTS Users (
    Users_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    username TEXT,
    password TEXT,
    phone_number TEXT
);

CREATE TABLE IF NOT EXISTS Customers (
    Customer_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    contact_email TEXT,
    billing_address TEXT,
    phone_number Text
);

CREATE TABLE IF NOT EXISTS Invoices (
    Invoice_id INTEGER PRIMARY KEY,
    Customer_id INTEGER,
    User_id INTEGER,
    Payment_id INTEGER,
    title TEXT,
    description TEXT,
    date_issued DATETIME,
    due_date DATETIME,
    cost FLOAT,
    status TEXT,
    FOREIGN KEY(Customer_id) REFERENCES Customers(Customer_id),
    FOREIGN KEY(User_id) REFERENCES Users(Users_id),
    FOREIGN KEY(Payment_id) REFERENCES Payments(Payment_id)
);

CREATE TABLE IF NOT EXISTS Payments (
    Payment_id INTEGER PRIMARY KEY,
    Invoice_id INTEGER,
    date_paid DATETIME,
    amount_paid FLOAT,
    payment_method TEXT,
    FOREIGN KEY (Invoice_id) REFERENCES Invoices(Invoice_id)
);

CREATE TABLE IF NOT EXISTS Projects (
    Project_id INTEGER PRIMARY KEY,
    Invoice_id INTEGER,
    title TEXT,
    description TEXT,
    start_date DATETIME,
    end_date DATETIME,
    budget FLOAT,
    status TEXT,
    FOREIGN KEY(Invoice_id) REFERENCES Invoices(Invoice_id)
);

CREATE TABLE IF NOT EXISTS Tasks (
    Task_id INTEGER PRIMARY KEY,
    Project_id INTEGER,
    title TEXT,
    description TEXT,
    start_date DATETIME,
    due_date DATETIME,
    status TEXT,
    FOREIGN KEY(Project_id) REFERENCES Projects(Project_id)
);

CREATE TABLE IF NOT EXISTS Timesheets (
    Timesheet_id INTEGER PRIMARY KEY,
    Project_id INTEGER,
    Task_id INTEGER,
    date DATE,
    hours_worked FLOAT,
    description TEXT,
    FOREIGN KEY (Project_id) REFERENCES Projects (Project_id),
    FOREIGN KEY (Task_id) REFERENCES Tasks (Task_id)
);

CREATE TABLE IF NOT EXISTS Timesheet_Task (
    Timesheet_id INTEGER,
    Task_id INTEGER,
    PRIMARY KEY (Timesheet_id, Task_id),
    FOREIGN KEY (Timesheet_id) REFERENCES Timesheets(Timesheet_id),
    FOREIGN KEY (Task_id) REFERENCES Tasks(Task_id)
);