CREATE TABLE Products (
    product_key TEXT PRIMARY KEY,
    product_name TEXT NOT NULL,
    brand TEXT NOT NULL,
    category TEXT NOT NULL
);

CREATE TABLE Customers (
    customer_key TEXT PRIMARY KEY,
    customer_name TEXT NOT NULL
);

CREATE TABLE Reviews (
    review_id INTEGER PRIMARY KEY,
    product_key TEXT NOT NULL,
    customer_key TEXT NOT NULL,
    rating INTEGER,
    review_title TEXT,
    review_text TEXT,
    review_date TEXT,
    helpful_votes INTEGER,
    verified_purchase TEXT NOT NULL CHECK (verified_purchase IN ('Yes','No')),

    FOREIGN KEY (product_key) REFERENCES Products(product_key),
    FOREIGN KEY (customer_key) REFERENCES Customers(customer_key)
);